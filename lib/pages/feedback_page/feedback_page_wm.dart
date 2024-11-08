import 'dart:async';

import 'package:aws_s3_api/s3-2006-03-01.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pivo_front/data/dto/feedback_create.dart';
import 'package:pivo_front/data/service/beer_service.dart';
import 'package:pivo_front/data/service/feedback_service.dart';
import 'package:pivo_front/data/service/place_service.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';
import 'package:uuid/uuid.dart';

import 'feedback_page_model.dart';
import 'feedback_page_widget.dart';

abstract interface class IFeedbackPageWidgetModel
    implements IWidgetModel, IResponsive, IThemeProvider {
  ValueListenable<int> get ratingState;

  ValueListenable<Beer?> get beerState;

  ValueListenable<Place?> get placeState;

  ValueListenable<List<String>> get photosState;

  TextEditingController get textController;

  ValueListenable<bool> get authState;

  void onRate(int i);

  FutureOr<void> sendReview();

  void addPhoto();
}

FeedbackPageWidgetModel defaultFeedbackPageWidgetModelFactory(
  BuildContext context,
) {
  return FeedbackPageWidgetModel(
    FeedbackPageModel(),
    AppComponents().profileUseCase,
    AppComponents().feedbackService,
    AppComponents().storageService,
    AppComponents().beerService,
    AppComponents().placeService,
  );
}

// TODO: cover with documentation
/// Default widget model for FeedbackPageWidget
class FeedbackPageWidgetModel
    extends WidgetModel<FeedbackPageWidget, FeedbackPageModel>
    with ResponsiveWidgetModelMixin, ThemeProvider
    implements IFeedbackPageWidgetModel {
  final ProfileUseCase profileUseCase;
  final FeedbackService feedbackService;
  final BeerService beerService;
  final PlaceService placeService;
  final S3 storage;

  @override
  final textController = TextEditingController();

  @override
  final ValueNotifier<int> ratingState = ValueNotifier<int>(1);
  @override
  final ValueNotifier<List<String>> photosState = ValueNotifier([]);

  @override
  ValueListenable<bool> get authState => profileUseCase.repository;

  @override
  late final ValueNotifier<Beer?> beerState = ValueNotifier(widget.beer);

  @override
  late final ValueNotifier<Place?> placeState = ValueNotifier(widget.place);

  FeedbackPageWidgetModel(
    super.model,
    this.profileUseCase,
    this.feedbackService,
    this.storage,
    this.beerService,
    this.placeService,
  );

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileUseCase.loadProfile();
    _loadBeer();
    _loadPlace();
  }

  Future<void> _loadPlace() async {
    final placeId = widget.placeId;
    if (placeId == null) {
      return;
    }

    final place = widget.place ??
        await placeService.getPlaceById(
          placeId,
        );
    placeState.value = place;
  }

  Future<void> _loadBeer() async {
    final beerId = widget.beerId;
    if (beerId == null) {
      return;
    }

    final beer = widget.beer ?? await beerService.getBeerById(beerId);
    beerState.value = beer;
  }

  @override
  void didUpdateWidget(FeedbackPageWidget oldWidget) {
    _loadBeer();
    _loadPlace();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void onRate(int i) {
    ratingState.value = i;
  }

  @override
  void dispose() {
    beerState.dispose();
    placeState.dispose();
    textController.dispose();
    photosState.dispose();
    ratingState.dispose();
    super.dispose();
  }

  @override
  Future<void> sendReview() async {
    feedbackService.postFeedback(
      feedback: FeedbackCreate(
        text: textController.text,
        ratings: ratingState.value,
        beerId: widget.beerId,
        placeId: widget.placeId,
        typeFeedback: TypeFeedback.values
                .where((v) => v.name == widget.typeFeedback)
                .firstOrNull ??
            TypeFeedback.beer,
        photos: photosState.value.whereType<String>().toList(),
      ),
    );
    router.popForced();
  }

  @override
  Future<void> addPhoto() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      throw Exception('Cant load image');
    }

    final name = const Uuid().v4();
    final img = await storage.putObject(
      bucket: '46b23c3b-b1733b4c-cbff-4e75-8598-173b53072d61',
      key: name,
      body: await image.openRead().reduce((prev, ell) => prev..addAll(ell)),
    );

    final url =
        'https://s3.timeweb.cloud/46b23c3b-b1733b4c-cbff-4e75-8598-173b53072d61/$name';
    final images = photosState.value.toList();
    images.add(url);
    photosState.value = images;
  }
}

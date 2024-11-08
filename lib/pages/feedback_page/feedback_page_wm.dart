import 'dart:async';

import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pivo_front/data/dto/feedback_create.dart';
import 'package:pivo_front/data/service/feedback_service.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pivo_front/internal/app_components.dart';
import 'package:pivo_front/util/responsive_widget.dart';
import 'package:pivo_front/util/theme_provider.dart';

import 'feedback_page_model.dart';
import 'feedback_page_widget.dart';

abstract interface class IFeedbackPageWidgetModel
    implements IWidgetModel, IResponsive, IThemeProvider {
  ValueListenable<int> get ratingState;

  ValueListenable<List<String?>> get photosState;

  TextEditingController get textController;

  ValueListenable<bool> get authState;

  void onRate(int i);

  FutureOr<void> sendReview();
}

FeedbackPageWidgetModel defaultFeedbackPageWidgetModelFactory(
  BuildContext context,
) {
  return FeedbackPageWidgetModel(
    FeedbackPageModel(),
    AppComponents().profileUseCase,
    AppComponents().feedbackService,
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

  @override
  final textController = TextEditingController();

  @override
  final ValueNotifier<int> ratingState = ValueNotifier<int>(1);
  @override
  final ValueNotifier<List<String?>> photosState = ValueNotifier([]);

  @override
  ValueListenable<bool> get authState => profileUseCase.repository;

  FeedbackPageWidgetModel(
    super.model,
    this.profileUseCase,
    this.feedbackService,
  );

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    profileUseCase.loadProfile();
  }

  @override
  void onRate(int i) {
    ratingState.value = i;
  }

  @override
  void dispose() {
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
}

import 'dart:io';

import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dio/dio.dart';
import 'package:pivo_front/data/interseptor.dart';
import 'package:pivo_front/data/repository/dadata_repository.dart';
import 'package:pivo_front/data/repository/geolocation_repository.dart';
import 'package:pivo_front/data/repository/token_ropository.dart';
import 'package:pivo_front/data/service/auth_service.dart';
import 'package:pivo_front/domain/use_case/profile_use_case.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const timeout = Duration(seconds: 30);

class AppComponents {
  static final AppComponents _instance = AppComponents._internal();

  factory AppComponents() => _instance;

  AppComponents._internal();

  final tokenDaData = '603bb84c98131f6cc1c0a20dd1a34f349307b086';
  final Dio dio = Dio();

  late final AuthService authService = AuthService(dio);

  // late final BannerService bannerService = BannerService(dio);
  // late final GeozonesService geozonesService = GeozonesService(dio);
  // late final HotelService hotelService = HotelService(dio);
  // late final DescriptionService descriptionService = DescriptionService(dio);
  // late final TargetAudienceService targetAudienceService = TargetAudienceService(
  //     dio);
  // late final CategoryService categoryService = CategoryService(dio);
  // late final audienceService = TargetAudienceService(dio);

  final List<String> textCharacteristic = <String>[
    'art',
    'laconic',
    'detailed',
    'marketing'
  ];

  final TokenRepository tokenRepository = TokenRepository();
  final GeolocationRepository geolocationRepository = GeolocationRepository();

  late final GeolocationDadataRepository dadataRepository =
      GeolocationDadataRepository(
    DadataSuggestions(tokenDaData),
  );

  late final ProfileUseCase profileUseCase =
      ProfileUseCase(tokenRepository, authService);

  Future<void> init() async {
    dio.options
      ..baseUrl = 'https://api.secondmansite.ru/'
      ..contentType = ContentType.json.mimeType
      ..connectTimeout = timeout
      ..receiveTimeout = timeout
      ..sendTimeout = timeout;
    dio.interceptors.add(PrettyDioLogger());

    await tokenRepository.initTokens();
    await geolocationRepository.initGeolocation();
    dio.interceptors.add(
      JWTInterceptor(
        repository: tokenRepository,
        dio: dio,
      ),
    );
  }
}
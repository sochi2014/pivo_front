import 'dart:io';


import 'package:aws_s3_api/s3-2006-03-01.dart';
import 'package:dadata_suggestions/dadata_suggestions.dart';
import 'package:dio/dio.dart';
import 'package:pivo_front/data/interseptor.dart';
import 'package:pivo_front/data/repository/dadata_repository.dart';
import 'package:pivo_front/data/repository/geolocation_repository.dart';
import 'package:pivo_front/data/repository/token_ropository.dart';
import 'package:pivo_front/data/service/auth_service.dart';
import 'package:pivo_front/data/service/beer_service.dart';
import 'package:pivo_front/data/service/feedback_service.dart';
import 'package:pivo_front/data/service/geopos_service.dart';
import 'package:pivo_front/data/service/place_service.dart';
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
  late final BeerService beerService = BeerService(dio);
  late final PlaceService placeService = PlaceService(dio);
  late final FeedbackService feedbackService = FeedbackService(dio);
  late final GeoposService geoposService = GeoposService(dio);

  final storageService = S3(
    endpointUrl: 'https://s3.timeweb.cloud',
    credentials: AwsClientCredentials(
      accessKey: 'YN1NSGGU2FLQI1ABLOU3',
      secretKey: 'V8vio7OQzoqm7TvDAxNPYwBYkWwHrLguJW6LIBrA',
    ),
    region: 'ru-1',
  );

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

import 'package:dio/dio.dart';
import 'package:pivo_front/data/url/beer_url.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/beer_config.dart';
import 'package:retrofit/retrofit.dart';

part 'beer_service.g.dart';

@RestApi()
abstract class BeerService {
  factory BeerService(
    Dio dio, {
    String baseUrl,
  }) = _BeerService;

  @GET(BeerUrl.beer)
  Future<List<Beer>> getBeer(@Queries()BeerConfig beer);
}

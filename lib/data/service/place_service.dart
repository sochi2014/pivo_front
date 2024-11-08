import 'package:dio/dio.dart';
import 'package:pivo_front/data/url/place_url.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:retrofit/retrofit.dart';

part 'place_service.g.dart';

@RestApi()
abstract class PlaceService {
  factory PlaceService(Dio dio, {String baseUrl}) = _PlaceService;

  @GET(PlaceUrl.places)
  Future<List<Place>> getPlaces({
    @Query('offset') int offset = 0,
    @Query('limit') int limit = 10,
  });

  @GET(PlaceUrl.placesById)
  Future<Place> getPlaceById(@Path() int placeId);
}

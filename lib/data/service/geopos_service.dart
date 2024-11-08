import 'package:pivo_front/data/url/geopos_url.dart';
import 'package:pivo_front/domain/entity/geopos.dart';
import 'package:pivo_front/domain/entity/geopos_member.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'geopos_service.g.dart';

@RestApi()
abstract class GeoposService {

   factory GeoposService(Dio dio, {String baseUrl}) = _GeoposService;


   @GET(GeoPosUrl.geoposNear)
   Future<List<GeoposMember>> getGeopos();

   @POST(GeoPosUrl.geopos)
   Future<GeoposMember> getPlaceById(@Body() Geopos geopos);

}
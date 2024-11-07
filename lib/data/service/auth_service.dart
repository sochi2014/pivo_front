import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pivo_front/data/dto/auth_email_part1_request.dart';
import 'package:pivo_front/data/dto/auth_email_part2_request.dart';
import 'package:pivo_front/data/dto/auth_email_part2_response.dart';
import 'package:pivo_front/data/url/auth_url.dart';
import 'package:pivo_front/domain/entity/profile.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_service.g.dart';

@RestApi()
abstract class AuthService {
  factory AuthService(Dio dio, {String baseUrl}) = _AuthService;

  @POST(AuthUrl.authEmailPart1)
  Future<void> authEmailPart1({
    @Body() required AuthEmailPart1Request request,
  });

  @POST(AuthUrl.authEmailPart2)
  Future<AuthEmailPart2Response> authEmailPart2({
    @Body() required AuthEmailPart2Request request,
  });

  @PUT(AuthUrl.authUser)
  Future<Profile> patchUser({
    @Body() required Profile request,
  });

  @GET(AuthUrl.authUser)
  Future<Profile> getUser();


  @POST(AuthUrl.authRegister)
  Future<void> register({@Body() required Profile profile});
}

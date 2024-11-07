import 'package:pivo_front/data/url/feedback_url.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'feedback_service.g.dart';

@RestApi()
abstract class FeedbackService {

   factory FeedbackService(Dio dio, {String baseUrl}) = _FeedbackService;


   @GET(FeedbackUrl.feedback)
   Future<List<Feedback>> getPlaces({
      @Query('offset') int offset = 0,
      @Query('limit') int limit = 10,
   });
}
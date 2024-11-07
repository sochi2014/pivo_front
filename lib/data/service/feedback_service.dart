import 'package:dio/dio.dart';
import 'package:pivo_front/data/dto/feedback_create.dart';
import 'package:pivo_front/data/url/feedback_url.dart';
import 'package:pivo_front/domain/entity/feedback.dart';
import 'package:retrofit/retrofit.dart';

part 'feedback_service.g.dart';

@RestApi()
abstract class FeedbackService {
  factory FeedbackService(Dio dio, {String baseUrl}) = _FeedbackService;

  @GET(FeedbackUrl.feedback)
  Future<List<Feedback>> getFeedback({
    @Query('offset') int offset = 0,
    @Query('limit') int limit = 10,
  });

  @POST(FeedbackUrl.feedbackCreate)
  Future<Feedback> postFeedback({
    @Body() required FeedbackCreate feedback,
  });
}

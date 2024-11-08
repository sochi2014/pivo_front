import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pivo_front/domain/entity/feedback.dart';

part 'feedback_create.freezed.dart';
part 'feedback_create.g.dart';

@freezed
class FeedbackCreate with _$FeedbackCreate {
  const factory FeedbackCreate({
    required String text,
    required int ratings,
    @JsonKey(name: 'beer_id') int? beerId,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'type_feedback')
    @Default(TypeFeedback.beer)
    TypeFeedback typeFeedback,
    @JsonKey(name: 'photo_urls') @Default([]) List<String> photos,
  }) = _FeedbackCreate;

  factory FeedbackCreate.fromJson(Map<String, dynamic> json) =>
      _$FeedbackCreateFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'photo.dart';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

enum TypeFeedback { beer, place }

@freezed
class Feedback with _$Feedback {
  const factory Feedback({
    required int id,
    required String text,
    required int ratings,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'beer_id') int? beerId,
    @JsonKey(name: 'place_id') int? placeId,
    @JsonKey(name: 'type_feedback') required TypeFeedback type,
    @Default([]) List<Photo> photos,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}

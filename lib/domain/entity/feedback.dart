import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pivo_front/domain/entity/beer.dart';
import 'package:pivo_front/domain/entity/place.dart';
import 'package:pivo_front/domain/entity/profile.dart';

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
    required Profile user,
    Beer? beer,
    Place? place,
    @JsonKey(name: 'type_feedback') required TypeFeedback type,
    @Default([]) List<Photo> photos,
  }) = _Feedback;

  factory Feedback.fromJson(Map<String, dynamic> json) =>
      _$FeedbackFromJson(json);
}

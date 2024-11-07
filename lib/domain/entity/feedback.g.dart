// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackImpl _$$FeedbackImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      ratings: (json['ratings'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      beerId: (json['beer_id'] as num?)?.toInt(),
      placeId: (json['place_id'] as num?)?.toInt(),
      type: $enumDecode(_$TypeFeedbackEnumMap, json['type_feedback']),
      photos: (json['photos'] as List<dynamic>?)
              ?.map((e) => Photo.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FeedbackImplToJson(_$FeedbackImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'ratings': instance.ratings,
      'user_id': instance.userId,
      'beer_id': instance.beerId,
      'place_id': instance.placeId,
      'type_feedback': _$TypeFeedbackEnumMap[instance.type]!,
      'photos': instance.photos,
    };

const _$TypeFeedbackEnumMap = {
  TypeFeedback.beer: 'beer',
  TypeFeedback.place: 'place',
};

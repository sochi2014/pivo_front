// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackCreateImpl _$$FeedbackCreateImplFromJson(Map<String, dynamic> json) =>
    _$FeedbackCreateImpl(
      text: json['text'] as String,
      ratings: (json['ratings'] as num).toInt(),
      userId: (json['user_id'] as num).toInt(),
      beerId: (json['beer_id'] as num?)?.toInt(),
      placeId: (json['place_id'] as num?)?.toInt(),
      typeFeedback:
          $enumDecodeNullable(_$TypeFeedbackEnumMap, json['type_feedback']) ??
              TypeFeedback.beer,
      photos: (json['photo_urls'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FeedbackCreateImplToJson(
        _$FeedbackCreateImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'ratings': instance.ratings,
      'user_id': instance.userId,
      'beer_id': instance.beerId,
      'place_id': instance.placeId,
      'type_feedback': _$TypeFeedbackEnumMap[instance.typeFeedback]!,
      'photo_urls': instance.photos,
    };

const _$TypeFeedbackEnumMap = {
  TypeFeedback.beer: 'beer',
  TypeFeedback.place: 'place',
};

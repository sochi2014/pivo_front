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
      user: Profile.fromJson(json['user'] as Map<String, dynamic>),
      beer: json['beer'] == null
          ? null
          : Beer.fromJson(json['beer'] as Map<String, dynamic>),
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
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
      'user': instance.user,
      'beer': instance.beer,
      'place': instance.place,
      'type_feedback': _$TypeFeedbackEnumMap[instance.type]!,
      'photos': instance.photos,
    };

const _$TypeFeedbackEnumMap = {
  TypeFeedback.beer: 'beer',
  TypeFeedback.place: 'place',
};

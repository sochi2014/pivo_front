// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_email_part2_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthEmailPart2ResponseImpl _$$AuthEmailPart2ResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthEmailPart2ResponseImpl(
      accessToken: json['access_token'] as String,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$AuthEmailPart2ResponseImplToJson(
        _$AuthEmailPart2ResponseImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

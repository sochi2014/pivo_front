// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      id: (json['id'] as num?)?.toInt(),
      email: json['email'] as String,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      phoneNumber: json['phone_number'] as String?,
      level: json['level'] == null
          ? null
          : Level.fromJson(json['level'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  val['username'] = instance.username;
  writeNotNull('avatar_url', instance.avatarUrl);
  writeNotNull('phone_number', instance.phoneNumber);
  writeNotNull('level', instance.level);
  return val;
}

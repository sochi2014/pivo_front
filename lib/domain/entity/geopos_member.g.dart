// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geopos_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeoposMemberImpl _$$GeoposMemberImplFromJson(Map<String, dynamic> json) =>
    _$GeoposMemberImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      phoneNumber: json['phone_number'] as String?,
    );

Map<String, dynamic> _$$GeoposMemberImplToJson(_$GeoposMemberImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'phone_number': instance.phoneNumber,
    };

import 'package:freezed_annotation/freezed_annotation.dart';

part 'geopos_member.freezed.dart';
part 'geopos_member.g.dart';

@freezed
class GeoposMember with _$GeoposMember {
  const factory GeoposMember({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _GeoposMember;

  factory GeoposMember.fromJson(Map<String, dynamic> json) =>
      _$GeoposMemberFromJson(json);
}

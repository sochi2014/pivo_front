import 'package:freezed_annotation/freezed_annotation.dart';

import 'level.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  @JsonSerializable(
    includeIfNull: false,
  )
  const factory Profile({
    int? id,
    required String email,
    required String username,
    @JsonKey(name: 'avatar_url') String? avatarUrl,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    Level? level,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

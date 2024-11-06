import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part2_response.freezed.dart';
part 'auth_email_part2_response.g.dart';

@freezed
class AuthEmailPart2Response with _$AuthEmailPart2Response {
  const factory AuthEmailPart2Response({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthEmailPart2Response;

  factory AuthEmailPart2Response.fromJson(Map<String, dynamic> json) =>
      _$AuthEmailPart2ResponseFromJson(json);
}

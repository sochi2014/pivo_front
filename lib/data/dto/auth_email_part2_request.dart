import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part2_request.freezed.dart';
part 'auth_email_part2_request.g.dart';

@freezed
class AuthEmailPart2Request with _$AuthEmailPart2Request {
    const factory AuthEmailPart2Request({
      required String email,
      required String code,
}) = _AuthEmailPart2Request;

    factory AuthEmailPart2Request.fromJson(Map<String, dynamic> json) => _$AuthEmailPart2RequestFromJson(json);
}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_email_part1_request.freezed.dart';
part 'auth_email_part1_request.g.dart';

@freezed
class AuthEmailPart1Request with _$AuthEmailPart1Request {
    const factory AuthEmailPart1Request({
      required String email,
}) = _AuthEmailPart1Request;

    factory AuthEmailPart1Request.fromJson(Map<String, dynamic> json) => _$AuthEmailPart1RequestFromJson(json);
}
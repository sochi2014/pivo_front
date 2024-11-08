import 'package:freezed_annotation/freezed_annotation.dart';

part 'level.freezed.dart';
part 'level.g.dart';

@freezed
class Level with _$Level {
  const factory Level({
    required int id,
    @JsonKey(name: 'level_name') required String levelName,
    required String icon,
  }) = _Level;

  factory Level.fromJson(Map<String, dynamic> json) => _$LevelFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer_config.freezed.dart';
part 'beer_config.g.dart';

@freezed
class BeerConfig with _$BeerConfig {
  @JsonSerializable(
    includeIfNull: false,
  )
    const factory BeerConfig({
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'color') String? color,
      @JsonKey(name: 'min_alc') double? minAlc,
      @JsonKey(name: 'max_alc') double? maxAlc,
      @JsonKey(name: 'min_ibu') double? minIbu,
      @JsonKey(name: 'max_ibu') double? maxIbu,
      @JsonKey(name: 'min_og') double? minOg,
      @JsonKey(name: 'max_og') double? maxOg,
      @JsonKey(name: 'min_fg') double? minFg,
      @JsonKey(name: 'max_fg') double? maxFg,
      @JsonKey(name: 'offset') int? offset,
      @JsonKey(name: 'limit') int? limit,
}) = _BeerConfig;

    factory BeerConfig.fromJson(Map<String, dynamic> json) => _$BeerConfigFromJson(json);
}
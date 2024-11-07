import 'package:freezed_annotation/freezed_annotation.dart';

part 'beer.freezed.dart';
part 'beer.g.dart';

@freezed
class Beer with _$Beer {
  @JsonSerializable(
    includeIfNull: false,
  )
  const factory Beer({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'type_name') String? type,
    @JsonKey(name: 'alc_degree') double? alc,
    @JsonKey(name: 'color_name') String? color,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'photo') String? photo,
    @JsonKey(name: 'ibu') double? ibu,
    @JsonKey(name: 'og') double? og,
    @JsonKey(name: 'fg') double? fg,
    @JsonKey(name: 'barrel_aged') bool? barrel_aged,
  }) = _Beer;

  factory Beer.fromJson(Map<String, dynamic> json) => _$BeerFromJson(json);
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeerConfigImpl _$$BeerConfigImplFromJson(Map<String, dynamic> json) =>
    _$BeerConfigImpl(
      type: json['type'] as String?,
      color: json['color'] as String?,
      minAlc: (json['min_alc'] as num?)?.toDouble(),
      maxAlc: (json['max_alc'] as num?)?.toDouble(),
      minIbu: (json['min_ibu'] as num?)?.toDouble(),
      maxIbu: (json['max_ibu'] as num?)?.toDouble(),
      minOg: (json['min_og'] as num?)?.toDouble(),
      maxOg: (json['max_og'] as num?)?.toDouble(),
      minFg: (json['min_fg'] as num?)?.toDouble(),
      maxFg: (json['max_fg'] as num?)?.toDouble(),
      offset: (json['offset'] as num?)?.toInt(),
      limit: (json['limit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BeerConfigImplToJson(_$BeerConfigImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('color', instance.color);
  writeNotNull('min_alc', instance.minAlc);
  writeNotNull('max_alc', instance.maxAlc);
  writeNotNull('min_ibu', instance.minIbu);
  writeNotNull('max_ibu', instance.maxIbu);
  writeNotNull('min_og', instance.minOg);
  writeNotNull('max_og', instance.maxOg);
  writeNotNull('min_fg', instance.minFg);
  writeNotNull('max_fg', instance.maxFg);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  return val;
}

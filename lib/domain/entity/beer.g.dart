// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeerImpl _$$BeerImplFromJson(Map<String, dynamic> json) => _$BeerImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      brand: json['brand'] as String?,
      type: json['type_name'] as String?,
      alc: json['alc_degree'] as String?,
      color: json['color_name'] as String?,
      description: json['description'] as String?,
      photo: json['photo'] as String?,
      ibu: (json['ibu'] as num?)?.toDouble(),
      og: json['og'] as String?,
      fg: json['fg'] as String?,
      barrel_aged: json['barrel_aged'] as bool?,
    );

Map<String, dynamic> _$$BeerImplToJson(_$BeerImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('brand', instance.brand);
  writeNotNull('type_name', instance.type);
  writeNotNull('alc_degree', instance.alc);
  writeNotNull('color_name', instance.color);
  writeNotNull('description', instance.description);
  writeNotNull('photo', instance.photo);
  writeNotNull('ibu', instance.ibu);
  writeNotNull('og', instance.og);
  writeNotNull('fg', instance.fg);
  writeNotNull('barrel_aged', instance.barrel_aged);
  return val;
}

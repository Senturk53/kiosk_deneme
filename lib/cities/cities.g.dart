// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cities.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cities _$CitiesFromJson(Map<String, dynamic> json) => Cities(
      name: json['name'] as String?,
      cityLat: (json['cityLat'] as num?)?.toDouble(),
      cityLong: (json['cityLong'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CitiesToJson(Cities instance) => <String, dynamic>{
      'name': instance.name,
      'cityLat': instance.cityLat,
      'cityLong': instance.cityLong,
    };

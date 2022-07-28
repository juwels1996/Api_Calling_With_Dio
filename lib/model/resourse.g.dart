// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourse _$ResourseFromJson(Map<String, dynamic> json) => Resourse(
      id: json['id'] as int,
      name: json['name'] as String,
      year: json['year'] as int,
      color: json['color'] as String,
      pantone_value: json['pantone_value'] as String,
    );

Map<String, dynamic> _$ResourseToJson(Resourse instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
      'color': instance.color,
      'pantone_value': instance.pantone_value,
    };

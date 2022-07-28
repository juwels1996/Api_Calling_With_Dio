// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_resourse_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListResourseResponse _$ListResourseResponseFromJson(
        Map<String, dynamic> json) =>
    ListResourseResponse()
      ..page = json['page'] as int?
      ..perpage = json['per_page'] as int?
      ..total = json['total'] as int?
      ..totalpage = json['total_pages'] as int?
      ..users = (json['data'] as List<dynamic>)
          .map((e) => Resourse.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$ListResourseResponseToJson(
        ListResourseResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perpage,
      'total': instance.total,
      'total_pages': instance.totalpage,
      'data': instance.users,
    };

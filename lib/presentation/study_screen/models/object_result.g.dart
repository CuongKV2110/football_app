// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectResult _$ObjectResultFromJson(Map<String, dynamic> json) => ObjectResult(
      totalRows: json['totalRows'] as int? ?? 0,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ObjectUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ObjectResultToJson(ObjectResult instance) =>
    <String, dynamic>{
      'totalRows': instance.totalRows,
      'data': instance.data,
    };

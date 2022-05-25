// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      version: json['version'] as String? ?? '',
      serverTime: DateTime.parse(json['serverTime'] as String),
      statusCode: json['statusCode'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      result: (json['result'] as List<dynamic>)
          .map((e) => CategoryResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'version': instance.version,
      'serverTime': instance.serverTime.toIso8601String(),
      'statusCode': instance.statusCode,
      'message': instance.message,
      'result': instance.result,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Objects _$ObjectsFromJson(Map<String, dynamic> json) => Objects(
      version: json['version'] as String? ?? '',
      serverTime: DateTime.parse(json['serverTime'] as String),
      statusCode: json['statusCode'] as int? ?? 0,
      message: json['message'] as String? ?? '',
      result: ObjectResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ObjectsToJson(Objects instance) => <String, dynamic>{
      'version': instance.version,
      'serverTime': instance.serverTime.toIso8601String(),
      'statusCode': instance.statusCode,
      'message': instance.message,
      'result': instance.result,
    };

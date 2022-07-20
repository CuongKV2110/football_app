// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holland.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Holland _$HollandFromJson(Map<String, dynamic> json) => Holland(
      json['version'] as String,
      DateTime.parse(json['serverTime'] as String),
      json['statusCode'] as int,
      json['message'] as String,
      (json['result'] as List<dynamic>)
          .map((e) => HollandResult.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HollandToJson(Holland instance) => <String, dynamic>{
      'version': instance.version,
      'serverTime': instance.serverTime.toIso8601String(),
      'statusCode': instance.statusCode,
      'message': instance.message,
      'result': instance.result,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Choose _$ChooseFromJson(Map<String, dynamic> json) => Choose(
      json['firstId'] as int,
      json['secondId'] as int,
      json['type'] as int,
      (json['listChild'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$ChooseToJson(Choose instance) => <String, dynamic>{
      'firstId': instance.firstId,
      'secondId': instance.secondId,
      'type': instance.type,
      'listChild': instance.listChild,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holland_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HollandResult _$HollandResultFromJson(Map<String, dynamic> json) =>
    HollandResult(
      json['type'] as int,
      (json['answerOptions'] as List<dynamic>)
          .map((e) => AnswerOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['content'] as String,
      json['testCategoryId'] as int,
      json['personalityGroupId'] as int,
      json['id'] as int,
    );

Map<String, dynamic> _$HollandResultToJson(HollandResult instance) =>
    <String, dynamic>{
      'type': instance.type,
      'answerOptions': instance.answerOptions,
      'content': instance.content,
      'testCategoryId': instance.testCategoryId,
      'personalityGroupId': instance.personalityGroupId,
      'id': instance.id,
    };

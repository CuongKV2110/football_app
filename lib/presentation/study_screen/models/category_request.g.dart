// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryRequest _$CategoryRequestFromJson(Map<String, dynamic> json) =>
    CategoryRequest(
      parentId: json['parentId'] as int,
      block: json['block'] as int,
      code: json['code'] as String,
      getChilds: json['getChilds'] as bool,
      systemObjectId: json['systemObjectId'] as int,
    );

Map<String, dynamic> _$CategoryRequestToJson(CategoryRequest instance) =>
    <String, dynamic>{
      'parentId': instance.parentId,
      'block': instance.block,
      'code': instance.code,
      'getChilds': instance.getChilds,
      'systemObjectId': instance.systemObjectId,
    };

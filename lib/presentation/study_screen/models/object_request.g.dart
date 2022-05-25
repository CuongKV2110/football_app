// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectRequest _$ObjectRequestFromJson(Map<String, dynamic> json) =>
    ObjectRequest(
      sortExpression: json['sortExpression'] as String,
      pageSize: json['pageSize'] as int,
      pageIndex: json['pageIndex'] as int,
      skip: json['skip'] as int,
      notSkip: json['notSkip'] as int,
      keyWord: json['keyWord'] as String,
      listId: json['listId'] as List<dynamic>,
      blockCategoryId: json['blockCategoryId'] as int,
    );

Map<String, dynamic> _$ObjectRequestToJson(ObjectRequest instance) =>
    <String, dynamic>{
      'sortExpression': instance.sortExpression,
      'pageSize': instance.pageSize,
      'pageIndex': instance.pageIndex,
      'skip': instance.skip,
      'notSkip': instance.notSkip,
      'keyWord': instance.keyWord,
      'listId': instance.listId,
      'blockCategoryId': instance.blockCategoryId,
    };

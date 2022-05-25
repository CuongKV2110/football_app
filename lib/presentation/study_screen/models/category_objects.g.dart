// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_objects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryObjects _$CategoryObjectsFromJson(Map<String, dynamic> json) =>
    CategoryObjects(
      id: json['id'] as int,
      title: json['title'] as String,
      parentId: json['parentId'] as int,
    );

Map<String, dynamic> _$CategoryObjectsToJson(CategoryObjects instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'parentId': instance.parentId,
    };

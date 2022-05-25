// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'object_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ObjectUser _$ObjectUserFromJson(Map<String, dynamic> json) => ObjectUser(
      numOfContent: json['numOfContent'] as int,
      id: json['id'] as int,
      code: json['code'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      avatar: json['avatar'] as String,
      banner: json['banner'] as String,
      isDeleted: json['isDeleted'] as bool,
      priority: json['priority'] as int,
      type: json['type'] as int? ?? 0,
    )..categoryIds =
        (json['categoryIds'] as List<dynamic>?)?.map((e) => e as int).toList();

Map<String, dynamic> _$ObjectUserToJson(ObjectUser instance) =>
    <String, dynamic>{
      'numOfContent': instance.numOfContent,
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'avatar': instance.avatar,
      'banner': instance.banner,
      'isDeleted': instance.isDeleted,
      'priority': instance.priority,
      'categoryIds': instance.categoryIds,
      'type': instance.type,
    };

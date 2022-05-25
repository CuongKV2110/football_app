// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryResult _$CategoryResultFromJson(Map<String, dynamic> json) =>
    CategoryResult(
      id: json['id'] as int? ?? 0,
      title: json['title'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      objectIds:
          (json['objectIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
      description: json['description'] as String? ?? '',
      type: json['type'] as int? ?? 0,
    );

Map<String, dynamic> _$CategoryResultToJson(CategoryResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'icon': instance.icon,
      'objectIds': instance.objectIds,
      'description': instance.description,
      'type': instance.type,
    };

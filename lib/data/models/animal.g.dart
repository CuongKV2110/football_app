// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Animal _$AnimalFromJson(Map<String, dynamic> json) => Animal(
      label: json['label'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      speed: json['speed'] as String,
      width: json['width'] as String,
      height: json['height'] as String,
      longevity: json['longevity'] as String,
      weight: json['weight'] as String,
      description: json['description'] as String,
      category: json['category'] as int,
      status: json['status'] as int,
    );

Map<String, dynamic> _$AnimalToJson(Animal instance) => <String, dynamic>{
      'label': instance.label,
      'image': instance.image,
      'name': instance.name,
      'speed': instance.speed,
      'width': instance.width,
      'height': instance.height,
      'longevity': instance.longevity,
      'weight': instance.weight,
      'description': instance.description,
      'category': instance.category,
      'status': instance.status,
    };

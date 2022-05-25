import 'package:json_annotation/json_annotation.dart';

part 'category_objects.g.dart';

@JsonSerializable()
class CategoryObjects {
  CategoryObjects({
    required this.id,
    required this.title,
    required this.parentId,
  });

  int id;
  String title;
  int parentId;

  factory CategoryObjects.fromJson(Map<String, dynamic> json) =>
      _$CategoryObjectsFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryObjectsToJson(this);
}



import 'package:json_annotation/json_annotation.dart';
part 'animal.g.dart';

@JsonSerializable()
class Animal {
  Animal({
    required this.label,
    required this.image,
    required this.name,
    required this.speed,
    required this.width,
    required this.height,
    required this.longevity,
    required this.weight,
    required this.description,
    required this.category,
    required this.status,
  });

  String label;
  String image;
  String name;
  String speed;
  String width;
  String height;
  String longevity;
  String weight;
  String description;
  int category;
  int status;

  factory Animal.fromJson(Map<String, dynamic> json) => _$AnimalFromJson(json);

  Map<String, dynamic> toJson() => _$AnimalToJson(this);
}

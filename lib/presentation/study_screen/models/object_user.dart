import 'package:json_annotation/json_annotation.dart';
part 'object_user.g.dart';

@JsonSerializable()
class ObjectUser {
  ObjectUser({
    required this.numOfContent,
    required this.id,
    required this.code,
    required this.title,
    required this.description,
    required this.avatar,
    required this.banner,
    required this.isDeleted,
    required this.priority,
    required this.type,
  });

  int numOfContent;
  int id;
  String code;
  String title;
  String description;
  String avatar;
  String banner;
  bool isDeleted;
  int priority;
  List<int>? categoryIds;
  @JsonKey(defaultValue: 0)
  int type;

  factory ObjectUser.fromJson(Map<String, dynamic> json) =>
      _$ObjectUserFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectUserToJson(this);
}

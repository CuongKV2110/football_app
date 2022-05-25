import 'package:json_annotation/json_annotation.dart';
part 'category_result.g.dart';

@JsonSerializable()
class CategoryResult {
  CategoryResult({
    this.id = 0,
    this.title = '',
    this.icon = '',
    this.objectIds,
    this.description = '',
    this.type = 0,
  });

  int id;
  String title;
  String icon;
  List<int>? objectIds;
  String description;
  @JsonKey(defaultValue: 0)
  int type;

  factory CategoryResult.fromJson(Map<String, dynamic> json) =>
      _$CategoryResultFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryResultToJson(this);
}

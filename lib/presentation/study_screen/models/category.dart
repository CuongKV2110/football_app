import 'package:json_annotation/json_annotation.dart';
import 'package:music_app/presentation/study_screen/models/category_result.dart';
part 'category.g.dart';

@JsonSerializable()
class Category {
  Category({
    this.version = '',
    required this.serverTime,
    this.statusCode = 0,
    this.message = '',
    required this.result,
  });

  String version;
  DateTime serverTime;
  int statusCode;
  String message;
  List<CategoryResult> result;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

import 'package:music_app/presentation/study_screen/models/object_user.dart';

import 'package:json_annotation/json_annotation.dart';

part 'category_request.g.dart';

@JsonSerializable()
class CategoryRequest {
  final int parentId;
  final int block;
  final String code;
  final bool getChilds;
  final int systemObjectId;

  CategoryRequest({
    required this.parentId,
    required this.block,
    required this.code,
    required this.getChilds,
    required this.systemObjectId,
  });

  factory CategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$CategoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryRequestToJson(this);
}

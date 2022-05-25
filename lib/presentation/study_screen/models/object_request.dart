import 'package:music_app/presentation/study_screen/models/object_user.dart';

import 'package:json_annotation/json_annotation.dart';

part 'object_request.g.dart';

@JsonSerializable()
class ObjectRequest {
  ObjectRequest({
    required this.sortExpression,
    required this.pageSize,
    required this.pageIndex,
    required this.skip,
    required this.notSkip,
    required this.keyWord,
    required this.listId,
    required this.blockCategoryId,
  });

  final String sortExpression;
  final int pageSize;
  final int pageIndex;
  final int skip;
  final int notSkip;
  final String keyWord;

  final List<dynamic> listId;
  final int blockCategoryId;

  factory ObjectRequest.fromJson(Map<String, dynamic> json) =>
      _$ObjectRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectRequestToJson(this);
}

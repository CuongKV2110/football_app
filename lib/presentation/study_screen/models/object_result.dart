import 'package:music_app/presentation/study_screen/models/object_user.dart';

import 'package:json_annotation/json_annotation.dart';

part 'object_result.g.dart';

@JsonSerializable()
class ObjectResult {
  ObjectResult({
    this.totalRows = 0,
    this.data,
  });

  int totalRows;
  List<ObjectUser>? data;

  factory ObjectResult.fromJson(Map<String, dynamic> json) =>
      _$ObjectResultFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectResultToJson(this);
}

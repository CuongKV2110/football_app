import 'package:json_annotation/json_annotation.dart';

import 'object_result.dart';

part 'objects.g.dart';

@JsonSerializable()
class Objects {
  Objects({
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
  ObjectResult result;

  factory Objects.fromJson(Map<String, dynamic> json) =>
      _$ObjectsFromJson(json);

  Map<String, dynamic> toJson() => _$ObjectsToJson(this);
}

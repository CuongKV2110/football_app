import 'package:json_annotation/json_annotation.dart';
part 'answer_options.g.dart';

@JsonSerializable()
class AnswerOptions {
  String content;
  int point;

  AnswerOptions(this.content, this.point);

  factory AnswerOptions.fromJson(Map<String, dynamic> json) =>
      _$AnswerOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerOptionsToJson(this);
}

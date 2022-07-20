import 'package:music_app/presentation/holland_screen/models/answer_options.dart';
import 'package:json_annotation/json_annotation.dart';

part 'holland_result.g.dart';

@JsonSerializable()
class HollandResult {
  int type;
  List<AnswerOptions> answerOptions;
  String content;
  int testCategoryId;
  int personalityGroupId;
  int id;

  HollandResult(this.type, this.answerOptions, this.content,
      this.testCategoryId, this.personalityGroupId, this.id);

  factory HollandResult.fromJson(Map<String, dynamic> json) =>
      _$HollandResultFromJson(json);

  Map<String, dynamic> toJson() => _$HollandResultToJson(this);
}

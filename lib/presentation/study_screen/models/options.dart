import 'package:json_annotation/json_annotation.dart';

part 'options.g.dart';

@JsonSerializable()
class Options {
  int? firstId;
  List<int>? listChild;
  int? secondId;

  Options({
    this.firstId = 0,
    this.listChild = const <int>[],
    this.secondId = 0,
  });

  factory Options.fromJson(Map<String, dynamic> json) =>
      _$OptionsFromJson(json);

  Map<String, dynamic> toJson() => _$OptionsToJson(this);
}

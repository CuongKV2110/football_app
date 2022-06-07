import 'package:json_annotation/json_annotation.dart';
part 'choose.g.dart';

@JsonSerializable()
class Choose {
  int firstId;
  int secondId;
  int type;
  List<int> listChild;

  Choose(this.firstId, this.secondId, this.type, this.listChild);

  factory Choose.fromJson(Map<String, dynamic> json) => _$ChooseFromJson(json);

  Map<String, dynamic> toJson() => _$ChooseToJson(this);
}

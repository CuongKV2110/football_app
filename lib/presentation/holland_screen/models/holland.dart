import 'package:music_app/presentation/holland_screen/models/holland_result.dart';
import 'package:json_annotation/json_annotation.dart';
part 'holland.g.dart';

@JsonSerializable()
class Holland {
  String version;
  DateTime serverTime;
  int statusCode;
  String message;
  List<HollandResult> result;

  Holland(this.version, this.serverTime, this.statusCode, this.message,
      this.result);

  factory Holland.fromJson(Map<String, dynamic> json) =>
      _$HollandFromJson(json);

  Map<String, dynamic> toJson() => _$HollandToJson(this);
}

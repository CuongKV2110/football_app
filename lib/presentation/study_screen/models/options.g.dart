// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Options _$OptionsFromJson(Map<String, dynamic> json) => Options(
      firstId: json['firstId'] as int? ?? 0,
      listChild: (json['listChild'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const <int>[],
      secondId: json['secondId'] as int? ?? 0,
    );

Map<String, dynamic> _$OptionsToJson(Options instance) => <String, dynamic>{
      'firstId': instance.firstId,
      'listChild': instance.listChild,
      'secondId': instance.secondId,
    };

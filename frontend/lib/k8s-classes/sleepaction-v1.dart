import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sleepaction_v1.g.dart';


///SleepAction describes a "sleep" action.
@JsonSerializable()
class SleepactionV1 {
    
    ///Seconds is the number of seconds to sleep.
    @JsonKey(name: "seconds")
    int? seconds;

    SleepactionV1({
        required this.seconds,
    });

    factory SleepactionV1.fromJson(Map<String, dynamic> json) => _$SleepactionV1FromJson(json);

    Map<String, dynamic> toJson() => _$SleepactionV1ToJson(this);
}

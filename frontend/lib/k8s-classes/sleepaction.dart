import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sleepaction.g.dart';


///SleepAction describes a "sleep" action.
@JsonSerializable()
class Sleepaction {
    
    ///Seconds is the number of seconds to sleep.
    @JsonKey(name: "seconds")
    int? seconds;

    Sleepaction({
        required this.seconds,
    });

    factory Sleepaction.fromJson(Map<String, dynamic> json) => _$SleepactionFromJson(json);

    Map<String, dynamic> toJson() => _$SleepactionToJson(this);
}

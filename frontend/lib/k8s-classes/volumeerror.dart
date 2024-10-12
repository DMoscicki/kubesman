import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeerror.g.dart';


///VolumeError captures an error encountered during a volume operation.
@JsonSerializable()
class Volumeerror {
    
    ///message represents the error encountered during Attach or Detach operation. This string
    ///may be logged, so it should not contain sensitive information.
    @JsonKey(name: "message")
    String? message;
    
    ///time represents the time the error was encountered.
    @JsonKey(name: "time")
    DateTime? time;

    Volumeerror({
        this.message,
        this.time,
    });

    factory Volumeerror.fromJson(Map<String, dynamic> json) => _$VolumeerrorFromJson(json);

    Map<String, dynamic> toJson() => _$VolumeerrorToJson(this);
}

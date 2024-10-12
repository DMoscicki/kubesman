import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeerror_storage_v1.g.dart';


///VolumeError captures an error encountered during a volume operation.
@JsonSerializable()
class VolumeerrorStorageV1 {
    
    ///message represents the error encountered during Attach or Detach operation. This string
    ///may be logged, so it should not contain sensitive information.
    @JsonKey(name: "message")
    String? message;
    
    ///time represents the time the error was encountered.
    @JsonKey(name: "time")
    DateTime? time;

    VolumeerrorStorageV1({
        this.message,
        this.time,
    });

    factory VolumeerrorStorageV1.fromJson(Map<String, dynamic> json) => _$VolumeerrorStorageV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumeerrorStorageV1ToJson(this);
}

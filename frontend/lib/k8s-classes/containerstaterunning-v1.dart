import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstaterunning_v1.g.dart';


///ContainerStateRunning is a running state of a container.
@JsonSerializable()
class ContainerstaterunningV1 {
    
    ///Time at which the container was last (re-)started
    @JsonKey(name: "startedAt")
    DateTime? startedAt;

    ContainerstaterunningV1({
        this.startedAt,
    });

    factory ContainerstaterunningV1.fromJson(Map<String, dynamic> json) => _$ContainerstaterunningV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstaterunningV1ToJson(this);
}

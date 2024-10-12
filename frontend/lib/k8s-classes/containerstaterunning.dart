import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstaterunning.g.dart';


///ContainerStateRunning is a running state of a container.
@JsonSerializable()
class Containerstaterunning {
    
    ///Time at which the container was last (re-)started
    @JsonKey(name: "startedAt")
    DateTime? startedAt;

    Containerstaterunning({
        this.startedAt,
    });

    factory Containerstaterunning.fromJson(Map<String, dynamic> json) => _$ContainerstaterunningFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstaterunningToJson(this);
}

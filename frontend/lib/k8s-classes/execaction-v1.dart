import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'execaction_v1.g.dart';


///ExecAction describes a "run in container" action.
@JsonSerializable()
class ExecactionV1 {
    
    ///Command is the command line to execute inside the container, the working directory for
    ///the command  is root ('/') in the container's filesystem. The command is simply exec'd,
    ///it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To
    ///use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated
    ///as live/healthy and non-zero is unhealthy.
    @JsonKey(name: "command")
    List<String?>? command;

    ExecactionV1({
        this.command,
    });

    factory ExecactionV1.fromJson(Map<String, dynamic> json) => _$ExecactionV1FromJson(json);

    Map<String, dynamic> toJson() => _$ExecactionV1ToJson(this);
}

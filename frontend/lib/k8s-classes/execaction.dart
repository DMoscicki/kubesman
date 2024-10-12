import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'execaction.g.dart';


///ExecAction describes a "run in container" action.
@JsonSerializable()
class Execaction {
    
    ///Command is the command line to execute inside the container, the working directory for
    ///the command  is root ('/') in the container's filesystem. The command is simply exec'd,
    ///it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To
    ///use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated
    ///as live/healthy and non-zero is unhealthy.
    @JsonKey(name: "command")
    List<String?>? command;

    Execaction({
        this.command,
    });

    factory Execaction.fromJson(Map<String, dynamic> json) => _$ExecactionFromJson(json);

    Map<String, dynamic> toJson() => _$ExecactionToJson(this);
}

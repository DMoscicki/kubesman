import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'daemonendpoint_v1.g.dart';


///DaemonEndpoint contains information about a single Daemon endpoint.
@JsonSerializable()
class DaemonendpointV1 {
    
    ///Port number of the given endpoint.
    @JsonKey(name: "Port")
    int? port;

    DaemonendpointV1({
        required this.port,
    });

    factory DaemonendpointV1.fromJson(Map<String, dynamic> json) => _$DaemonendpointV1FromJson(json);

    Map<String, dynamic> toJson() => _$DaemonendpointV1ToJson(this);
}

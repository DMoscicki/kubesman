import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'daemonendpoint.g.dart';


///DaemonEndpoint contains information about a single Daemon endpoint.
@JsonSerializable()
class Daemonendpoint {
    
    ///Port number of the given endpoint.
    @JsonKey(name: "Port")
    int? port;

    Daemonendpoint({
        required this.port,
    });

    factory Daemonendpoint.fromJson(Map<String, dynamic> json) => _$DaemonendpointFromJson(json);

    Map<String, dynamic> toJson() => _$DaemonendpointToJson(this);
}

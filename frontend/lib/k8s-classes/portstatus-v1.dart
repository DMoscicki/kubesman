import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'portstatus_v1.g.dart';

@JsonSerializable()
class PortstatusV1 {
    
    ///Error is to record the problem with the service port The format of the error shall comply
    ///with the following rules: - built-in error values shall be specified in this file and
    ///those shall use
    ///CamelCase names
    ///- cloud provider specific error values must have names that comply with the
    ///format foo.example.com/CamelCase.
    @JsonKey(name: "error")
    String? error;
    
    ///Port is the port number of the service port of which status is recorded here
    @JsonKey(name: "port")
    int? port;
    
    ///Protocol is the protocol of the service port of which status is recorded here The
    ///supported values are: "TCP", "UDP", "SCTP"
    @JsonKey(name: "protocol")
    String? protocol;

    PortstatusV1({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory PortstatusV1.fromJson(Map<String, dynamic> json) => _$PortstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$PortstatusV1ToJson(this);
}

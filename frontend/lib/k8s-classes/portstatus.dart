import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'portstatus.g.dart';

@JsonSerializable()
class Portstatus {
    
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

    Portstatus({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory Portstatus.fromJson(Map<String, dynamic> json) => _$PortstatusFromJson(json);

    Map<String, dynamic> toJson() => _$PortstatusToJson(this);
}

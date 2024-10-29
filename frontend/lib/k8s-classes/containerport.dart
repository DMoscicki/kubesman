import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerport.g.dart';


///ContainerPort represents a network port in a single container.
@JsonSerializable()
class Containerport {
    
    ///Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x
    ///< 65536.
    @JsonKey(name: "containerPort")
    int? containerPort;
    
    ///What host IP to bind the external port to.
    @JsonKey(name: "hostIP")
    String? hostIp;
    
    ///Number of port to expose on the host. If specified, this must be a valid port number, 0 <
    ///x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do
    ///not need this.
    @JsonKey(name: "hostPort")
    int? hostPort;
    
    ///If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in
    ///a pod must have a unique name. Name for the port that can be referred to by services.
    @JsonKey(name: "name")
    String? name;
    
    ///Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
    @JsonKey(name: "protocol")
    String? protocol;

    Containerport({
        required this.containerPort,
        this.hostIp,
        this.hostPort,
        this.name,
        this.protocol,
    });

    factory Containerport.fromJson(Map<String, dynamic> json) => _$ContainerportFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerportToJson(this);
}

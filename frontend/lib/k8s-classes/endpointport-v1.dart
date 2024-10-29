import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointport_v1.g.dart';


///EndpointPort is a tuple that describes a single port.
@JsonSerializable()
class EndpointportV1 {
    
    ///The application protocol for this port. This is used as a hint for implementations to
    ///offer richer behavior for protocols that they understand. This field follows standard
    ///Kubernetes label syntax. Valid values are either:
    ///
    ///* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335
    ///and https://www.iana.org/assignments/service-names).
    ///
    ///* Kubernetes-defined prefixed names:
    ///* 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
    ///* 'kubernetes.io/ws'  - WebSocket over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///* 'kubernetes.io/wss' - WebSocket over TLS as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///
    ///* Other protocols should use implementation-defined prefixed names such as
    ///mycompany.com/my-custom-protocol.
    @JsonKey(name: "appProtocol")
    String? appProtocol;
    
    ///The name of this port.  This must match the 'name' field in the corresponding
    ///ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    @JsonKey(name: "name")
    String? name;
    
    ///The port number of the endpoint.
    @JsonKey(name: "port")
    int? port;
    
    ///The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    EndpointportV1({
        this.appProtocol,
        this.name,
        required this.port,
        this.protocol,
    });

    factory EndpointportV1.fromJson(Map<String, dynamic> json) => _$EndpointportV1FromJson(json);

    Map<String, dynamic> toJson() => _$EndpointportV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointport.g.dart';


///EndpointPort represents a Port used by an EndpointSlice
@JsonSerializable()
class Endpointport {
    
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
    
    ///name represents the name of this port. All ports in an EndpointSlice must have a unique
    ///name. If the EndpointSlice is derived from a Kubernetes service, this corresponds to the
    ///Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: *
    ///must be no more than 63 characters long. * must consist of lower case alphanumeric
    ///characters or '-'. * must start and end with an alphanumeric character. Default is empty
    ///string.
    @JsonKey(name: "name")
    String? name;
    
    ///port represents the port number of the endpoint. If this is not specified, ports are not
    ///restricted and must be interpreted in the context of the specific consumer.
    @JsonKey(name: "port")
    int? port;
    
    ///protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is
    ///TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    Endpointport({
        this.appProtocol,
        this.name,
        this.port,
        this.protocol,
    });

    factory Endpointport.fromJson(Map<String, dynamic> json) => _$EndpointportFromJson(json);

    Map<String, dynamic> toJson() => _$EndpointportToJson(this);
}

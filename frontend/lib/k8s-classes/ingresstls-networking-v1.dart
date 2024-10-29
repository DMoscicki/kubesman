import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingresstls_networking_v1.g.dart';


///IngressTLS describes the transport layer security associated with an ingress.
@JsonSerializable()
class IngresstlsNetworkingV1 {
    
    ///hosts is a list of hosts included in the TLS certificate. The values in this list must
    ///match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the
    ///loadbalancer controller fulfilling this Ingress, if left unspecified.
    @JsonKey(name: "hosts")
    List<String?>? hosts;
    
    ///secretName is the name of the secret used to terminate TLS traffic on port 443. Field is
    ///left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a
    ///listener conflicts with the "Host" header field used by an IngressRule, the SNI host is
    ///used for termination and value of the "Host" header is used for routing.
    @JsonKey(name: "secretName")
    String? secretName;

    IngresstlsNetworkingV1({
        this.hosts,
        this.secretName,
    });

    factory IngresstlsNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngresstlsNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngresstlsNetworkingV1ToJson(this);
}

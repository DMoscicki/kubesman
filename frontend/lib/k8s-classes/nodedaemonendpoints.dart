import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodedaemonendpoints.g.dart';


///NodeDaemonEndpoints lists ports opened by daemons running on the Node.
@JsonSerializable()
class Nodedaemonendpoints {
    
    ///Endpoint on which Kubelet is listening.
    @JsonKey(name: "kubeletEndpoint")
    IoK8SApiCoreV1DaemonEndpoint? kubeletEndpoint;

    Nodedaemonendpoints({
        this.kubeletEndpoint,
    });

    factory Nodedaemonendpoints.fromJson(Map<String, dynamic> json) => _$NodedaemonendpointsFromJson(json);

    Map<String, dynamic> toJson() => _$NodedaemonendpointsToJson(this);
}


///Endpoint on which Kubelet is listening.
///
///DaemonEndpoint contains information about a single Daemon endpoint.
@JsonSerializable()
class IoK8SApiCoreV1DaemonEndpoint {
    
    ///Port number of the given endpoint.
    @JsonKey(name: "Port")
    int port;

    IoK8SApiCoreV1DaemonEndpoint({
        required this.port,
    });

    factory IoK8SApiCoreV1DaemonEndpoint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DaemonEndpointFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DaemonEndpointToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodedaemonendpoints_v1.g.dart';


///NodeDaemonEndpoints lists ports opened by daemons running on the Node.
@JsonSerializable()
class NodedaemonendpointsV1 {
    
    ///Endpoint on which Kubelet is listening.
    @JsonKey(name: "kubeletEndpoint")
    IoK8SApiCoreV1DaemonEndpoint? kubeletEndpoint;

    NodedaemonendpointsV1({
        this.kubeletEndpoint,
    });

    factory NodedaemonendpointsV1.fromJson(Map<String, dynamic> json) => _$NodedaemonendpointsV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodedaemonendpointsV1ToJson(this);
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

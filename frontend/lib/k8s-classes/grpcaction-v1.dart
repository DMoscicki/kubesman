import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'grpcaction_v1.g.dart';

@JsonSerializable()
class GrpcactionV1 {
    
    ///Port number of the gRPC service. Number must be in the range 1 to 65535.
    @JsonKey(name: "port")
    int? port;
    
    ///Service is the name of the service to place in the gRPC HealthCheckRequest (see
    ///https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
    ///
    ///If this is not specified, the default behavior is defined by gRPC.
    @JsonKey(name: "service")
    String? service;

    GrpcactionV1({
        required this.port,
        this.service,
    });

    factory GrpcactionV1.fromJson(Map<String, dynamic> json) => _$GrpcactionV1FromJson(json);

    Map<String, dynamic> toJson() => _$GrpcactionV1ToJson(this);
}

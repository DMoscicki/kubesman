import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'probe_v1.g.dart';


///Probe describes a health check to be performed against a container to determine whether
///it is alive or ready to receive traffic.
@JsonSerializable()
class ProbeV1 {
    
    ///Exec specifies the action to take.
    @JsonKey(name: "exec")
    IoK8SApiCoreV1ExecAction? exec;
    
    ///Minimum consecutive failures for the probe to be considered failed after having
    ///succeeded. Defaults to 3. Minimum value is 1.
    @JsonKey(name: "failureThreshold")
    int? failureThreshold;
    
    ///GRPC specifies an action involving a GRPC port.
    @JsonKey(name: "grpc")
    IoK8SApiCoreV1GrpcAction? grpc;
    
    ///HTTPGet specifies the http request to perform.
    @JsonKey(name: "httpGet")
    IoK8SApiCoreV1HttpGetAction? httpGet;
    
    ///Number of seconds after the container has started before liveness probes are initiated.
    ///More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "initialDelaySeconds")
    int? initialDelaySeconds;
    
    ///How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    @JsonKey(name: "periodSeconds")
    int? periodSeconds;
    
    ///Minimum consecutive successes for the probe to be considered successful after having
    ///failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    @JsonKey(name: "successThreshold")
    int? successThreshold;
    
    ///TCPSocket specifies an action involving a TCP port.
    @JsonKey(name: "tcpSocket")
    IoK8SApiCoreV1TcpSocketAction? tcpSocket;
    
    ///Optional duration in seconds the pod needs to terminate gracefully upon probe failure.
    ///The grace period is the duration in seconds after the processes running in the pod are
    ///sent a termination signal and the time when the processes are forcibly halted with a kill
    ///signal. Set this value longer than the expected cleanup time for your process. If this
    ///value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value
    ///overrides the value provided by the pod spec. Value must be non-negative integer. The
    ///value zero indicates stop immediately via the kill signal (no opportunity to shut down).
    ///This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate.
    ///Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
    @JsonKey(name: "terminationGracePeriodSeconds")
    int? terminationGracePeriodSeconds;
    
    ///Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is
    ///1. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    ProbeV1({
        this.exec,
        this.failureThreshold,
        this.grpc,
        this.httpGet,
        this.initialDelaySeconds,
        this.periodSeconds,
        this.successThreshold,
        this.tcpSocket,
        this.terminationGracePeriodSeconds,
        this.timeoutSeconds,
    });

    factory ProbeV1.fromJson(Map<String, dynamic> json) => _$ProbeV1FromJson(json);

    Map<String, dynamic> toJson() => _$ProbeV1ToJson(this);
}


///Exec specifies the action to take.
///
///ExecAction describes a "run in container" action.
@JsonSerializable()
class IoK8SApiCoreV1ExecAction {
    
    ///Command is the command line to execute inside the container, the working directory for
    ///the command  is root ('/') in the container's filesystem. The command is simply exec'd,
    ///it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To
    ///use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated
    ///as live/healthy and non-zero is unhealthy.
    @JsonKey(name: "command")
    List<String>? command;

    IoK8SApiCoreV1ExecAction({
        this.command,
    });

    factory IoK8SApiCoreV1ExecAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ExecActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ExecActionToJson(this);
}


///GRPC specifies an action involving a GRPC port.
@JsonSerializable()
class IoK8SApiCoreV1GrpcAction {
    
    ///Port number of the gRPC service. Number must be in the range 1 to 65535.
    @JsonKey(name: "port")
    int port;
    
    ///Service is the name of the service to place in the gRPC HealthCheckRequest (see
    ///https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
    ///
    ///If this is not specified, the default behavior is defined by gRPC.
    @JsonKey(name: "service")
    String? service;

    IoK8SApiCoreV1GrpcAction({
        required this.port,
        this.service,
    });

    factory IoK8SApiCoreV1GrpcAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GrpcActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GrpcActionToJson(this);
}


///HTTPGet specifies the http request to perform.
///
///HTTPGetAction describes an action based on HTTP Get requests.
@JsonSerializable()
class IoK8SApiCoreV1HttpGetAction {
    
    ///Host name to connect to, defaults to the pod IP. You probably want to set "Host" in
    ///httpHeaders instead.
    @JsonKey(name: "host")
    String? host;
    
    ///Custom headers to set in the request. HTTP allows repeated headers.
    @JsonKey(name: "httpHeaders")
    List<IoK8SApiCoreV1HttpHeader>? httpHeaders;
    
    ///Path to access on the HTTP server.
    @JsonKey(name: "path")
    String? path;
    
    ///Name or number of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;
    
    ///Scheme to use for connecting to the host. Defaults to HTTP.
    @JsonKey(name: "scheme")
    String? scheme;

    IoK8SApiCoreV1HttpGetAction({
        this.host,
        this.httpHeaders,
        this.path,
        required this.port,
        this.scheme,
    });

    factory IoK8SApiCoreV1HttpGetAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HttpGetActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HttpGetActionToJson(this);
}


///HTTPHeader describes a custom header to be used in HTTP probes
@JsonSerializable()
class IoK8SApiCoreV1HttpHeader {
    
    ///The header field name. This will be canonicalized upon output, so case-variant names will
    ///be understood as the same header.
    @JsonKey(name: "name")
    String name;
    
    ///The header field value
    @JsonKey(name: "value")
    String value;

    IoK8SApiCoreV1HttpHeader({
        required this.name,
        required this.value,
    });

    factory IoK8SApiCoreV1HttpHeader.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HttpHeaderFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HttpHeaderToJson(this);
}


///TCPSocket specifies an action involving a TCP port.
///
///TCPSocketAction describes an action based on opening a socket
@JsonSerializable()
class IoK8SApiCoreV1TcpSocketAction {
    
    ///Optional: Host name to connect to, defaults to the pod IP.
    @JsonKey(name: "host")
    String? host;
    
    ///Number or name of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;

    IoK8SApiCoreV1TcpSocketAction({
        this.host,
        required this.port,
    });

    factory IoK8SApiCoreV1TcpSocketAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TcpSocketActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TcpSocketActionToJson(this);
}

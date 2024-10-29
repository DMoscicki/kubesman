import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'lifecycle.g.dart';


///Lifecycle describes actions that the management system should take in response to
///container lifecycle events. For the PostStart and PreStop lifecycle handlers, management
///of the container blocks until the action is complete, unless the container process fails,
///in which case the handler is aborted.
@JsonSerializable()
class Lifecycle {
    
    ///PostStart is called immediately after a container is created. If the handler fails, the
    ///container is terminated and restarted according to its restart policy. Other management
    ///of the container blocks until the hook completes. More info:
    ///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
    @JsonKey(name: "postStart")
    IoK8SApiCoreV1LifecycleHandler? postStart;
    
    ///PreStop is called immediately before a container is terminated due to an API request or
    ///management event such as liveness/startup probe failure, preemption, resource contention,
    ///etc. The handler is not called if the container crashes or exits. The Pod's termination
    ///grace period countdown begins before the PreStop hook is executed. Regardless of the
    ///outcome of the handler, the container will eventually terminate within the Pod's
    ///termination grace period (unless delayed by finalizers). Other management of the
    ///container blocks until the hook completes or until the termination grace period is
    ///reached. More info:
    ///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
    @JsonKey(name: "preStop")
    IoK8SApiCoreV1LifecycleHandler? preStop;

    Lifecycle({
        this.postStart,
        this.preStop,
    });

    factory Lifecycle.fromJson(Map<String, dynamic> json) => _$LifecycleFromJson(json);

    Map<String, dynamic> toJson() => _$LifecycleToJson(this);
}


///PostStart is called immediately after a container is created. If the handler fails, the
///container is terminated and restarted according to its restart policy. Other management
///of the container blocks until the hook completes. More info:
///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
///
///LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One
///and only one of the fields, except TCPSocket must be specified.
///
///PreStop is called immediately before a container is terminated due to an API request or
///management event such as liveness/startup probe failure, preemption, resource contention,
///etc. The handler is not called if the container crashes or exits. The Pod's termination
///grace period countdown begins before the PreStop hook is executed. Regardless of the
///outcome of the handler, the container will eventually terminate within the Pod's
///termination grace period (unless delayed by finalizers). Other management of the
///container blocks until the hook completes or until the termination grace period is
///reached. More info:
///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
@JsonSerializable()
class IoK8SApiCoreV1LifecycleHandler {
    
    ///Exec specifies the action to take.
    @JsonKey(name: "exec")
    IoK8SApiCoreV1ExecAction? exec;
    
    ///HTTPGet specifies the http request to perform.
    @JsonKey(name: "httpGet")
    IoK8SApiCoreV1HttpGetAction? httpGet;
    
    ///Sleep represents the duration that the container should sleep before being terminated.
    @JsonKey(name: "sleep")
    IoK8SApiCoreV1SleepAction? sleep;
    
    ///Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward
    ///compatibility. There are no validation of this field and lifecycle hooks will fail in
    ///runtime when tcp handler is specified.
    @JsonKey(name: "tcpSocket")
    IoK8SApiCoreV1TcpSocketAction? tcpSocket;

    IoK8SApiCoreV1LifecycleHandler({
        this.exec,
        this.httpGet,
        this.sleep,
        this.tcpSocket,
    });

    factory IoK8SApiCoreV1LifecycleHandler.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LifecycleHandlerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LifecycleHandlerToJson(this);
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


///Sleep represents the duration that the container should sleep before being terminated.
///
///SleepAction describes a "sleep" action.
@JsonSerializable()
class IoK8SApiCoreV1SleepAction {
    
    ///Seconds is the number of seconds to sleep.
    @JsonKey(name: "seconds")
    int seconds;

    IoK8SApiCoreV1SleepAction({
        required this.seconds,
    });

    factory IoK8SApiCoreV1SleepAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SleepActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SleepActionToJson(this);
}


///Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward
///compatibility. There are no validation of this field and lifecycle hooks will fail in
///runtime when tcp handler is specified.
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

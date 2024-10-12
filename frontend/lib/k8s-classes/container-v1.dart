import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'container_v1.g.dart';


///A single application container that you want to run within a pod.
@JsonSerializable()
class ContainerV1 {
    
    ///Arguments to the entrypoint. The container image's CMD is used if this is not provided.
    ///Variable references $(VAR_NAME) are expanded using the container's environment. If a
    ///variable cannot be resolved, the reference in the input string will be unchanged. Double
    ///$$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e.
    ///"$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will
    ///never be expanded, regardless of whether the variable exists or not. Cannot be updated.
    ///More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "args")
    List<String?>? args;
    
    ///Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used
    ///if this is not provided. Variable references $(VAR_NAME) are expanded using the
    ///container's environment. If a variable cannot be resolved, the reference in the input
    ///string will be unchanged. Double $$ are reduced to a single $, which allows for escaping
    ///the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal
    ///"$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the
    ///variable exists or not. Cannot be updated. More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "command")
    List<String?>? command;
    
    ///List of environment variables to set in the container. Cannot be updated.
    @JsonKey(name: "env")
    List<IoK8SApiCoreV1EnvVar>? env;
    
    ///List of sources to populate environment variables in the container. The keys defined
    ///within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event
    ///when the container is starting. When a key exists in multiple sources, the value
    ///associated with the last source will take precedence. Values defined by an Env with a
    ///duplicate key will take precedence. Cannot be updated.
    @JsonKey(name: "envFrom")
    List<IoK8SApiCoreV1EnvFromSource>? envFrom;
    
    ///Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
    ///This field is optional to allow higher level config management to default or override
    ///container images in workload controllers like Deployments and StatefulSets.
    @JsonKey(name: "image")
    String? image;
    
    ///Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag
    ///is specified, or IfNotPresent otherwise. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/containers/images#updating-images
    @JsonKey(name: "imagePullPolicy")
    String? imagePullPolicy;
    
    ///Actions that the management system should take in response to container lifecycle events.
    ///Cannot be updated.
    @JsonKey(name: "lifecycle")
    IoK8SApiCoreV1Lifecycle? lifecycle;
    
    ///Periodic probe of container liveness. Container will be restarted if the probe fails.
    ///Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "livenessProbe")
    IoK8SApiCoreV1Probe? livenessProbe;
    
    ///Name of the container specified as a DNS_LABEL. Each container in a pod must have a
    ///unique name (DNS_LABEL). Cannot be updated.
    @JsonKey(name: "name")
    String? name;
    
    ///List of ports to expose from the container. Not specifying a port here DOES NOT prevent
    ///that port from being exposed. Any port which is listening on the default "0.0.0.0"
    ///address inside a container will be accessible from the network. Modifying this array with
    ///strategic merge patch may corrupt the data. For more information See
    ///https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1ContainerPort>? ports;
    
    ///Periodic probe of container service readiness. Container will be removed from service
    ///endpoints if the probe fails. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "readinessProbe")
    IoK8SApiCoreV1Probe? readinessProbe;
    
    ///Resources resize policy for the container.
    @JsonKey(name: "resizePolicy")
    List<IoK8SApiCoreV1ContainerResizePolicy>? resizePolicy;
    
    ///Compute Resources required by this container. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "resources")
    IoK8SApiCoreV1ResourceRequirements? resources;
    
    ///RestartPolicy defines the restart behavior of individual containers in a pod. This field
    ///may only be set for init containers, and the only allowed value is "Always". For non-init
    ///containers or when this field is not specified, the restart behavior is defined by the
    ///Pod's restart policy and the container type. Setting the RestartPolicy as "Always" for
    ///the init container will have the following effect: this init container will be
    ///continually restarted on exit until all regular containers have terminated. Once all
    ///regular containers have completed, all init containers with restartPolicy "Always" will
    ///be shut down. This lifecycle differs from normal init containers and is often referred to
    ///as a "sidecar" container. Although this init container still starts in the init container
    ///sequence, it does not wait for the container to complete before proceeding to the next
    ///init container. Instead, the next init container starts immediately after this init
    ///container is started, or after any startupProbe has successfully completed.
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;
    
    ///SecurityContext defines the security options the container should be run with. If set,
    ///the fields of SecurityContext override the equivalent fields of PodSecurityContext. More
    ///info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
    @JsonKey(name: "securityContext")
    IoK8SApiCoreV1SecurityContext? securityContext;
    
    ///StartupProbe indicates that the Pod has successfully initialized. If specified, no other
    ///probes are executed until this completes successfully. If this probe fails, the Pod will
    ///be restarted, just as if the livenessProbe failed. This can be used to provide different
    ///probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to
    ///load data or warm a cache, than during steady-state operation. This cannot be updated.
    ///More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "startupProbe")
    IoK8SApiCoreV1Probe? startupProbe;
    
    ///Whether this container should allocate a buffer for stdin in the container runtime. If
    ///this is not set, reads from stdin in the container will always result in EOF. Default is
    ///false.
    @JsonKey(name: "stdin")
    bool? stdin;
    
    ///Whether the container runtime should close the stdin channel after it has been opened by
    ///a single attach. When stdin is true the stdin stream will remain open across multiple
    ///attach sessions. If stdinOnce is set to true, stdin is opened on container start, is
    ///empty until the first client attaches to stdin, and then remains open and accepts data
    ///until the client disconnects, at which time stdin is closed and remains closed until the
    ///container is restarted. If this flag is false, a container processes that reads from
    ///stdin will never receive an EOF. Default is false
    @JsonKey(name: "stdinOnce")
    bool? stdinOnce;
    
    ///Optional: Path at which the file to which the container's termination message will be
    ///written is mounted into the container's filesystem. Message written is intended to be
    ///brief final status, such as an assertion failure message. Will be truncated by the node
    ///if greater than 4096 bytes. The total message length across all containers will be
    ///limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
    @JsonKey(name: "terminationMessagePath")
    String? terminationMessagePath;
    
    ///Indicate how the termination message should be populated. File will use the contents of
    ///terminationMessagePath to populate the container status message on both success and
    ///failure. FallbackToLogsOnError will use the last chunk of container log output if the
    ///termination message file is empty and the container exited with an error. The log output
    ///is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be
    ///updated.
    @JsonKey(name: "terminationMessagePolicy")
    String? terminationMessagePolicy;
    
    ///Whether this container should allocate a TTY for itself, also requires 'stdin' to be
    ///true. Default is false.
    @JsonKey(name: "tty")
    bool? tty;
    
    ///volumeDevices is the list of block devices to be used by the container.
    @JsonKey(name: "volumeDevices")
    List<IoK8SApiCoreV1VolumeDevice>? volumeDevices;
    
    ///Pod volumes to mount into the container's filesystem. Cannot be updated.
    @JsonKey(name: "volumeMounts")
    List<IoK8SApiCoreV1VolumeMount>? volumeMounts;
    
    ///Container's working directory. If not specified, the container runtime's default will be
    ///used, which might be configured in the container image. Cannot be updated.
    @JsonKey(name: "workingDir")
    String? workingDir;

    ContainerV1({
        this.args,
        this.command,
        this.env,
        this.envFrom,
        this.image,
        this.imagePullPolicy,
        this.lifecycle,
        this.livenessProbe,
        required this.name,
        this.ports,
        this.readinessProbe,
        this.resizePolicy,
        this.resources,
        this.restartPolicy,
        this.securityContext,
        this.startupProbe,
        this.stdin,
        this.stdinOnce,
        this.terminationMessagePath,
        this.terminationMessagePolicy,
        this.tty,
        this.volumeDevices,
        this.volumeMounts,
        this.workingDir,
    });

    factory ContainerV1.fromJson(Map<String, dynamic> json) => _$ContainerV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerV1ToJson(this);
}


///EnvVar represents an environment variable present in a Container.
@JsonSerializable()
class IoK8SApiCoreV1EnvVar {
    
    ///Name of the environment variable. Must be a C_IDENTIFIER.
    @JsonKey(name: "name")
    String name;
    
    ///Variable references $(VAR_NAME) are expanded using the previously defined environment
    ///variables in the container and any service environment variables. If a variable cannot be
    ///resolved, the reference in the input string will be unchanged. Double $$ are reduced to a
    ///single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will
    ///produce the string literal "$(VAR_NAME)". Escaped references will never be expanded,
    ///regardless of whether the variable exists or not. Defaults to "".
    @JsonKey(name: "value")
    String? value;
    
    ///Source for the environment variable's value. Cannot be used if value is not empty.
    @JsonKey(name: "valueFrom")
    IoK8SApiCoreV1EnvVarSource? valueFrom;

    IoK8SApiCoreV1EnvVar({
        required this.name,
        this.value,
        this.valueFrom,
    });

    factory IoK8SApiCoreV1EnvVar.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvVarFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvVarToJson(this);
}


///Source for the environment variable's value. Cannot be used if value is not empty.
///
///EnvVarSource represents a source for the value of an EnvVar.
@JsonSerializable()
class IoK8SApiCoreV1EnvVarSource {
    
    ///Selects a key of a ConfigMap.
    @JsonKey(name: "configMapKeyRef")
    IoK8SApiCoreV1ConfigMapKeySelector? configMapKeyRef;
    
    ///Selects a field of the pod: supports metadata.name, metadata.namespace,
    ///`metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName,
    ///spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and
    ///requests.ephemeral-storage) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;
    
    ///Selects a key of a secret in the pod's namespace
    @JsonKey(name: "secretKeyRef")
    IoK8SApiCoreV1SecretKeySelector? secretKeyRef;

    IoK8SApiCoreV1EnvVarSource({
        this.configMapKeyRef,
        this.fieldRef,
        this.resourceFieldRef,
        this.secretKeyRef,
    });

    factory IoK8SApiCoreV1EnvVarSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvVarSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvVarSourceToJson(this);
}


///Selects a key of a ConfigMap.
///
///Selects a key from a ConfigMap.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapKeySelector {
    
    ///The key to select.
    @JsonKey(name: "key")
    String key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapKeySelector({
        required this.key,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapKeySelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapKeySelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapKeySelectorToJson(this);
}


///Selects a field of the pod: supports metadata.name, metadata.namespace,
///`metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName,
///spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
///
///ObjectFieldSelector selects an APIVersioned field of an object.
@JsonSerializable()
class IoK8SApiCoreV1ObjectFieldSelector {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String fieldPath;

    IoK8SApiCoreV1ObjectFieldSelector({
        this.apiVersion,
        required this.fieldPath,
    });

    factory IoK8SApiCoreV1ObjectFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectFieldSelectorToJson(this);
}


///Selects a resource of the container: only resources limits and requests (limits.cpu,
///limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and
///requests.ephemeral-storage) are currently supported.
///
///ResourceFieldSelector represents container resources (cpu, memory) and their output format
@JsonSerializable()
class IoK8SApiCoreV1ResourceFieldSelector {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String resource;

    IoK8SApiCoreV1ResourceFieldSelector({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory IoK8SApiCoreV1ResourceFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceFieldSelectorToJson(this);
}


///Selects a key of a secret in the pod's namespace
///
///SecretKeySelector selects a key of a Secret.
@JsonSerializable()
class IoK8SApiCoreV1SecretKeySelector {
    
    ///The key of the secret to select from.  Must be a valid secret key.
    @JsonKey(name: "key")
    String key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretKeySelector({
        required this.key,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretKeySelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretKeySelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretKeySelectorToJson(this);
}


///EnvFromSource represents the source of a set of ConfigMaps
@JsonSerializable()
class IoK8SApiCoreV1EnvFromSource {
    
    ///The ConfigMap to select from
    @JsonKey(name: "configMapRef")
    IoK8SApiCoreV1ConfigMapEnvSource? configMapRef;
    
    ///An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    @JsonKey(name: "prefix")
    String? prefix;
    
    ///The Secret to select from
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretEnvSource? secretRef;

    IoK8SApiCoreV1EnvFromSource({
        this.configMapRef,
        this.prefix,
        this.secretRef,
    });

    factory IoK8SApiCoreV1EnvFromSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvFromSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvFromSourceToJson(this);
}


///The ConfigMap to select from
///
///ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
///The contents of the target ConfigMap's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapEnvSource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapEnvSource({
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapEnvSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapEnvSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapEnvSourceToJson(this);
}


///The Secret to select from
///
///SecretEnvSource selects a Secret to populate the environment variables with.
///
///The contents of the target Secret's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class IoK8SApiCoreV1SecretEnvSource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretEnvSource({
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretEnvSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretEnvSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretEnvSourceToJson(this);
}


///Actions that the management system should take in response to container lifecycle events.
///Cannot be updated.
///
///Lifecycle describes actions that the management system should take in response to
///container lifecycle events. For the PostStart and PreStop lifecycle handlers, management
///of the container blocks until the action is complete, unless the container process fails,
///in which case the handler is aborted.
@JsonSerializable()
class IoK8SApiCoreV1Lifecycle {
    
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

    IoK8SApiCoreV1Lifecycle({
        this.postStart,
        this.preStop,
    });

    factory IoK8SApiCoreV1Lifecycle.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LifecycleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LifecycleToJson(this);
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
///
///TCPSocket specifies an action involving a TCP port.
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


///Periodic probe of container liveness. Container will be restarted if the probe fails.
///Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
///
///Probe describes a health check to be performed against a container to determine whether
///it is alive or ready to receive traffic.
///
///Periodic probe of container service readiness. Container will be removed from service
///endpoints if the probe fails. Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
///
///StartupProbe indicates that the Pod has successfully initialized. If specified, no other
///probes are executed until this completes successfully. If this probe fails, the Pod will
///be restarted, just as if the livenessProbe failed. This can be used to provide different
///probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to
///load data or warm a cache, than during steady-state operation. This cannot be updated.
///More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
@JsonSerializable()
class IoK8SApiCoreV1Probe {
    
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

    IoK8SApiCoreV1Probe({
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

    factory IoK8SApiCoreV1Probe.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ProbeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ProbeToJson(this);
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


///ContainerPort represents a network port in a single container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerPort {
    
    ///Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x
    ///< 65536.
    @JsonKey(name: "containerPort")
    int containerPort;
    
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

    IoK8SApiCoreV1ContainerPort({
        required this.containerPort,
        this.hostIp,
        this.hostPort,
        this.name,
        this.protocol,
    });

    factory IoK8SApiCoreV1ContainerPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerPortToJson(this);
}


///ContainerResizePolicy represents resource resize policy for the container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerResizePolicy {
    
    ///Name of the resource to which this resource resize policy applies. Supported values: cpu,
    ///memory.
    @JsonKey(name: "resourceName")
    String resourceName;
    
    ///Restart policy to apply when specified resource is resized. If not specified, it defaults
    ///to NotRequired.
    @JsonKey(name: "restartPolicy")
    String restartPolicy;

    IoK8SApiCoreV1ContainerResizePolicy({
        required this.resourceName,
        required this.restartPolicy,
    });

    factory IoK8SApiCoreV1ContainerResizePolicy.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerResizePolicyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerResizePolicyToJson(this);
}


///Compute Resources required by this container. Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
///
///ResourceRequirements describes the compute resource requirements.
@JsonSerializable()
class IoK8SApiCoreV1ResourceRequirements {
    
    ///Claims lists the names of resources, defined in spec.resourceClaims, that are used by
    ///this container.
    ///
    ///This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
    ///
    ///This field is immutable. It can only be set for containers.
    @JsonKey(name: "claims")
    List<IoK8SApiCoreV1ResourceClaim>? claims;
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    IoK8SApiCoreV1ResourceRequirements({
        this.claims,
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1ResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceRequirementsToJson(this);
}


///ResourceClaim references one entry in PodSpec.ResourceClaims.
@JsonSerializable()
class IoK8SApiCoreV1ResourceClaim {
    
    ///Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this
    ///field is used. It makes that resource available inside a container.
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1ResourceClaim({
        required this.name,
    });

    factory IoK8SApiCoreV1ResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceClaimToJson(this);
}


///SecurityContext defines the security options the container should be run with. If set,
///the fields of SecurityContext override the equivalent fields of PodSecurityContext. More
///info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
///
///SecurityContext holds security configuration that will be applied to a container. Some
///fields are present in both SecurityContext and PodSecurityContext.  When both are set,
///the values in SecurityContext take precedence.
@JsonSerializable()
class IoK8SApiCoreV1SecurityContext {
    
    ///AllowPrivilegeEscalation controls whether a process can gain more privileges than its
    ///parent process. This bool directly controls if the no_new_privs flag will be set on the
    ///container process. AllowPrivilegeEscalation is true always when the container is: 1) run
    ///as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "allowPrivilegeEscalation")
    bool? allowPrivilegeEscalation;
    
    ///appArmorProfile is the AppArmor options to use by this container. If set, this profile
    ///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "appArmorProfile")
    IoK8SApiCoreV1AppArmorProfile? appArmorProfile;
    
    ///The capabilities to add/drop when running containers. Defaults to the default set of
    ///capabilities granted by the container runtime. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "capabilities")
    IoK8SApiCoreV1Capabilities? capabilities;
    
    ///Run container in privileged mode. Processes in privileged containers are essentially
    ///equivalent to root on the host. Defaults to false. Note that this field cannot be set
    ///when spec.os.name is windows.
    @JsonKey(name: "privileged")
    bool? privileged;
    
    ///procMount denotes the type of proc mount to use for the containers. The default is
    ///DefaultProcMount which uses the container runtime defaults for readonly paths and masked
    ///paths. This requires the ProcMountType feature flag to be enabled. Note that this field
    ///cannot be set when spec.os.name is windows.
    @JsonKey(name: "procMount")
    String? procMount;
    
    ///Whether this container has a read-only root filesystem. Default is false. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "readOnlyRootFilesystem")
    bool? readOnlyRootFilesystem;
    
    ///The GID to run the entrypoint of the container process. Uses runtime default if unset.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsGroup")
    int? runAsGroup;
    
    ///Indicates that the container must run as a non-root user. If true, the Kubelet will
    ///validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to
    ///start the container if it does. If unset or false, no such validation will be performed.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence.
    @JsonKey(name: "runAsNonRoot")
    bool? runAsNonRoot;
    
    ///The UID to run the entrypoint of the container process. Defaults to user specified in
    ///image metadata if unspecified. May also be set in PodSecurityContext.  If set in both
    ///SecurityContext and PodSecurityContext, the value specified in SecurityContext takes
    ///precedence. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsUser")
    int? runAsUser;
    
    ///The seccomp options to use by this container. If seccomp options are provided at both the
    ///pod & container level, the container options override the pod options. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "seccompProfile")
    IoK8SApiCoreV1SeccompProfile? seccompProfile;
    
    ///The SELinux context to be applied to the container. If unspecified, the container runtime
    ///will allocate a random SELinux context for each container.  May also be set in
    ///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
    ///specified in SecurityContext takes precedence. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "seLinuxOptions")
    IoK8SApiCoreV1SeLinuxOptions? seLinuxOptions;
    
    ///The Windows specific settings applied to all containers. If unspecified, the options from
    ///the PodSecurityContext will be used. If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is linux.
    @JsonKey(name: "windowsOptions")
    IoK8SApiCoreV1WindowsSecurityContextOptions? windowsOptions;

    IoK8SApiCoreV1SecurityContext({
        this.allowPrivilegeEscalation,
        this.appArmorProfile,
        this.capabilities,
        this.privileged,
        this.procMount,
        this.readOnlyRootFilesystem,
        this.runAsGroup,
        this.runAsNonRoot,
        this.runAsUser,
        this.seccompProfile,
        this.seLinuxOptions,
        this.windowsOptions,
    });

    factory IoK8SApiCoreV1SecurityContext.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecurityContextFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecurityContextToJson(this);
}


///appArmorProfile is the AppArmor options to use by this container. If set, this profile
///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
///is windows.
///
///AppArmorProfile defines a pod or container's AppArmor settings.
@JsonSerializable()
class IoK8SApiCoreV1AppArmorProfile {
    
    ///localhostProfile indicates a profile loaded on the node that should be used. The profile
    ///must be preconfigured on the node to work. Must match the loaded name of the profile.
    ///Must be set if and only if type is "Localhost".
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of AppArmor profile will be applied. Valid options are:
    ///Localhost - a profile pre-loaded on the node.
    ///RuntimeDefault - the container runtime's default profile.
    ///Unconfined - no AppArmor enforcement.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1AppArmorProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1AppArmorProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AppArmorProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AppArmorProfileToJson(this);
}


///The capabilities to add/drop when running containers. Defaults to the default set of
///capabilities granted by the container runtime. Note that this field cannot be set when
///spec.os.name is windows.
///
///Adds and removes POSIX capabilities from running containers.
@JsonSerializable()
class IoK8SApiCoreV1Capabilities {
    
    ///Added capabilities
    @JsonKey(name: "add")
    List<String>? add;
    
    ///Removed capabilities
    @JsonKey(name: "drop")
    List<String>? drop;

    IoK8SApiCoreV1Capabilities({
        this.add,
        this.drop,
    });

    factory IoK8SApiCoreV1Capabilities.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CapabilitiesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CapabilitiesToJson(this);
}


///The SELinux context to be applied to the container. If unspecified, the container runtime
///will allocate a random SELinux context for each container.  May also be set in
///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
///specified in SecurityContext takes precedence. Note that this field cannot be set when
///spec.os.name is windows.
///
///SELinuxOptions are the labels to be applied to the container
@JsonSerializable()
class IoK8SApiCoreV1SeLinuxOptions {
    
    ///Level is SELinux level label that applies to the container.
    @JsonKey(name: "level")
    String? level;
    
    ///Role is a SELinux role label that applies to the container.
    @JsonKey(name: "role")
    String? role;
    
    ///Type is a SELinux type label that applies to the container.
    @JsonKey(name: "type")
    String? type;
    
    ///User is a SELinux user label that applies to the container.
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1SeLinuxOptions({
        this.level,
        this.role,
        this.type,
        this.user,
    });

    factory IoK8SApiCoreV1SeLinuxOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeLinuxOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeLinuxOptionsToJson(this);
}


///The seccomp options to use by this container. If seccomp options are provided at both the
///pod & container level, the container options override the pod options. Note that this
///field cannot be set when spec.os.name is windows.
///
///SeccompProfile defines a pod/container's seccomp profile settings. Only one profile
///source may be set.
@JsonSerializable()
class IoK8SApiCoreV1SeccompProfile {
    
    ///localhostProfile indicates a profile defined in a file on the node should be used. The
    ///profile must be preconfigured on the node to work. Must be a descending path, relative to
    ///the kubelet's configured seccomp profile location. Must be set if type is "Localhost".
    ///Must NOT be set for any other type.
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of seccomp profile will be applied. Valid options are:
    ///
    ///Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the
    ///container runtime default profile should be used. Unconfined - no profile should be
    ///applied.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1SeccompProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1SeccompProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeccompProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeccompProfileToJson(this);
}


///The Windows specific settings applied to all containers. If unspecified, the options from
///the PodSecurityContext will be used. If set in both SecurityContext and
///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
///this field cannot be set when spec.os.name is linux.
///
///WindowsSecurityContextOptions contain Windows-specific options and credentials.
@JsonSerializable()
class IoK8SApiCoreV1WindowsSecurityContextOptions {
    
    ///GMSACredentialSpec is where the GMSA admission webhook
    ///(https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA
    ///credential spec named by the GMSACredentialSpecName field.
    @JsonKey(name: "gmsaCredentialSpec")
    String? gmsaCredentialSpec;
    
    ///GMSACredentialSpecName is the name of the GMSA credential spec to use.
    @JsonKey(name: "gmsaCredentialSpecName")
    String? gmsaCredentialSpecName;
    
    ///HostProcess determines if a container should be run as a 'Host Process' container. All of
    ///a Pod's containers must have the same effective HostProcess value (it is not allowed to
    ///have a mix of HostProcess containers and non-HostProcess containers). In addition, if
    ///HostProcess is true then HostNetwork must also be set to true.
    @JsonKey(name: "hostProcess")
    bool? hostProcess;
    
    ///The UserName in Windows to run the entrypoint of the container process. Defaults to the
    ///user specified in image metadata if unspecified. May also be set in PodSecurityContext.
    ///If set in both SecurityContext and PodSecurityContext, the value specified in
    ///SecurityContext takes precedence.
    @JsonKey(name: "runAsUserName")
    String? runAsUserName;

    IoK8SApiCoreV1WindowsSecurityContextOptions({
        this.gmsaCredentialSpec,
        this.gmsaCredentialSpecName,
        this.hostProcess,
        this.runAsUserName,
    });

    factory IoK8SApiCoreV1WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1WindowsSecurityContextOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1WindowsSecurityContextOptionsToJson(this);
}


///volumeDevice describes a mapping of a raw block device within a container.
@JsonSerializable()
class IoK8SApiCoreV1VolumeDevice {
    
    ///devicePath is the path inside of the container that the device will be mapped to.
    @JsonKey(name: "devicePath")
    String devicePath;
    
    ///name must match the name of a persistentVolumeClaim in the pod
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1VolumeDevice({
        required this.devicePath,
        required this.name,
    });

    factory IoK8SApiCoreV1VolumeDevice.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeDeviceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeDeviceToJson(this);
}


///VolumeMount describes a mounting of a Volume within a container.
@JsonSerializable()
class IoK8SApiCoreV1VolumeMount {
    
    ///Path within the container at which the volume should be mounted.  Must not contain ':'.
    @JsonKey(name: "mountPath")
    String mountPath;
    
    ///mountPropagation determines how mounts are propagated from the host to container and the
    ///other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    ///When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None
    ///or unspecified (which defaults to None).
    @JsonKey(name: "mountPropagation")
    String? mountPropagation;
    
    ///This must match the Name of a Volume.
    @JsonKey(name: "name")
    String name;
    
    ///Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
    ///
    ///If ReadOnly is false, this field has no meaning and must be unspecified.
    ///
    ///If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively
    ///read-only.  If this field is set to IfPossible, the mount is made recursively read-only,
    ///if it is supported by the container runtime.  If this field is set to Enabled, the mount
    ///is made recursively read-only if it is supported by the container runtime, otherwise the
    ///pod will not be started and an error will be generated to indicate the reason.
    ///
    ///If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or
    ///be unspecified, which defaults to None).
    ///
    ///If this field is not specified, it is treated as an equivalent of Disabled.
    @JsonKey(name: "recursiveReadOnly")
    String? recursiveReadOnly;
    
    ///Path within the volume from which the container's volume should be mounted. Defaults to
    ///"" (volume's root).
    @JsonKey(name: "subPath")
    String? subPath;
    
    ///Expanded path within the volume from which the container's volume should be mounted.
    ///Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded
    ///using the container's environment. Defaults to "" (volume's root). SubPathExpr and
    ///SubPath are mutually exclusive.
    @JsonKey(name: "subPathExpr")
    String? subPathExpr;

    IoK8SApiCoreV1VolumeMount({
        required this.mountPath,
        this.mountPropagation,
        required this.name,
        this.readOnly,
        this.recursiveReadOnly,
        this.subPath,
        this.subPathExpr,
    });

    factory IoK8SApiCoreV1VolumeMount.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeMountFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeMountToJson(this);
}

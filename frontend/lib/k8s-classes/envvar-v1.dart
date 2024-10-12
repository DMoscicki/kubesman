import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'envvar_v1.g.dart';


///EnvVar represents an environment variable present in a Container.
@JsonSerializable()
class EnvvarV1 {
    
    ///Name of the environment variable. Must be a C_IDENTIFIER.
    @JsonKey(name: "name")
    String? name;
    
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

    EnvvarV1({
        required this.name,
        this.value,
        this.valueFrom,
    });

    factory EnvvarV1.fromJson(Map<String, dynamic> json) => _$EnvvarV1FromJson(json);

    Map<String, dynamic> toJson() => _$EnvvarV1ToJson(this);
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

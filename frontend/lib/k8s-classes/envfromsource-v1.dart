import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'envfromsource_v1.g.dart';


///EnvFromSource represents the source of a set of ConfigMaps
@JsonSerializable()
class EnvfromsourceV1 {
    
    ///The ConfigMap to select from
    @JsonKey(name: "configMapRef")
    IoK8SApiCoreV1ConfigMapEnvSource? configMapRef;
    
    ///An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    @JsonKey(name: "prefix")
    String? prefix;
    
    ///The Secret to select from
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretEnvSource? secretRef;

    EnvfromsourceV1({
        this.configMapRef,
        this.prefix,
        this.secretRef,
    });

    factory EnvfromsourceV1.fromJson(Map<String, dynamic> json) => _$EnvfromsourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$EnvfromsourceV1ToJson(this);
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

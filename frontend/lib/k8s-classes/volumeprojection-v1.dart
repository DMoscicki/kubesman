import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeprojection_v1.g.dart';


///Projection that may be projected along with other supported volume types
@JsonSerializable()
class VolumeprojectionV1 {
    
    ///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
    ///ClusterTrustBundle objects in an auto-updating file.
    ///
    ///Alpha, gated by the ClusterTrustBundleProjection feature gate.
    ///
    ///ClusterTrustBundle objects can either be selected by name, or by the combination of
    ///signer name and a label selector.
    ///
    ///Kubelet performs aggressive normalization of the PEM contents written into the pod
    ///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
    ///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
    ///arbitrary, and Kubelet may change the order over time.
    @JsonKey(name: "clusterTrustBundle")
    IoK8SApiCoreV1ClusterTrustBundleProjection? clusterTrustBundle;
    
    ///configMap information about the configMap data to project
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapProjection? configMap;
    
    ///downwardAPI information about the downwardAPI data to project
    @JsonKey(name: "downwardAPI")
    IoK8SApiCoreV1DownwardApiProjection? downwardApi;
    
    ///secret information about the secret data to project
    @JsonKey(name: "secret")
    IoK8SApiCoreV1SecretProjection? secret;
    
    ///serviceAccountToken is information about the serviceAccountToken data to project
    @JsonKey(name: "serviceAccountToken")
    IoK8SApiCoreV1ServiceAccountTokenProjection? serviceAccountToken;

    VolumeprojectionV1({
        this.clusterTrustBundle,
        this.configMap,
        this.downwardApi,
        this.secret,
        this.serviceAccountToken,
    });

    factory VolumeprojectionV1.fromJson(Map<String, dynamic> json) => _$VolumeprojectionV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumeprojectionV1ToJson(this);
}


///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
///ClusterTrustBundle objects in an auto-updating file.
///
///Alpha, gated by the ClusterTrustBundleProjection feature gate.
///
///ClusterTrustBundle objects can either be selected by name, or by the combination of
///signer name and a label selector.
///
///Kubelet performs aggressive normalization of the PEM contents written into the pod
///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
///arbitrary, and Kubelet may change the order over time.
///
///ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects
///and project their contents into the pod filesystem.
@JsonSerializable()
class IoK8SApiCoreV1ClusterTrustBundleProjection {
    
    ///Select all ClusterTrustBundles that match this label selector.  Only has effect if
    ///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
    ///nothing".  If set but empty, interpreted as "match everything".
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName
    ///and labelSelector.
    @JsonKey(name: "name")
    String? name;
    
    ///If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't
    ///available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If
    ///using signerName, then the combination of signerName and labelSelector is allowed to
    ///match zero ClusterTrustBundles.
    @JsonKey(name: "optional")
    bool? optional;
    
    ///Relative path from the volume root to write the bundle.
    @JsonKey(name: "path")
    String path;
    
    ///Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with
    ///name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
    @JsonKey(name: "signerName")
    String? signerName;

    IoK8SApiCoreV1ClusterTrustBundleProjection({
        this.labelSelector,
        this.name,
        this.optional,
        required this.path,
        this.signerName,
    });

    factory IoK8SApiCoreV1ClusterTrustBundleProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClusterTrustBundleProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClusterTrustBundleProjectionToJson(this);
}


///Select all ClusterTrustBundles that match this label selector.  Only has effect if
///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
///nothing".  If set but empty, interpreted as "match everything".
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelector {
    
    ///matchExpressions is a list of label selector requirements. The requirements are ANDed.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement>? matchExpressions;
    
    ///matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is
    ///equivalent to an element of matchExpressions, whose key field is "key", the operator is
    ///"In", and the values array contains only "value". The requirements are ANDed.
    @JsonKey(name: "matchLabels")
    Map<String, String>? matchLabels;

    IoK8SApimachineryPkgApisMetaV1LabelSelector({
        this.matchExpressions,
        this.matchLabels,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(this);
}


///A label selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement {
    
    ///key is the label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///operator represents a key's relationship to a set of values. Valid operators are In,
    ///NotIn, Exists and DoesNotExist.
    @JsonKey(name: "operator")
    String ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator;
    
    ///values is an array of string values. If the operator is In or NotIn, the values array
    ///must be non-empty. If the operator is Exists or DoesNotExist, the values array must be
    ///empty. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement({
        required this.key,
        required this.ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(this);
}


///configMap information about the configMap data to project
///
///Adapts a ConfigMap into a projected volume.
///
///The contents of the target ConfigMap's Data field will be presented in a projected volume
///as files using the keys in the Data field as the file names, unless the items element is
///populated with specific mappings of keys to paths. Note that this is identical to a
///configmap volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapProjectionToJson(this);
}


///Maps a string key to a path within a volume.
@JsonSerializable()
class IoK8SApiCoreV1KeyToPath {
    
    ///key is the key to project.
    @JsonKey(name: "key")
    String key;
    
    ///mode is Optional: mode bits used to set permissions on this file. Must be an octal value
    ///between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and
    ///decimal values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///path is the relative path of the file to map the key to. May not be an absolute path. May
    ///not contain the path element '..'. May not start with the string '..'.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1KeyToPath({
        required this.key,
        this.mode,
        required this.path,
    });

    factory IoK8SApiCoreV1KeyToPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1KeyToPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1KeyToPathToJson(this);
}


///downwardAPI information about the downwardAPI data to project
///
///Represents downward API info for projecting into a projected volume. Note that this is
///identical to a downwardAPI volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiProjection {
    
    ///Items is a list of DownwardAPIVolume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    IoK8SApiCoreV1DownwardApiProjection({
        this.items,
    });

    factory IoK8SApiCoreV1DownwardApiProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiProjectionToJson(this);
}


///DownwardAPIVolumeFile represents information to create the file containing the pod field
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeFile {
    
    ///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
    ///are supported.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Optional: mode bits used to set permissions on this file, must be an octal value between
    ///0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///Required: Path is  the relative path name of the file to be created. Must not be absolute
    ///or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must
    ///not start with '..'
    @JsonKey(name: "path")
    String path;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, requests.cpu and requests.memory) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;

    IoK8SApiCoreV1DownwardApiVolumeFile({
        this.fieldRef,
        this.mode,
        required this.path,
        this.resourceFieldRef,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(this);
}


///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
///are supported.
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
///limits.memory, requests.cpu and requests.memory) are currently supported.
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


///secret information about the secret data to project
///
///Adapts a secret into a projected volume.
///
///The contents of the target Secret's Data field will be presented in a projected volume as
///files using the keys in the Data field as the file names. Note that this is identical to
///a secret volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1SecretProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced Secret will
    ///be projected into the volume as a file whose name is the key and content is the value. If
    ///specified, the listed keys will be projected into the specified paths, and unlisted keys
    ///will not be present. If a key is specified which is not present in the Secret, the volume
    ///setup will error unless it is marked optional. Paths must be relative and may not contain
    ///the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional field specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretProjectionToJson(this);
}


///serviceAccountToken is information about the serviceAccountToken data to project
///
///ServiceAccountTokenProjection represents a projected service account token volume. This
///projection can be used to insert a service account token into the pods runtime filesystem
///for use against APIs (Kubernetes API Server or otherwise).
@JsonSerializable()
class IoK8SApiCoreV1ServiceAccountTokenProjection {
    
    ///audience is the intended audience of the token. A recipient of a token must identify
    ///itself with an identifier specified in the audience of the token, and otherwise should
    ///reject the token. The audience defaults to the identifier of the apiserver.
    @JsonKey(name: "audience")
    String? audience;
    
    ///expirationSeconds is the requested duration of validity of the service account token. As
    ///the token approaches expiration, the kubelet volume plugin will proactively rotate the
    ///service account token. The kubelet will start trying to rotate the token if the token is
    ///older than 80 percent of its time to live or if the token is older than 24 hours.Defaults
    ///to 1 hour and must be at least 10 minutes.
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;
    
    ///path is the path relative to the mount point of the file to project the token into.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1ServiceAccountTokenProjection({
        this.audience,
        this.expirationSeconds,
        required this.path,
    });

    factory IoK8SApiCoreV1ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServiceAccountTokenProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServiceAccountTokenProjectionToJson(this);
}

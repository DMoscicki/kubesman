import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'configmapnodeconfigsource_v1.g.dart';


///ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config
///source for the Node. This API is deprecated since 1.22:
///https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
@JsonSerializable()
class ConfigmapnodeconfigsourceV1 {
    
    ///KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the
    ///KubeletConfiguration structure This field is required in all cases.
    @JsonKey(name: "kubeletConfigKey")
    String? kubeletConfigKey;
    
    ///Name is the metadata.name of the referenced ConfigMap. This field is required in all
    ///cases.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the metadata.namespace of the referenced ConfigMap. This field is required
    ///in all cases.
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field
    ///is forbidden in Node.Spec, and required in Node.Status.
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in
    ///Node.Spec, and required in Node.Status.
    @JsonKey(name: "uid")
    String? uid;

    ConfigmapnodeconfigsourceV1({
        required this.kubeletConfigKey,
        required this.name,
        required this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory ConfigmapnodeconfigsourceV1.fromJson(Map<String, dynamic> json) => _$ConfigmapnodeconfigsourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$ConfigmapnodeconfigsourceV1ToJson(this);
}

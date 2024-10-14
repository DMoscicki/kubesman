import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodespec_v1.g.dart';


///NodeSpec describes the attributes that a node is created with.
@JsonSerializable()
class NodespecV1 {
    
    ///Deprecated: Previously used to specify the source of the node's configuration for the
    ///DynamicKubeletConfig feature. This feature is removed.
    @JsonKey(name: "configSource")
    IoK8SApiCoreV1NodeConfigSource? configSource;
    
    ///Deprecated. Not all kubelets will set this field. Remove field after 1.13. see:
    ///https://issues.k8s.io/61966
    @JsonKey(name: "externalID")
    String? externalId;
    
    ///PodCIDR represents the pod IP range assigned to the node.
    @JsonKey(name: "podCIDR")
    String? podCidr;
    
    ///podCIDRs represents the IP ranges assigned to the node for usage by Pods on that node. If
    ///this field is specified, the 0th entry must match the podCIDR field. It may contain at
    ///most 1 value for each of IPv4 and IPv6.
    @JsonKey(name: "podCIDRs")
    List<String?>? podCidRs;
    
    ///ID of the node assigned by the cloud provider in the format:
    ///<ProviderName>://<ProviderSpecificNodeID>
    @JsonKey(name: "providerID")
    String? providerId;
    
    ///If specified, the node's taints.
    @JsonKey(name: "taints")
    List<IoK8SApiCoreV1Taint>? taints;
    
    ///Unschedulable controls node schedulability of new pods. By default, node is schedulable.
    ///More info: https://kubernetes.io/docs/concepts/nodes/node/#manual-node-administration
    @JsonKey(name: "unschedulable")
    bool? unschedulable;

    NodespecV1({
        this.configSource,
        this.externalId,
        this.podCidr,
        this.podCidRs,
        this.providerId,
        this.taints,
        this.unschedulable,
    });

    factory NodespecV1.fromJson(Map<String, dynamic> json) => _$NodespecV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodespecV1ToJson(this);
}


///Deprecated: Previously used to specify the source of the node's configuration for the
///DynamicKubeletConfig feature. This feature is removed.
///
///NodeConfigSource specifies a source of node configuration. Exactly one subfield
///(excluding metadata) must be non-nil. This API is deprecated since 1.22
@JsonSerializable()
class IoK8SApiCoreV1NodeConfigSource {
    
    ///ConfigMap is a reference to a Node's ConfigMap
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapNodeConfigSource? configMap;

    IoK8SApiCoreV1NodeConfigSource({
        this.configMap,
    });

    factory IoK8SApiCoreV1NodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeConfigSourceToJson(this);
}


///ConfigMap is a reference to a Node's ConfigMap
///
///ConfigMapNodeConfigSource contains the information to reference a ConfigMap as a config
///source for the Node. This API is deprecated since 1.22:
///https://git.k8s.io/enhancements/keps/sig-node/281-dynamic-kubelet-configuration
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapNodeConfigSource {
    
    ///KubeletConfigKey declares which key of the referenced ConfigMap corresponds to the
    ///KubeletConfiguration structure This field is required in all cases.
    @JsonKey(name: "kubeletConfigKey")
    String kubeletConfigKey;
    
    ///Name is the metadata.name of the referenced ConfigMap. This field is required in all
    ///cases.
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the metadata.namespace of the referenced ConfigMap. This field is required
    ///in all cases.
    @JsonKey(name: "namespace")
    String namespace;
    
    ///ResourceVersion is the metadata.ResourceVersion of the referenced ConfigMap. This field
    ///is forbidden in Node.Spec, and required in Node.Status.
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID is the metadata.UID of the referenced ConfigMap. This field is forbidden in
    ///Node.Spec, and required in Node.Status.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ConfigMapNodeConfigSource({
        required this.kubeletConfigKey,
        required this.name,
        required this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(this);
}


///The node this Taint is attached to has the "effect" on any pod that does not tolerate the
///Taint.
@JsonSerializable()
class IoK8SApiCoreV1Taint {
    
    ///Required. The effect of the taint on pods that do not tolerate the taint. Valid effects
    ///are NoSchedule, PreferNoSchedule and NoExecute.
    @JsonKey(name: "effect")
    String effect;
    
    ///Required. The taint key to be applied to a node.
    @JsonKey(name: "key")
    String key;
    
    ///TimeAdded represents the time at which the taint was added. It is only written for
    ///NoExecute taints.
    @JsonKey(name: "timeAdded")
    DateTime? timeAdded;
    
    ///The taint value corresponding to the taint key.
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1Taint({
        required this.effect,
        required this.key,
        this.timeAdded,
        this.value,
    });

    factory IoK8SApiCoreV1Taint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TaintFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TaintToJson(this);
}

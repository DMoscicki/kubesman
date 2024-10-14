import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeconfigstatus_v1.g.dart';


///NodeConfigStatus describes the status of the config assigned by Node.Spec.ConfigSource.
@JsonSerializable()
class NodeconfigstatusV1 {
    
    ///Active reports the checkpointed config the node is actively using. Active will represent
    ///either the current version of the Assigned config, or the current LastKnownGood config,
    ///depending on whether attempting to use the Assigned config results in an error.
    @JsonKey(name: "active")
    IoK8SApiCoreV1NodeConfigSource? active;
    
    ///Assigned reports the checkpointed config the node will try to use. When
    ///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
    ///local disk, along with a record indicating intended config. The node refers to this
    ///record to choose its config checkpoint, and reports this record in Assigned. Assigned
    ///only updates in the status after the record has been checkpointed to disk. When the
    ///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
    ///and validating the checkpointed payload identified by Assigned.
    @JsonKey(name: "assigned")
    IoK8SApiCoreV1NodeConfigSource? assigned;
    
    ///Error describes any problems reconciling the Spec.ConfigSource to the Active config.
    ///Errors may occur, for example, attempting to checkpoint Spec.ConfigSource to the local
    ///Assigned record, attempting to checkpoint the payload associated with Spec.ConfigSource,
    ///attempting to load or validate the Assigned config, etc. Errors may occur at different
    ///points while syncing config. Earlier errors (e.g. download or checkpointing errors) will
    ///not result in a rollback to LastKnownGood, and may resolve across Kubelet retries. Later
    ///errors (e.g. loading or validating a checkpointed config) will result in a rollback to
    ///LastKnownGood. In the latter case, it is usually possible to resolve the error by fixing
    ///the config assigned in Spec.ConfigSource. You can find additional information for
    ///debugging by searching the error message in the Kubelet log. Error is a human-readable
    ///description of the error state; machines can check whether or not Error is empty, but
    ///should not rely on the stability of the Error text across Kubelet versions.
    @JsonKey(name: "error")
    String? error;
    
    ///LastKnownGood reports the checkpointed config the node will fall back to when it
    ///encounters an error attempting to use the Assigned config. The Assigned config becomes
    ///the LastKnownGood config when the node determines that the Assigned config is stable and
    ///correct. This is currently implemented as a 10-minute soak period starting when the local
    ///record of Assigned config is updated. If the Assigned config is Active at the end of this
    ///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
    ///local defaults), the LastKnownGood is also immediately reset to nil, because the local
    ///default config is always assumed good. You should not make assumptions about the node's
    ///method of determining config stability and correctness, as this may change or become
    ///configurable in the future.
    @JsonKey(name: "lastKnownGood")
    IoK8SApiCoreV1NodeConfigSource? lastKnownGood;

    NodeconfigstatusV1({
        this.active,
        this.assigned,
        this.error,
        this.lastKnownGood,
    });

    factory NodeconfigstatusV1.fromJson(Map<String, dynamic> json) => _$NodeconfigstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodeconfigstatusV1ToJson(this);
}


///Active reports the checkpointed config the node is actively using. Active will represent
///either the current version of the Assigned config, or the current LastKnownGood config,
///depending on whether attempting to use the Assigned config results in an error.
///
///NodeConfigSource specifies a source of node configuration. Exactly one subfield
///(excluding metadata) must be non-nil. This API is deprecated since 1.22
///
///Assigned reports the checkpointed config the node will try to use. When
///Node.Spec.ConfigSource is updated, the node checkpoints the associated config payload to
///local disk, along with a record indicating intended config. The node refers to this
///record to choose its config checkpoint, and reports this record in Assigned. Assigned
///only updates in the status after the record has been checkpointed to disk. When the
///Kubelet is restarted, it tries to make the Assigned config the Active config by loading
///and validating the checkpointed payload identified by Assigned.
///
///LastKnownGood reports the checkpointed config the node will fall back to when it
///encounters an error attempting to use the Assigned config. The Assigned config becomes
///the LastKnownGood config when the node determines that the Assigned config is stable and
///correct. This is currently implemented as a 10-minute soak period starting when the local
///record of Assigned config is updated. If the Assigned config is Active at the end of this
///period, it becomes the LastKnownGood. Note that if Spec.ConfigSource is reset to nil (use
///local defaults), the LastKnownGood is also immediately reset to nil, because the local
///default config is always assumed good. You should not make assumptions about the node's
///method of determining config stability and correctness, as this may change or become
///configurable in the future.
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

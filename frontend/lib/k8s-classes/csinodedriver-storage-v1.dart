import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'csinodedriver_storage_v1.g.dart';


///CSINodeDriver holds information about the specification of one CSI driver installed on a
///node
@JsonSerializable()
class CsinodedriverStorageV1 {
    
    ///allocatable represents the volume resources of a node that are available for scheduling.
    ///This field is beta.
    @JsonKey(name: "allocatable")
    IoK8SApiStorageV1VolumeNodeResources? allocatable;
    
    ///name represents the name of the CSI driver that this object refers to. This MUST be the
    ///same name returned by the CSI GetPluginName() call for that driver.
    @JsonKey(name: "name")
    String? name;
    
    ///nodeID of the node from the driver point of view. This field enables Kubernetes to
    ///communicate with storage systems that do not share the same nomenclature for nodes. For
    ///example, Kubernetes may refer to a given node as "node1", but the storage system may
    ///refer to the same node as "nodeA". When Kubernetes issues a command to the storage system
    ///to attach a volume to a specific node, it can use this field to refer to the node name
    ///using the ID that the storage system will understand, e.g. "nodeA" instead of "node1".
    ///This field is required.
    @JsonKey(name: "nodeID")
    String? nodeId;
    
    ///topologyKeys is the list of keys supported by the driver. When a driver is initialized on
    ///a cluster, it provides a set of topology keys that it understands (e.g.
    ///"company.com/zone", "company.com/region"). When a driver is initialized on a node, it
    ///provides the same topology keys along with values. Kubelet will expose these topology
    ///keys as labels on its own node object. When Kubernetes does topology aware provisioning,
    ///it can use this list to determine which labels it should retrieve from the node object
    ///and pass back to the driver. It is possible for different nodes to use different topology
    ///keys. This can be empty if driver does not support topology.
    @JsonKey(name: "topologyKeys")
    List<String?>? topologyKeys;

    CsinodedriverStorageV1({
        this.allocatable,
        required this.name,
        required this.nodeId,
        this.topologyKeys,
    });

    factory CsinodedriverStorageV1.fromJson(Map<String, dynamic> json) => _$CsinodedriverStorageV1FromJson(json);

    Map<String, dynamic> toJson() => _$CsinodedriverStorageV1ToJson(this);
}


///allocatable represents the volume resources of a node that are available for scheduling.
///This field is beta.
///
///VolumeNodeResources is a set of resource limits for scheduling of volumes.
@JsonSerializable()
class IoK8SApiStorageV1VolumeNodeResources {
    
    ///count indicates the maximum number of unique volumes managed by the CSI driver that can
    ///be used on a node. A volume that is both attached and mounted on a node is considered to
    ///be used once, not twice. The same rule applies for a unique volume that is shared among
    ///multiple pods on the same node. If this field is not specified, then the supported number
    ///of volumes on this node is unbounded.
    @JsonKey(name: "count")
    int? count;

    IoK8SApiStorageV1VolumeNodeResources({
        this.count,
    });

    factory IoK8SApiStorageV1VolumeNodeResources.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeNodeResourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeNodeResourcesToJson(this);
}

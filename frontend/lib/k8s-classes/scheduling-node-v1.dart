import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scheduling_node_v1.g.dart';


///Scheduling specifies the scheduling constraints for nodes supporting a RuntimeClass.
@JsonSerializable()
class SchedulingNodeV1 {
    
    ///nodeSelector lists labels that must be present on nodes that support this RuntimeClass.
    ///Pods using this RuntimeClass can only be scheduled to a node matched by this selector.
    ///The RuntimeClass nodeSelector is merged with a pod's existing nodeSelector. Any conflicts
    ///will cause the pod to be rejected in admission.
    @JsonKey(name: "nodeSelector")
    Map<String, String?>? nodeSelector;
    
    ///tolerations are appended (excluding duplicates) to pods running with this RuntimeClass
    ///during admission, effectively unioning the set of nodes tolerated by the pod and the
    ///RuntimeClass.
    @JsonKey(name: "tolerations")
    List<IoK8SApiCoreV1Toleration>? tolerations;

    SchedulingNodeV1({
        this.nodeSelector,
        this.tolerations,
    });

    factory SchedulingNodeV1.fromJson(Map<String, dynamic> json) => _$SchedulingNodeV1FromJson(json);

    Map<String, dynamic> toJson() => _$SchedulingNodeV1ToJson(this);
}


///The pod this Toleration is attached to tolerates any taint that matches the triple
///<key,value,effect> using the matching operator <operator>.
@JsonSerializable()
class IoK8SApiCoreV1Toleration {
    
    ///Effect indicates the taint effect to match. Empty means match all taint effects. When
    ///specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    @JsonKey(name: "effect")
    String? effect;
    
    ///Key is the taint key that the toleration applies to. Empty means match all taint keys. If
    ///the key is empty, operator must be Exists; this combination means to match all values and
    ///all keys.
    @JsonKey(name: "key")
    String? key;
    
    ///Operator represents a key's relationship to the value. Valid operators are Exists and
    ///Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can
    ///tolerate all taints of a particular category.
    @JsonKey(name: "operator")
    String? ioK8SApiCoreV1TolerationOperator;
    
    ///TolerationSeconds represents the period of time the toleration (which must be of effect
    ///NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not
    ///set, which means tolerate the taint forever (do not evict). Zero and negative values will
    ///be treated as 0 (evict immediately) by the system.
    @JsonKey(name: "tolerationSeconds")
    int? tolerationSeconds;
    
    ///Value is the taint value the toleration matches to. If the operator is Exists, the value
    ///should be empty, otherwise just a regular string.
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1Toleration({
        this.effect,
        this.key,
        this.ioK8SApiCoreV1TolerationOperator,
        this.tolerationSeconds,
        this.value,
    });

    factory IoK8SApiCoreV1Toleration.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TolerationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TolerationToJson(this);
}

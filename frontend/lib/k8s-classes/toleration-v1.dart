import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'toleration_v1.g.dart';


///The pod this Toleration is attached to tolerates any taint that matches the triple
///<key,value,effect> using the matching operator <operator>.
@JsonSerializable()
class TolerationV1 {
    
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
    String? tolerationV1Operator;
    
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

    TolerationV1({
        this.effect,
        this.key,
        this.tolerationV1Operator,
        this.tolerationSeconds,
        this.value,
    });

    factory TolerationV1.fromJson(Map<String, dynamic> json) => _$TolerationV1FromJson(json);

    Map<String, dynamic> toJson() => _$TolerationV1ToJson(this);
}

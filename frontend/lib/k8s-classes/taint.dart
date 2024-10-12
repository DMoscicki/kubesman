import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'taint.g.dart';


///The node this Taint is attached to has the "effect" on any pod that does not tolerate the
///Taint.
@JsonSerializable()
class Taint {
    
    ///Required. The effect of the taint on pods that do not tolerate the taint. Valid effects
    ///are NoSchedule, PreferNoSchedule and NoExecute.
    @JsonKey(name: "effect")
    String? effect;
    
    ///Required. The taint key to be applied to a node.
    @JsonKey(name: "key")
    String? key;
    
    ///TimeAdded represents the time at which the taint was added. It is only written for
    ///NoExecute taints.
    @JsonKey(name: "timeAdded")
    DateTime? timeAdded;
    
    ///The taint value corresponding to the taint key.
    @JsonKey(name: "value")
    String? value;

    Taint({
        required this.effect,
        required this.key,
        this.timeAdded,
        this.value,
    });

    factory Taint.fromJson(Map<String, dynamic> json) => _$TaintFromJson(json);

    Map<String, dynamic> toJson() => _$TaintToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podschedulingcontextspec.g.dart';


///PodSchedulingContextSpec describes where resources for the Pod are needed.
@JsonSerializable()
class Podschedulingcontextspec {
    
    ///PotentialNodes lists nodes where the Pod might be able to run.
    ///
    ///The size of this field is limited to 128. This is large enough for many clusters. Larger
    ///clusters may need more attempts to find a node that suits all pending resources. This may
    ///get increased in the future, but not reduced.
    @JsonKey(name: "potentialNodes")
    List<String?>? potentialNodes;
    
    ///SelectedNode is the node for which allocation of ResourceClaims that are referenced by
    ///the Pod and that use "WaitForFirstConsumer" allocation is to be attempted.
    @JsonKey(name: "selectedNode")
    String? selectedNode;

    Podschedulingcontextspec({
        this.potentialNodes,
        this.selectedNode,
    });

    factory Podschedulingcontextspec.fromJson(Map<String, dynamic> json) => _$PodschedulingcontextspecFromJson(json);

    Map<String, dynamic> toJson() => _$PodschedulingcontextspecToJson(this);
}

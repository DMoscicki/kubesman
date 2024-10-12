import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowdistinguishermethod_flowcontrol_v1_beta3.g.dart';


///FlowDistinguisherMethod specifies the method of a flow distinguisher.
@JsonSerializable()
class FlowdistinguishermethodFlowcontrolV1Beta3 {
    
    ///`type` is the type of flow distinguisher method The supported types are "ByUser" and
    ///"ByNamespace". Required.
    @JsonKey(name: "type")
    String? type;

    FlowdistinguishermethodFlowcontrolV1Beta3({
        required this.type,
    });

    factory FlowdistinguishermethodFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$FlowdistinguishermethodFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$FlowdistinguishermethodFlowcontrolV1Beta3ToJson(this);
}

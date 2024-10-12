import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowdistinguishermethod_flowcontrol_v1.g.dart';


///FlowDistinguisherMethod specifies the method of a flow distinguisher.
@JsonSerializable()
class FlowdistinguishermethodFlowcontrolV1 {
    
    ///`type` is the type of flow distinguisher method The supported types are "ByUser" and
    ///"ByNamespace". Required.
    @JsonKey(name: "type")
    String? type;

    FlowdistinguishermethodFlowcontrolV1({
        required this.type,
    });

    factory FlowdistinguishermethodFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$FlowdistinguishermethodFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$FlowdistinguishermethodFlowcontrolV1ToJson(this);
}

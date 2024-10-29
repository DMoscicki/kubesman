import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationreference_flowcontrol_v1.g.dart';


///PriorityLevelConfigurationReference contains information that points to the
///"request-priority" being used.
@JsonSerializable()
class PrioritylevelconfigurationreferenceFlowcontrolV1 {
    
    ///`name` is the name of the priority level configuration being referenced Required.
    @JsonKey(name: "name")
    String? name;

    PrioritylevelconfigurationreferenceFlowcontrolV1({
        required this.name,
    });

    factory PrioritylevelconfigurationreferenceFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationreferenceFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationreferenceFlowcontrolV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'usersubject_flowcontrol_v1_beta3.g.dart';


///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class UsersubjectFlowcontrolV1Beta3 {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String? name;

    UsersubjectFlowcontrolV1Beta3({
        required this.name,
    });

    factory UsersubjectFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$UsersubjectFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$UsersubjectFlowcontrolV1Beta3ToJson(this);
}

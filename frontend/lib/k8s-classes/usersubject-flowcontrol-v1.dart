import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'usersubject_flowcontrol_v1.g.dart';


///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class UsersubjectFlowcontrolV1 {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String? name;

    UsersubjectFlowcontrolV1({
        required this.name,
    });

    factory UsersubjectFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$UsersubjectFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$UsersubjectFlowcontrolV1ToJson(this);
}

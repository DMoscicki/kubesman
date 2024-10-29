import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'groupsubject_flowcontrol_v1_beta3.g.dart';


///GroupSubject holds detailed information for group-kind subject.
@JsonSerializable()
class GroupsubjectFlowcontrolV1Beta3 {
    
    ///name is the user group that matches, or "*" to match all user groups. See
    ///https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for
    ///some well-known group names. Required.
    @JsonKey(name: "name")
    String? name;

    GroupsubjectFlowcontrolV1Beta3({
        required this.name,
    });

    factory GroupsubjectFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$GroupsubjectFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$GroupsubjectFlowcontrolV1Beta3ToJson(this);
}

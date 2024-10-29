import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subject_flowcontrol_v1_beta3.g.dart';


///Subject matches the originator of a request, as identified by the request authentication
///system. There are three ways of matching an originator; by user, group, or service
///account.
@JsonSerializable()
class SubjectFlowcontrolV1Beta3 {
    
    ///`group` matches based on user group name.
    @JsonKey(name: "group")
    IoK8SApiFlowcontrolV1Beta3GroupSubject? group;
    
    ///`kind` indicates which one of the other fields is non-empty. Required
    @JsonKey(name: "kind")
    String? kind;
    
    ///`serviceAccount` matches ServiceAccounts.
    @JsonKey(name: "serviceAccount")
    IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject? serviceAccount;
    
    ///`user` matches based on username.
    @JsonKey(name: "user")
    IoK8SApiFlowcontrolV1Beta3UserSubject? user;

    SubjectFlowcontrolV1Beta3({
        this.group,
        required this.kind,
        this.serviceAccount,
        this.user,
    });

    factory SubjectFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$SubjectFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$SubjectFlowcontrolV1Beta3ToJson(this);
}


///`group` matches based on user group name.
///
///GroupSubject holds detailed information for group-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3GroupSubject {
    
    ///name is the user group that matches, or "*" to match all user groups. See
    ///https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for
    ///some well-known group names. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1Beta3GroupSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1Beta3GroupSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3GroupSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3GroupSubjectToJson(this);
}


///`serviceAccount` matches ServiceAccounts.
///
///ServiceAccountSubject holds detailed information for service-account-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject {
    
    ///`name` is the name of matching ServiceAccount objects, or "*" to match regardless of
    ///name. Required.
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of matching ServiceAccount objects. Required.
    @JsonKey(name: "namespace")
    String namespace;

    IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject({
        required this.name,
        required this.namespace,
    });

    factory IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectToJson(this);
}


///`user` matches based on username.
///
///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3UserSubject {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1Beta3UserSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1Beta3UserSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3UserSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3UserSubjectToJson(this);
}

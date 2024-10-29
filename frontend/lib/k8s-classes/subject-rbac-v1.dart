import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subject_rbac_v1.g.dart';


///Subject contains a reference to the object or user identities a role binding applies to.
///This can either hold a direct API object reference, or a value for non-objects such as
///user and group names.
@JsonSerializable()
class SubjectRbacV1 {
    
    ///APIGroup holds the API group of the referenced subject. Defaults to "" for ServiceAccount
    ///subjects. Defaults to "rbac.authorization.k8s.io" for User and Group subjects.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind of object being referenced. Values defined by this API group are "User", "Group",
    ///and "ServiceAccount". If the Authorizer does not recognized the kind value, the
    ///Authorizer should report an error.
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the object being referenced.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace of the referenced object.  If the object kind is non-namespace, such as "User"
    ///or "Group", and this value is not empty the Authorizer should report an error.
    @JsonKey(name: "namespace")
    String? namespace;

    SubjectRbacV1({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory SubjectRbacV1.fromJson(Map<String, dynamic> json) => _$SubjectRbacV1FromJson(json);

    Map<String, dynamic> toJson() => _$SubjectRbacV1ToJson(this);
}

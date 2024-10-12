import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ipaddressspec_networking_v1_alpha1.g.dart';


///IPAddressSpec describe the attributes in an IP Address.
@JsonSerializable()
class IpaddressspecNetworkingV1Alpha1 {
    
    ///ParentRef references the resource that an IPAddress is attached to. An IPAddress must
    ///reference a parent object.
    @JsonKey(name: "parentRef")
    IoK8SApiNetworkingV1Alpha1ParentReference parentRef;

    IpaddressspecNetworkingV1Alpha1({
        required this.parentRef,
    });

    factory IpaddressspecNetworkingV1Alpha1.fromJson(Map<String, dynamic> json) => _$IpaddressspecNetworkingV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$IpaddressspecNetworkingV1Alpha1ToJson(this);
}


///ParentRef references the resource that an IPAddress is attached to. An IPAddress must
///reference a parent object.
///
///ParentReference describes a reference to a parent object.
@JsonSerializable()
class IoK8SApiNetworkingV1Alpha1ParentReference {
    
    ///Group is the group of the object being referenced.
    @JsonKey(name: "group")
    String? group;
    
    ///Name is the name of the object being referenced.
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the namespace of the object being referenced.
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Resource is the resource of the object being referenced.
    @JsonKey(name: "resource")
    String resource;

    IoK8SApiNetworkingV1Alpha1ParentReference({
        this.group,
        required this.name,
        this.namespace,
        required this.resource,
    });

    factory IoK8SApiNetworkingV1Alpha1ParentReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1Alpha1ParentReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1Alpha1ParentReferenceToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ipblock_networking_v1.g.dart';


///IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is
///allowed to the pods matched by a NetworkPolicySpec's podSelector. The except entry
///describes CIDRs that should not be included within this rule.
@JsonSerializable()
class IpblockNetworkingV1 {
    
    ///cidr is a string representing the IPBlock Valid examples are "192.168.1.0/24" or
    ///"2001:db8::/64"
    @JsonKey(name: "cidr")
    String? cidr;
    
    ///except is a slice of CIDRs that should not be included within an IPBlock Valid examples
    ///are "192.168.1.0/24" or "2001:db8::/64" Except values will be rejected if they are
    ///outside the cidr range
    @JsonKey(name: "except")
    List<String?>? except;

    IpblockNetworkingV1({
        required this.cidr,
        this.except,
    });

    factory IpblockNetworkingV1.fromJson(Map<String, dynamic> json) => _$IpblockNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IpblockNetworkingV1ToJson(this);
}

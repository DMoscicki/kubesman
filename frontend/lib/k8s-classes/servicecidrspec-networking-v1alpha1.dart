import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicecidrspec_networking_v1_alpha1.g.dart';


///ServiceCIDRSpec define the CIDRs the user wants to use for allocating ClusterIPs for
///Services.
@JsonSerializable()
class ServicecidrspecNetworkingV1Alpha1 {
    
    ///CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64")
    ///from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP
    ///family. This field is immutable.
    @JsonKey(name: "cidrs")
    List<String?>? cidrs;

    ServicecidrspecNetworkingV1Alpha1({
        this.cidrs,
    });

    factory ServicecidrspecNetworkingV1Alpha1.fromJson(Map<String, dynamic> json) => _$ServicecidrspecNetworkingV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicecidrspecNetworkingV1Alpha1ToJson(this);
}

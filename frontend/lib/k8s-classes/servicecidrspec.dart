import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicecidrspec.g.dart';


///ServiceCIDRSpec define the CIDRs the user wants to use for allocating ClusterIPs for
///Services.
@JsonSerializable()
class Servicecidrspec {
    
    ///CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64")
    ///from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP
    ///family. This field is immutable.
    @JsonKey(name: "cidrs")
    List<String?>? cidrs;

    Servicecidrspec({
        this.cidrs,
    });

    factory Servicecidrspec.fromJson(Map<String, dynamic> json) => _$ServicecidrspecFromJson(json);

    Map<String, dynamic> toJson() => _$ServicecidrspecToJson(this);
}

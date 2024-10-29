import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'leasespec.g.dart';


///LeaseSpec is a specification of a Lease.
@JsonSerializable()
class Leasespec {
    
    ///acquireTime is a time when the current lease was acquired.
    @JsonKey(name: "acquireTime")
    DateTime? acquireTime;
    
    ///holderIdentity contains the identity of the holder of a current lease.
    @JsonKey(name: "holderIdentity")
    String? holderIdentity;
    
    ///leaseDurationSeconds is a duration that candidates for a lease need to wait to force
    ///acquire it. This is measure against time of last observed renewTime.
    @JsonKey(name: "leaseDurationSeconds")
    int? leaseDurationSeconds;
    
    ///leaseTransitions is the number of transitions of a lease between holders.
    @JsonKey(name: "leaseTransitions")
    int? leaseTransitions;
    
    ///renewTime is a time when the current holder of a lease has last updated the lease.
    @JsonKey(name: "renewTime")
    DateTime? renewTime;

    Leasespec({
        this.acquireTime,
        this.holderIdentity,
        this.leaseDurationSeconds,
        this.leaseTransitions,
        this.renewTime,
    });

    factory Leasespec.fromJson(Map<String, dynamic> json) => _$LeasespecFromJson(json);

    Map<String, dynamic> toJson() => _$LeasespecToJson(this);
}

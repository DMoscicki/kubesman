import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'leasespec_coordination_v1.g.dart';


///LeaseSpec is a specification of a Lease.
@JsonSerializable()
class LeasespecCoordinationV1 {
    
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

    LeasespecCoordinationV1({
        this.acquireTime,
        this.holderIdentity,
        this.leaseDurationSeconds,
        this.leaseTransitions,
        this.renewTime,
    });

    factory LeasespecCoordinationV1.fromJson(Map<String, dynamic> json) => _$LeasespecCoordinationV1FromJson(json);

    Map<String, dynamic> toJson() => _$LeasespecCoordinationV1ToJson(this);
}

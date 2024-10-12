import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationspec.g.dart';


///PriorityLevelConfigurationSpec specifies the configuration of a priority level.
@JsonSerializable()
class Prioritylevelconfigurationspec {
    
    ///`exempt` specifies how requests are handled for an exempt priority level. This field MUST
    ///be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`.
    ///If empty and `type` is `"Exempt"` then the default values for
    ///`ExemptPriorityLevelConfiguration` apply.
    @JsonKey(name: "exempt")
    IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration? exempt;
    
    ///`limited` specifies how requests are handled for a Limited priority level. This field
    ///must be non-empty if and only if `type` is `"Limited"`.
    @JsonKey(name: "limited")
    IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration? limited;
    
    ///`type` indicates whether this priority level is subject to limitation on request
    ///execution.  A value of `"Exempt"` means that requests of this priority level are not
    ///subject to a limit (and thus are never queued) and do not detract from the capacity made
    ///available to other priority levels.  A value of `"Limited"` means that (a) requests of
    ///this priority level _are_ subject to limits and (b) some of the server's limited capacity
    ///is made available exclusively to this priority level. Required.
    @JsonKey(name: "type")
    String? type;

    Prioritylevelconfigurationspec({
        this.exempt,
        this.limited,
        required this.type,
    });

    factory Prioritylevelconfigurationspec.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationspecFromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationspecToJson(this);
}


///`exempt` specifies how requests are handled for an exempt priority level. This field MUST
///be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`.
///If empty and `type` is `"Exempt"` then the default values for
///`ExemptPriorityLevelConfiguration` apply.
///
///ExemptPriorityLevelConfiguration describes the configurable aspects of the handling of
///exempt requests. In the mandatory exempt configuration object the values in the fields
///here can be modified by authorized users, unlike the rest of the `spec`.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration {
    
    ///`lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed
    ///by other priority levels.  This value of this field must be between 0 and 100, inclusive,
    ///and it defaults to 0. The number of seats that other levels can borrow from this level,
    ///known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
    ///
    ///LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
    @JsonKey(name: "lendablePercent")
    int? lendablePercent;
    
    ///`nominalConcurrencyShares` (NCS) contributes to the computation of the
    ///NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats
    ///nominally reserved for this priority level. This DOES NOT limit the dispatching from this
    ///priority level but affects the other priority levels through the borrowing mechanism. The
    ///server's concurrency limit (ServerCL) is divided among all the priority levels in
    ///proportion to their NCS values:
    ///
    ///NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k]
    ///NCS(k)
    ///
    ///Bigger numbers mean a larger nominal concurrency limit, at the expense of every other
    ///priority level. This field has a default value of zero.
    @JsonKey(name: "nominalConcurrencyShares")
    int? nominalConcurrencyShares;

    IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration({
        this.lendablePercent,
        this.nominalConcurrencyShares,
    });

    factory IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationToJson(this);
}


///`limited` specifies how requests are handled for a Limited priority level. This field
///must be non-empty if and only if `type` is `"Limited"`.
///
///LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to
///limits. It addresses two issues:
///- How are requests for this priority level limited?
///- What should be done with requests that exceed the limit?
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration {
    
    ///`borrowingLimitPercent`, if present, configures a limit on how many seats this priority
    ///level can borrow from other priority levels. The limit is known as this level's
    ///BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that
    ///this level may borrow at any one time. This field holds the ratio of that limit to the
    ///level's nominal concurrency limit. When this field is non-nil, it must hold a
    ///non-negative integer and the limit is calculated as follows.
    ///
    ///BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )
    ///
    ///The value of this field can be more than 100, implying that this priority level can
    ///borrow a number of seats that is greater than its own nominal concurrency limit
    ///(NominalCL). When this field is left `nil`, the limit is effectively infinite.
    @JsonKey(name: "borrowingLimitPercent")
    int? borrowingLimitPercent;
    
    ///`lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed
    ///by other priority levels. The value of this field must be between 0 and 100, inclusive,
    ///and it defaults to 0. The number of seats that other levels can borrow from this level,
    ///known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
    ///
    ///LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
    @JsonKey(name: "lendablePercent")
    int? lendablePercent;
    
    ///`limitResponse` indicates what to do with requests that can not be executed right now
    @JsonKey(name: "limitResponse")
    IoK8SApiFlowcontrolV1Beta3LimitResponse? limitResponse;
    
    ///`nominalConcurrencyShares` (NCS) contributes to the computation of the
    ///NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats
    ///available at this priority level. This is used both for requests dispatched from this
    ///priority level as well as requests dispatched from other priority levels borrowing seats
    ///from this level. The server's concurrency limit (ServerCL) is divided among the Limited
    ///priority levels in proportion to their NCS values:
    ///
    ///NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k]
    ///NCS(k)
    ///
    ///Bigger numbers mean a larger nominal concurrency limit, at the expense of every other
    ///priority level. This field has a default value of 30.
    @JsonKey(name: "nominalConcurrencyShares")
    int? nominalConcurrencyShares;

    IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration({
        this.borrowingLimitPercent,
        this.lendablePercent,
        this.limitResponse,
        this.nominalConcurrencyShares,
    });

    factory IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationToJson(this);
}


///`limitResponse` indicates what to do with requests that can not be executed right now
///
///LimitResponse defines how to handle requests that can not be executed right now.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3LimitResponse {
    
    ///`queuing` holds the configuration parameters for queuing. This field may be non-empty
    ///only if `type` is `"Queue"`.
    @JsonKey(name: "queuing")
    IoK8SApiFlowcontrolV1Beta3QueuingConfiguration? queuing;
    
    ///`type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon
    ///arrival are held in a queue until they can be executed or a queuing limit is reached.
    ///"Reject" means that requests that can not be executed upon arrival are rejected. Required.
    @JsonKey(name: "type")
    String type;

    IoK8SApiFlowcontrolV1Beta3LimitResponse({
        this.queuing,
        required this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3LimitResponse.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3LimitResponseFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3LimitResponseToJson(this);
}


///`queuing` holds the configuration parameters for queuing. This field may be non-empty
///only if `type` is `"Queue"`.
///
///QueuingConfiguration holds the configuration parameters for queuing
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3QueuingConfiguration {
    
    ///`handSize` is a small positive number that configures the shuffle sharding of requests
    ///into queues.  When enqueuing a request at this priority level the request's flow
    ///identifier (a string pair) is hashed and the hash value is used to shuffle the list of
    ///queues and deal a hand of the size specified here.  The request is put into one of the
    ///shortest queues in that hand. `handSize` must be no larger than `queues`, and should be
    ///significantly smaller (so that a few heavy flows do not saturate most of the queues).
    ///See the user-facing documentation for more extensive guidance on setting this field.
    ///This field has a default value of 8.
    @JsonKey(name: "handSize")
    int? handSize;
    
    ///`queueLengthLimit` is the maximum number of requests allowed to be waiting in a given
    ///queue of this priority level at a time; excess requests are rejected.  This value must be
    ///positive.  If not specified, it will be defaulted to 50.
    @JsonKey(name: "queueLengthLimit")
    int? queueLengthLimit;
    
    ///`queues` is the number of queues for this priority level. The queues exist independently
    ///at each apiserver. The value must be positive.  Setting it to 1 effectively precludes
    ///shufflesharding and thus makes the distinguisher method of associated flow schemas
    ///irrelevant.  This field has a default value of 64.
    @JsonKey(name: "queues")
    int? queues;

    IoK8SApiFlowcontrolV1Beta3QueuingConfiguration({
        this.handSize,
        this.queueLengthLimit,
        this.queues,
    });

    factory IoK8SApiFlowcontrolV1Beta3QueuingConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationToJson(this);
}

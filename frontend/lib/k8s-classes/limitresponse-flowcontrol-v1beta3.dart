import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'limitresponse_flowcontrol_v1_beta3.g.dart';


///LimitResponse defines how to handle requests that can not be executed right now.
@JsonSerializable()
class LimitresponseFlowcontrolV1Beta3 {
    
    ///`queuing` holds the configuration parameters for queuing. This field may be non-empty
    ///only if `type` is `"Queue"`.
    @JsonKey(name: "queuing")
    IoK8SApiFlowcontrolV1Beta3QueuingConfiguration? queuing;
    
    ///`type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon
    ///arrival are held in a queue until they can be executed or a queuing limit is reached.
    ///"Reject" means that requests that can not be executed upon arrival are rejected. Required.
    @JsonKey(name: "type")
    String? type;

    LimitresponseFlowcontrolV1Beta3({
        this.queuing,
        required this.type,
    });

    factory LimitresponseFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$LimitresponseFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$LimitresponseFlowcontrolV1Beta3ToJson(this);
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

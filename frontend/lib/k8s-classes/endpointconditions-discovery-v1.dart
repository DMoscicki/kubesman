import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointconditions_discovery_v1.g.dart';


///EndpointConditions represents the current condition of an endpoint.
@JsonSerializable()
class EndpointconditionsDiscoveryV1 {
    
    ///ready indicates that this endpoint is prepared to receive traffic, according to whatever
    ///system is managing the endpoint. A nil value indicates an unknown state. In most cases
    ///consumers should interpret this unknown state as ready. For compatibility reasons, ready
    ///should never be "true" for terminating endpoints, except when the normal readiness
    ///behavior is being explicitly overridden, for example when the associated Service has set
    ///the publishNotReadyAddresses flag.
    @JsonKey(name: "ready")
    bool? ready;
    
    ///serving is identical to ready except that it is set regardless of the terminating state
    ///of endpoints. This condition should be set to true for a ready endpoint that is
    ///terminating. If nil, consumers should defer to the ready condition.
    @JsonKey(name: "serving")
    bool? serving;
    
    ///terminating indicates that this endpoint is terminating. A nil value indicates an unknown
    ///state. Consumers should interpret this unknown state to mean that the endpoint is not
    ///terminating.
    @JsonKey(name: "terminating")
    bool? terminating;

    EndpointconditionsDiscoveryV1({
        this.ready,
        this.serving,
        this.terminating,
    });

    factory EndpointconditionsDiscoveryV1.fromJson(Map<String, dynamic> json) => _$EndpointconditionsDiscoveryV1FromJson(json);

    Map<String, dynamic> toJson() => _$EndpointconditionsDiscoveryV1ToJson(this);
}

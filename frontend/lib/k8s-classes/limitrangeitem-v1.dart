import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'limitrangeitem_v1.g.dart';


///LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
@JsonSerializable()
class LimitrangeitemV1 {
    
    ///Default resource requirement limit value by resource name if resource limit is omitted.
    @JsonKey(name: "default")
    Map<String, dynamic>? limitrangeitemV1Default;
    
    ///DefaultRequest is the default resource requirement request value by resource name if
    ///resource request is omitted.
    @JsonKey(name: "defaultRequest")
    Map<String, dynamic>? defaultRequest;
    
    ///Max usage constraints on this kind by resource name.
    @JsonKey(name: "max")
    Map<String, dynamic>? max;
    
    ///MaxLimitRequestRatio if specified, the named resource must have a request and limit that
    ///are both non-zero where limit divided by request is less than or equal to the enumerated
    ///value; this represents the max burst for the named resource.
    @JsonKey(name: "maxLimitRequestRatio")
    Map<String, dynamic>? maxLimitRequestRatio;
    
    ///Min usage constraints on this kind by resource name.
    @JsonKey(name: "min")
    Map<String, dynamic>? min;
    
    ///Type of resource that this limit applies to.
    @JsonKey(name: "type")
    String? type;

    LimitrangeitemV1({
        this.limitrangeitemV1Default,
        this.defaultRequest,
        this.max,
        this.maxLimitRequestRatio,
        this.min,
        required this.type,
    });

    factory LimitrangeitemV1.fromJson(Map<String, dynamic> json) => _$LimitrangeitemV1FromJson(json);

    Map<String, dynamic> toJson() => _$LimitrangeitemV1ToJson(this);
}

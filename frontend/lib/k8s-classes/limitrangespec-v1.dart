import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'limitrangespec_v1.g.dart';


///LimitRangeSpec defines a min/max usage limit for resources that match on kind.
@JsonSerializable()
class LimitrangespecV1 {
    
    ///Limits is the list of LimitRangeItem objects that are enforced.
    @JsonKey(name: "limits")
    List<IoK8SApiCoreV1LimitRangeItem>? limits;

    LimitrangespecV1({
        required this.limits,
    });

    factory LimitrangespecV1.fromJson(Map<String, dynamic> json) => _$LimitrangespecV1FromJson(json);

    Map<String, dynamic> toJson() => _$LimitrangespecV1ToJson(this);
}


///LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
@JsonSerializable()
class IoK8SApiCoreV1LimitRangeItem {
    
    ///Default resource requirement limit value by resource name if resource limit is omitted.
    @JsonKey(name: "default")
    Map<String, dynamic>? ioK8SApiCoreV1LimitRangeItemDefault;
    
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
    String type;

    IoK8SApiCoreV1LimitRangeItem({
        this.ioK8SApiCoreV1LimitRangeItemDefault,
        this.defaultRequest,
        this.max,
        this.maxLimitRequestRatio,
        this.min,
        required this.type,
    });

    factory IoK8SApiCoreV1LimitRangeItem.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LimitRangeItemFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LimitRangeItemToJson(this);
}

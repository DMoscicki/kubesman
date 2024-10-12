import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podip_v1.g.dart';


///PodIP represents a single IP address allocated to the pod.
@JsonSerializable()
class PodipV1 {
    
    ///IP is the IP address assigned to the pod
    @JsonKey(name: "ip")
    String? ip;

    PodipV1({
        this.ip,
    });

    factory PodipV1.fromJson(Map<String, dynamic> json) => _$PodipV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodipV1ToJson(this);
}

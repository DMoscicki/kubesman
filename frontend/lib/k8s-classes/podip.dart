import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podip.g.dart';


///PodIP represents a single IP address allocated to the pod.
@JsonSerializable()
class Podip {
    
    ///IP is the IP address assigned to the pod
    @JsonKey(name: "ip")
    String? ip;

    Podip({
        this.ip,
    });

    factory Podip.fromJson(Map<String, dynamic> json) => _$PodipFromJson(json);

    Map<String, dynamic> toJson() => _$PodipToJson(this);
}

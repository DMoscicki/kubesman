import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicebackendport_networking_v1.g.dart';


///ServiceBackendPort is the service port being referenced.
@JsonSerializable()
class ServicebackendportNetworkingV1 {
    
    ///name is the name of the port on the Service. This is a mutually exclusive setting with
    ///"Number".
    @JsonKey(name: "name")
    String? name;
    
    ///number is the numerical port number (e.g. 80) on the Service. This is a mutually
    ///exclusive setting with "Name".
    @JsonKey(name: "number")
    int? number;

    ServicebackendportNetworkingV1({
        this.name,
        this.number,
    });

    factory ServicebackendportNetworkingV1.fromJson(Map<String, dynamic> json) => _$ServicebackendportNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServicebackendportNetworkingV1ToJson(this);
}

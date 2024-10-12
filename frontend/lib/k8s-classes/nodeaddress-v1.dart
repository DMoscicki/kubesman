import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeaddress_v1.g.dart';


///NodeAddress contains information for the node's address.
@JsonSerializable()
class NodeaddressV1 {
    
    ///The node address.
    @JsonKey(name: "address")
    String? address;
    
    ///Node address type, one of Hostname, ExternalIP or InternalIP.
    @JsonKey(name: "type")
    String? type;

    NodeaddressV1({
        required this.address,
        required this.type,
    });

    factory NodeaddressV1.fromJson(Map<String, dynamic> json) => _$NodeaddressV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodeaddressV1ToJson(this);
}

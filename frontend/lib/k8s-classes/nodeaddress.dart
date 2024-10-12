import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodeaddress.g.dart';


///NodeAddress contains information for the node's address.
@JsonSerializable()
class Nodeaddress {
    
    ///The node address.
    @JsonKey(name: "address")
    String? address;
    
    ///Node address type, one of Hostname, ExternalIP or InternalIP.
    @JsonKey(name: "type")
    String? type;

    Nodeaddress({
        required this.address,
        required this.type,
    });

    factory Nodeaddress.fromJson(Map<String, dynamic> json) => _$NodeaddressFromJson(json);

    Map<String, dynamic> toJson() => _$NodeaddressToJson(this);
}

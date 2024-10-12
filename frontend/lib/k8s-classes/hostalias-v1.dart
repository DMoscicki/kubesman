import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostalias_v1.g.dart';


///HostAlias holds the mapping between IP and hostnames that will be injected as an entry in
///the pod's hosts file.
@JsonSerializable()
class HostaliasV1 {
    
    ///Hostnames for the above IP address.
    @JsonKey(name: "hostnames")
    List<String?>? hostnames;
    
    ///IP address of the host file entry.
    @JsonKey(name: "ip")
    String? ip;

    HostaliasV1({
        this.hostnames,
        required this.ip,
    });

    factory HostaliasV1.fromJson(Map<String, dynamic> json) => _$HostaliasV1FromJson(json);

    Map<String, dynamic> toJson() => _$HostaliasV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostalias.g.dart';


///HostAlias holds the mapping between IP and hostnames that will be injected as an entry in
///the pod's hosts file.
@JsonSerializable()
class Hostalias {
    
    ///Hostnames for the above IP address.
    @JsonKey(name: "hostnames")
    List<String?>? hostnames;
    
    ///IP address of the host file entry.
    @JsonKey(name: "ip")
    String? ip;

    Hostalias({
        this.hostnames,
        required this.ip,
    });

    factory Hostalias.fromJson(Map<String, dynamic> json) => _$HostaliasFromJson(json);

    Map<String, dynamic> toJson() => _$HostaliasToJson(this);
}

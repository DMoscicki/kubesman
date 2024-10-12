import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'serveraddressbyclientcidr_meta_v1.g.dart';


///ServerAddressByClientCIDR helps the client to determine the server address that they
///should use, depending on the clientCIDR that they match.
@JsonSerializable()
class ServeraddressbyclientcidrMetaV1 {
    
    ///The CIDR with which clients can match their IP to figure out the server address that they
    ///should use.
    @JsonKey(name: "clientCIDR")
    String? clientCidr;
    
    ///Address of this server, suitable for a client that matches the above CIDR. This can be a
    ///hostname, hostname:port, IP or IP:port.
    @JsonKey(name: "serverAddress")
    String? serverAddress;

    ServeraddressbyclientcidrMetaV1({
        required this.clientCidr,
        required this.serverAddress,
    });

    factory ServeraddressbyclientcidrMetaV1.fromJson(Map<String, dynamic> json) => _$ServeraddressbyclientcidrMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$ServeraddressbyclientcidrMetaV1ToJson(this);
}

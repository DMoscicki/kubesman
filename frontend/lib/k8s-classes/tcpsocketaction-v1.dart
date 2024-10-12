import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tcpsocketaction_v1.g.dart';


///TCPSocketAction describes an action based on opening a socket
@JsonSerializable()
class TcpsocketactionV1 {
    
    ///Optional: Host name to connect to, defaults to the pod IP.
    @JsonKey(name: "host")
    String? host;
    
    ///Number or name of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;

    TcpsocketactionV1({
        this.host,
        required this.port,
    });

    factory TcpsocketactionV1.fromJson(Map<String, dynamic> json) => _$TcpsocketactionV1FromJson(json);

    Map<String, dynamic> toJson() => _$TcpsocketactionV1ToJson(this);
}

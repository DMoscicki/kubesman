import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tcpsocketaction.g.dart';


///TCPSocketAction describes an action based on opening a socket
@JsonSerializable()
class Tcpsocketaction {
    
    ///Optional: Host name to connect to, defaults to the pod IP.
    @JsonKey(name: "host")
    String? host;
    
    ///Number or name of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;

    Tcpsocketaction({
        this.host,
        required this.port,
    });

    factory Tcpsocketaction.fromJson(Map<String, dynamic> json) => _$TcpsocketactionFromJson(json);

    Map<String, dynamic> toJson() => _$TcpsocketactionToJson(this);
}

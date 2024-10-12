import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'httpgetaction_v1.g.dart';


///HTTPGetAction describes an action based on HTTP Get requests.
@JsonSerializable()
class HttpgetactionV1 {
    
    ///Host name to connect to, defaults to the pod IP. You probably want to set "Host" in
    ///httpHeaders instead.
    @JsonKey(name: "host")
    String? host;
    
    ///Custom headers to set in the request. HTTP allows repeated headers.
    @JsonKey(name: "httpHeaders")
    List<IoK8SApiCoreV1HttpHeader>? httpHeaders;
    
    ///Path to access on the HTTP server.
    @JsonKey(name: "path")
    String? path;
    
    ///Name or number of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;
    
    ///Scheme to use for connecting to the host. Defaults to HTTP.
    @JsonKey(name: "scheme")
    String? scheme;

    HttpgetactionV1({
        this.host,
        this.httpHeaders,
        this.path,
        required this.port,
        this.scheme,
    });

    factory HttpgetactionV1.fromJson(Map<String, dynamic> json) => _$HttpgetactionV1FromJson(json);

    Map<String, dynamic> toJson() => _$HttpgetactionV1ToJson(this);
}


///HTTPHeader describes a custom header to be used in HTTP probes
@JsonSerializable()
class IoK8SApiCoreV1HttpHeader {
    
    ///The header field name. This will be canonicalized upon output, so case-variant names will
    ///be understood as the same header.
    @JsonKey(name: "name")
    String name;
    
    ///The header field value
    @JsonKey(name: "value")
    String value;

    IoK8SApiCoreV1HttpHeader({
        required this.name,
        required this.value,
    });

    factory IoK8SApiCoreV1HttpHeader.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HttpHeaderFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HttpHeaderToJson(this);
}

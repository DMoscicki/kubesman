import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiversions.g.dart';


///APIVersions lists the versions that are available, to allow clients to discover the API
///at /api, which is the root path of the legacy v1 API.
@JsonSerializable()
class Apiversions {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///a map of client CIDR to server address that is serving this group. This is to help
    ///clients reach servers in the most network-efficient way possible. Clients can use the
    ///appropriate server address as per the CIDR that they match. In case of multiple matches,
    ///clients should use the longest matching CIDR. The server returns only those CIDRs that it
    ///thinks that the client can match. For example: the master will return an internal IP CIDR
    ///only, if the client reaches the server using an internal IP. Server looks at
    ///X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get
    ///the client IP.
    @JsonKey(name: "serverAddressByClientCIDRs")
    List<IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr>? serverAddressByClientCidRs;
    
    ///versions are the api versions that are available.
    @JsonKey(name: "versions")
    List<String?>? versions;

    Apiversions({
        this.apiVersion,
        this.kind,
        required this.serverAddressByClientCidRs,
        required this.versions,
    });

    factory Apiversions.fromJson(Map<String, dynamic> json) => _$ApiversionsFromJson(json);

    Map<String, dynamic> toJson() => _$ApiversionsToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("APIVersions")
    API_VERSIONS
}

final kindValues = EnumValues({
    "APIVersions": Kind.API_VERSIONS
});


///ServerAddressByClientCIDR helps the client to determine the server address that they
///should use, depending on the clientCIDR that they match.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr {
    
    ///The CIDR with which clients can match their IP to figure out the server address that they
    ///should use.
    @JsonKey(name: "clientCIDR")
    String clientCidr;
    
    ///Address of this server, suitable for a client that matches the above CIDR. This can be a
    ///hostname, hostname:port, IP or IP:port.
    @JsonKey(name: "serverAddress")
    String serverAddress;

    IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr({
        required this.clientCidr,
        required this.serverAddress,
    });

    factory IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidrFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidrToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}

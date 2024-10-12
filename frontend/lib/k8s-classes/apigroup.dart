import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apigroup.g.dart';


///APIGroup contains the name, the supported versions, and the preferred version of a group.
@JsonSerializable()
class Apigroup {
    
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
    
    ///name is the name of the group.
    @JsonKey(name: "name")
    String? name;
    
    ///preferredVersion is the version preferred by the API server, which probably is the
    ///storage version.
    @JsonKey(name: "preferredVersion")
    IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery? preferredVersion;
    
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
    
    ///versions are the versions supported in this group.
    @JsonKey(name: "versions")
    List<IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery>? versions;

    Apigroup({
        this.apiVersion,
        this.kind,
        required this.name,
        this.preferredVersion,
        this.serverAddressByClientCidRs,
        required this.versions,
    });

    factory Apigroup.fromJson(Map<String, dynamic> json) => _$ApigroupFromJson(json);

    Map<String, dynamic> toJson() => _$ApigroupToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("APIGroup")
    API_GROUP
}

final kindValues = EnumValues({
    "APIGroup": Kind.API_GROUP
});


///preferredVersion is the version preferred by the API server, which probably is the
///storage version.
///
///GroupVersion contains the "group/version" and "version" string of a version. It is made a
///struct to keep extensibility.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery {
    
    ///groupVersion specifies the API group and version in the form "group/version"
    @JsonKey(name: "groupVersion")
    String groupVersion;
    
    ///version specifies the version in the form of "version". This is to save the clients the
    ///trouble of splitting the GroupVersion.
    @JsonKey(name: "version")
    String version;

    IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery({
        required this.groupVersion,
        required this.version,
    });

    factory IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscoveryFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscoveryToJson(this);
}


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

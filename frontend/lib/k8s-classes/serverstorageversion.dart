import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'serverstorageversion.g.dart';


///An API server instance reports the version it can decode and the version it encodes
///objects to when persisting objects in the backend.
@JsonSerializable()
class Serverstorageversion {
    
    ///The ID of the reporting API server.
    @JsonKey(name: "apiServerID")
    String? apiServerId;
    
    ///The API server can decode objects encoded in these versions. The encodingVersion must be
    ///included in the decodableVersions.
    @JsonKey(name: "decodableVersions")
    List<String?>? decodableVersions;
    
    ///The API server encodes the object to this version when persisting it in the backend
    ///(e.g., etcd).
    @JsonKey(name: "encodingVersion")
    String? encodingVersion;
    
    ///The API server can serve these versions. DecodableVersions must include all
    ///ServedVersions.
    @JsonKey(name: "servedVersions")
    List<String?>? servedVersions;

    Serverstorageversion({
        this.apiServerId,
        this.decodableVersions,
        this.encodingVersion,
        this.servedVersions,
    });

    factory Serverstorageversion.fromJson(Map<String, dynamic> json) => _$ServerstorageversionFromJson(json);

    Map<String, dynamic> toJson() => _$ServerstorageversionToJson(this);
}

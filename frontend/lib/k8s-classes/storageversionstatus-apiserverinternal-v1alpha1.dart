import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageversionstatus_apiserverinternal_v1_alpha1.g.dart';


///API server instances report the versions they can decode and the version they encode
///objects to when persisting objects in the backend.
@JsonSerializable()
class StorageversionstatusApiserverinternalV1Alpha1 {
    
    ///If all API server instances agree on the same encoding storage version, then this field
    ///is set to that version. Otherwise this field is left empty. API servers should finish
    ///updating its storageVersionStatus entry before serving write operations, so that this
    ///field will be in sync with the reality.
    @JsonKey(name: "commonEncodingVersion")
    String? commonEncodingVersion;
    
    ///The latest available observations of the storageVersion's state.
    @JsonKey(name: "conditions")
    List<IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition>? conditions;
    
    ///The reported versions per API server instance.
    @JsonKey(name: "storageVersions")
    List<IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion>? storageVersions;

    StorageversionstatusApiserverinternalV1Alpha1({
        this.commonEncodingVersion,
        this.conditions,
        this.storageVersions,
    });

    factory StorageversionstatusApiserverinternalV1Alpha1.fromJson(Map<String, dynamic> json) => _$StorageversionstatusApiserverinternalV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$StorageversionstatusApiserverinternalV1Alpha1ToJson(this);
}


///Describes the state of the storageVersion at a certain point.
@JsonSerializable()
class IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String message;
    
    ///If set, this represents the .metadata.generation that the condition was set based upon.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///Type of the condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition({
        this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionToJson(this);
}


///An API server instance reports the version it can decode and the version it encodes
///objects to when persisting objects in the backend.
@JsonSerializable()
class IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion {
    
    ///The ID of the reporting API server.
    @JsonKey(name: "apiServerID")
    String? apiServerId;
    
    ///The API server can decode objects encoded in these versions. The encodingVersion must be
    ///included in the decodableVersions.
    @JsonKey(name: "decodableVersions")
    List<String>? decodableVersions;
    
    ///The API server encodes the object to this version when persisting it in the backend
    ///(e.g., etcd).
    @JsonKey(name: "encodingVersion")
    String? encodingVersion;
    
    ///The API server can serve these versions. DecodableVersions must include all
    ///ServedVersions.
    @JsonKey(name: "servedVersions")
    List<String>? servedVersions;

    IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion({
        this.apiServerId,
        this.decodableVersions,
        this.encodingVersion,
        this.servedVersions,
    });

    factory IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion.fromJson(Map<String, dynamic> json) => _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'vspherevirtualdiskvolumesource_v1.g.dart';


///Represents a vSphere volume resource.
@JsonSerializable()
class VspherevirtualdiskvolumesourceV1 {
    
    ///fsType is filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with
    ///the StoragePolicyName.
    @JsonKey(name: "storagePolicyID")
    String? storagePolicyId;
    
    ///storagePolicyName is the storage Policy Based Management (SPBM) profile name.
    @JsonKey(name: "storagePolicyName")
    String? storagePolicyName;
    
    ///volumePath is the path that identifies vSphere volume vmdk
    @JsonKey(name: "volumePath")
    String? volumePath;

    VspherevirtualdiskvolumesourceV1({
        this.fsType,
        this.storagePolicyId,
        this.storagePolicyName,
        required this.volumePath,
    });

    factory VspherevirtualdiskvolumesourceV1.fromJson(Map<String, dynamic> json) => _$VspherevirtualdiskvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$VspherevirtualdiskvolumesourceV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'vspherevirtualdiskvolumesource.g.dart';


///Represents a vSphere volume resource.
@JsonSerializable()
class Vspherevirtualdiskvolumesource {
    
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

    Vspherevirtualdiskvolumesource({
        this.fsType,
        this.storagePolicyId,
        this.storagePolicyName,
        required this.volumePath,
    });

    factory Vspherevirtualdiskvolumesource.fromJson(Map<String, dynamic> json) => _$VspherevirtualdiskvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$VspherevirtualdiskvolumesourceToJson(this);
}

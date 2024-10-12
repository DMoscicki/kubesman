import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'photonpersistentdiskvolumesource_v1.g.dart';


///Represents a Photon Controller persistent disk resource.
@JsonSerializable()
class PhotonpersistentdiskvolumesourceV1 {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///pdID is the ID that identifies Photon Controller persistent disk
    @JsonKey(name: "pdID")
    String? pdId;

    PhotonpersistentdiskvolumesourceV1({
        this.fsType,
        required this.pdId,
    });

    factory PhotonpersistentdiskvolumesourceV1.fromJson(Map<String, dynamic> json) => _$PhotonpersistentdiskvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$PhotonpersistentdiskvolumesourceV1ToJson(this);
}

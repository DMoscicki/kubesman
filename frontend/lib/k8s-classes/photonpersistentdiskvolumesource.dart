import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'photonpersistentdiskvolumesource.g.dart';


///Represents a Photon Controller persistent disk resource.
@JsonSerializable()
class Photonpersistentdiskvolumesource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///pdID is the ID that identifies Photon Controller persistent disk
    @JsonKey(name: "pdID")
    String? pdId;

    Photonpersistentdiskvolumesource({
        this.fsType,
        required this.pdId,
    });

    factory Photonpersistentdiskvolumesource.fromJson(Map<String, dynamic> json) => _$PhotonpersistentdiskvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$PhotonpersistentdiskvolumesourceToJson(this);
}

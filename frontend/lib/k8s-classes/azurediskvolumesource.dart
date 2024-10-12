import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'azurediskvolumesource.g.dart';


///AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
@JsonSerializable()
class Azurediskvolumesource {
    
    ///cachingMode is the Host Caching mode: None, Read Only, Read Write.
    @JsonKey(name: "cachingMode")
    String? cachingMode;
    
    ///diskName is the Name of the data disk in the blob storage
    @JsonKey(name: "diskName")
    String? diskName;
    
    ///diskURI is the URI of data disk in the blob storage
    @JsonKey(name: "diskURI")
    String? diskUri;
    
    ///fsType is Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///kind expected values are Shared: multiple blob disks per storage account  Dedicated:
    ///single blob disk per storage account  Managed: azure managed data disk (only in managed
    ///availability set). defaults to shared
    @JsonKey(name: "kind")
    String? kind;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    Azurediskvolumesource({
        this.cachingMode,
        required this.diskName,
        required this.diskUri,
        this.fsType,
        this.kind,
        this.readOnly,
    });

    factory Azurediskvolumesource.fromJson(Map<String, dynamic> json) => _$AzurediskvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$AzurediskvolumesourceToJson(this);
}

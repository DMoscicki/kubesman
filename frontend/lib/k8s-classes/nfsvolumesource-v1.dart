import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nfsvolumesource_v1.g.dart';


///Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support
///ownership management or SELinux relabeling.
@JsonSerializable()
class NfsvolumesourceV1 {
    
    ///path that is exported by the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly here will force the NFS export to be mounted with read-only permissions.
    ///Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///server is the hostname or IP address of the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "server")
    String? server;

    NfsvolumesourceV1({
        required this.path,
        this.readOnly,
        required this.server,
    });

    factory NfsvolumesourceV1.fromJson(Map<String, dynamic> json) => _$NfsvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$NfsvolumesourceV1ToJson(this);
}

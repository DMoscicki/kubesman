import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nfsvolumesource.g.dart';


///Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support
///ownership management or SELinux relabeling.
@JsonSerializable()
class Nfsvolumesource {
    
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

    Nfsvolumesource({
        required this.path,
        this.readOnly,
        required this.server,
    });

    factory Nfsvolumesource.fromJson(Map<String, dynamic> json) => _$NfsvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$NfsvolumesourceToJson(this);
}

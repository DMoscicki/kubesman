import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'glusterfsvolumesource_v1.g.dart';


///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class GlusterfsvolumesourceV1 {
    
    ///endpoints is the endpoint name that details Glusterfs topology. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpoints")
    String? endpoints;
    
    ///path is the Glusterfs volume path. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly here will force the Glusterfs volume to be mounted with read-only permissions.
    ///Defaults to false. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "readOnly")
    bool? readOnly;

    GlusterfsvolumesourceV1({
        required this.endpoints,
        required this.path,
        this.readOnly,
    });

    factory GlusterfsvolumesourceV1.fromJson(Map<String, dynamic> json) => _$GlusterfsvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$GlusterfsvolumesourceV1ToJson(this);
}

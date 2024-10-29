import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'glusterfsvolumesource.g.dart';


///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class Glusterfsvolumesource {
    
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

    Glusterfsvolumesource({
        required this.endpoints,
        required this.path,
        this.readOnly,
    });

    factory Glusterfsvolumesource.fromJson(Map<String, dynamic> json) => _$GlusterfsvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$GlusterfsvolumesourceToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'glusterfspersistentvolumesource_v1.g.dart';


///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class GlusterfspersistentvolumesourceV1 {
    
    ///endpoints is the endpoint name that details Glusterfs topology. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpoints")
    String? endpoints;
    
    ///endpointsNamespace is the namespace that contains Glusterfs endpoint. If this field is
    ///empty, the EndpointNamespace defaults to the same namespace as the bound PVC. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpointsNamespace")
    String? endpointsNamespace;
    
    ///path is the Glusterfs volume path. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly here will force the Glusterfs volume to be mounted with read-only permissions.
    ///Defaults to false. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "readOnly")
    bool? readOnly;

    GlusterfspersistentvolumesourceV1({
        required this.endpoints,
        this.endpointsNamespace,
        required this.path,
        this.readOnly,
    });

    factory GlusterfspersistentvolumesourceV1.fromJson(Map<String, dynamic> json) => _$GlusterfspersistentvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$GlusterfspersistentvolumesourceV1ToJson(this);
}

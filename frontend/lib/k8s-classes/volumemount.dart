import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumemount.g.dart';


///VolumeMount describes a mounting of a Volume within a container.
@JsonSerializable()
class Volumemount {
    
    ///Path within the container at which the volume should be mounted.  Must not contain ':'.
    @JsonKey(name: "mountPath")
    String? mountPath;
    
    ///mountPropagation determines how mounts are propagated from the host to container and the
    ///other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    ///When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None
    ///or unspecified (which defaults to None).
    @JsonKey(name: "mountPropagation")
    String? mountPropagation;
    
    ///This must match the Name of a Volume.
    @JsonKey(name: "name")
    String? name;
    
    ///Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
    ///
    ///If ReadOnly is false, this field has no meaning and must be unspecified.
    ///
    ///If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively
    ///read-only.  If this field is set to IfPossible, the mount is made recursively read-only,
    ///if it is supported by the container runtime.  If this field is set to Enabled, the mount
    ///is made recursively read-only if it is supported by the container runtime, otherwise the
    ///pod will not be started and an error will be generated to indicate the reason.
    ///
    ///If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or
    ///be unspecified, which defaults to None).
    ///
    ///If this field is not specified, it is treated as an equivalent of Disabled.
    @JsonKey(name: "recursiveReadOnly")
    String? recursiveReadOnly;
    
    ///Path within the volume from which the container's volume should be mounted. Defaults to
    ///"" (volume's root).
    @JsonKey(name: "subPath")
    String? subPath;
    
    ///Expanded path within the volume from which the container's volume should be mounted.
    ///Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded
    ///using the container's environment. Defaults to "" (volume's root). SubPathExpr and
    ///SubPath are mutually exclusive.
    @JsonKey(name: "subPathExpr")
    String? subPathExpr;

    Volumemount({
        required this.mountPath,
        this.mountPropagation,
        required this.name,
        this.readOnly,
        this.recursiveReadOnly,
        this.subPath,
        this.subPathExpr,
    });

    factory Volumemount.fromJson(Map<String, dynamic> json) => _$VolumemountFromJson(json);

    Map<String, dynamic> toJson() => _$VolumemountToJson(this);
}

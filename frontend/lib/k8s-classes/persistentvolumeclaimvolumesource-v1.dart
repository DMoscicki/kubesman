import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimvolumesource_v1.g.dart';


///PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This
///volume finds the bound PV and mounts that volume for the pod. A
///PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of
///volume that is owned by someone else (the system).
@JsonSerializable()
class PersistentvolumeclaimvolumesourceV1 {
    
    ///claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using
    ///this volume. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    @JsonKey(name: "claimName")
    String? claimName;
    
    ///readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    PersistentvolumeclaimvolumesourceV1({
        required this.claimName,
        this.readOnly,
    });

    factory PersistentvolumeclaimvolumesourceV1.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimvolumesourceV1ToJson(this);
}

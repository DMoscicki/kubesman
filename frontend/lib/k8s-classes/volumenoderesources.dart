import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumenoderesources.g.dart';


///VolumeNodeResources is a set of resource limits for scheduling of volumes.
@JsonSerializable()
class Volumenoderesources {
    
    ///count indicates the maximum number of unique volumes managed by the CSI driver that can
    ///be used on a node. A volume that is both attached and mounted on a node is considered to
    ///be used once, not twice. The same rule applies for a unique volume that is shared among
    ///multiple pods on the same node. If this field is not specified, then the supported number
    ///of volumes on this node is unbounded.
    @JsonKey(name: "count")
    int? count;

    Volumenoderesources({
        this.count,
    });

    factory Volumenoderesources.fromJson(Map<String, dynamic> json) => _$VolumenoderesourcesFromJson(json);

    Map<String, dynamic> toJson() => _$VolumenoderesourcesToJson(this);
}

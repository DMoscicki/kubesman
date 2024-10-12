import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetpersistentvolumeclaimretentionpolicy.g.dart';


///StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs
///created from the StatefulSet VolumeClaimTemplates.
@JsonSerializable()
class Statefulsetpersistentvolumeclaimretentionpolicy {
    
    ///WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates
    ///when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be
    ///affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
    @JsonKey(name: "whenDeleted")
    String? whenDeleted;
    
    ///WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates
    ///when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be
    ///affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess
    ///pods above the replica count to be deleted.
    @JsonKey(name: "whenScaled")
    String? whenScaled;

    Statefulsetpersistentvolumeclaimretentionpolicy({
        this.whenDeleted,
        this.whenScaled,
    });

    factory Statefulsetpersistentvolumeclaimretentionpolicy.fromJson(Map<String, dynamic> json) => _$StatefulsetpersistentvolumeclaimretentionpolicyFromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetpersistentvolumeclaimretentionpolicyToJson(this);
}

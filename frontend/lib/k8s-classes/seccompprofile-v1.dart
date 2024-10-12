import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'seccompprofile_v1.g.dart';


///SeccompProfile defines a pod/container's seccomp profile settings. Only one profile
///source may be set.
@JsonSerializable()
class SeccompprofileV1 {
    
    ///localhostProfile indicates a profile defined in a file on the node should be used. The
    ///profile must be preconfigured on the node to work. Must be a descending path, relative to
    ///the kubelet's configured seccomp profile location. Must be set if type is "Localhost".
    ///Must NOT be set for any other type.
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of seccomp profile will be applied. Valid options are:
    ///
    ///Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the
    ///container runtime default profile should be used. Unconfined - no profile should be
    ///applied.
    @JsonKey(name: "type")
    String? type;

    SeccompprofileV1({
        this.localhostProfile,
        required this.type,
    });

    factory SeccompprofileV1.fromJson(Map<String, dynamic> json) => _$SeccompprofileV1FromJson(json);

    Map<String, dynamic> toJson() => _$SeccompprofileV1ToJson(this);
}

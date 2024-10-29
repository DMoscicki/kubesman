import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'groupversionresource_storagemigration_v1_alpha1.g.dart';


///The names of the group, the version, and the resource.
@JsonSerializable()
class GroupversionresourceStoragemigrationV1Alpha1 {
    
    ///The name of the group.
    @JsonKey(name: "group")
    String? group;
    
    ///The name of the resource.
    @JsonKey(name: "resource")
    String? resource;
    
    ///The name of the version.
    @JsonKey(name: "version")
    String? version;

    GroupversionresourceStoragemigrationV1Alpha1({
        this.group,
        this.resource,
        this.version,
    });

    factory GroupversionresourceStoragemigrationV1Alpha1.fromJson(Map<String, dynamic> json) => _$GroupversionresourceStoragemigrationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$GroupversionresourceStoragemigrationV1Alpha1ToJson(this);
}

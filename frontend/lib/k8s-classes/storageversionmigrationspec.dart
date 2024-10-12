import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageversionmigrationspec.g.dart';


///Spec of the storage version migration.
@JsonSerializable()
class Storageversionmigrationspec {
    
    ///The token used in the list options to get the next chunk of objects to migrate. When the
    ///.status.conditions indicates the migration is "Running", users can use this token to
    ///check the progress of the migration.
    @JsonKey(name: "continueToken")
    String? continueToken;
    
    ///The resource that is being migrated. The migrator sends requests to the endpoint serving
    ///the resource. Immutable.
    @JsonKey(name: "resource")
    IoK8SApiStoragemigrationV1Alpha1GroupVersionResource resource;

    Storageversionmigrationspec({
        this.continueToken,
        required this.resource,
    });

    factory Storageversionmigrationspec.fromJson(Map<String, dynamic> json) => _$StorageversionmigrationspecFromJson(json);

    Map<String, dynamic> toJson() => _$StorageversionmigrationspecToJson(this);
}


///The resource that is being migrated. The migrator sends requests to the endpoint serving
///the resource. Immutable.
///
///The names of the group, the version, and the resource.
@JsonSerializable()
class IoK8SApiStoragemigrationV1Alpha1GroupVersionResource {
    
    ///The name of the group.
    @JsonKey(name: "group")
    String? group;
    
    ///The name of the resource.
    @JsonKey(name: "resource")
    String? resource;
    
    ///The name of the version.
    @JsonKey(name: "version")
    String? version;

    IoK8SApiStoragemigrationV1Alpha1GroupVersionResource({
        this.group,
        this.resource,
        this.version,
    });

    factory IoK8SApiStoragemigrationV1Alpha1GroupVersionResource.fromJson(Map<String, dynamic> json) => _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceToJson(this);
}

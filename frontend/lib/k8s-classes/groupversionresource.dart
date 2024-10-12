import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'groupversionresource.g.dart';


///The names of the group, the version, and the resource.
@JsonSerializable()
class Groupversionresource {
    
    ///The name of the group.
    @JsonKey(name: "group")
    String? group;
    
    ///The name of the resource.
    @JsonKey(name: "resource")
    String? resource;
    
    ///The name of the version.
    @JsonKey(name: "version")
    String? version;

    Groupversionresource({
        this.group,
        this.resource,
        this.version,
    });

    factory Groupversionresource.fromJson(Map<String, dynamic> json) => _$GroupversionresourceFromJson(json);

    Map<String, dynamic> toJson() => _$GroupversionresourceToJson(this);
}

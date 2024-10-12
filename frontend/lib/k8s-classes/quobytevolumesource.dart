import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'quobytevolumesource.g.dart';


///Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class Quobytevolumesource {
    
    ///group to map volume access to Default is no group
    @JsonKey(name: "group")
    String? group;
    
    ///readOnly here will force the Quobyte volume to be mounted with read-only permissions.
    ///Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///registry represents a single or multiple Quobyte Registry services specified as a string
    ///as host:port pair (multiple entries are separated with commas) which acts as the central
    ///registry for volumes
    @JsonKey(name: "registry")
    String? registry;
    
    ///tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned
    ///Quobyte volumes, value is set by the plugin
    @JsonKey(name: "tenant")
    String? tenant;
    
    ///user to map volume access to Defaults to serivceaccount user
    @JsonKey(name: "user")
    String? user;
    
    ///volume is a string that references an already created Quobyte volume by name.
    @JsonKey(name: "volume")
    String? volume;

    Quobytevolumesource({
        this.group,
        this.readOnly,
        required this.registry,
        this.tenant,
        this.user,
        required this.volume,
    });

    factory Quobytevolumesource.fromJson(Map<String, dynamic> json) => _$QuobytevolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$QuobytevolumesourceToJson(this);
}

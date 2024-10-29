import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sysctl_v1.g.dart';


///Sysctl defines a kernel parameter to be set
@JsonSerializable()
class SysctlV1 {
    
    ///Name of a property to set
    @JsonKey(name: "name")
    String? name;
    
    ///Value of a property to set
    @JsonKey(name: "value")
    String? value;

    SysctlV1({
        required this.name,
        required this.value,
    });

    factory SysctlV1.fromJson(Map<String, dynamic> json) => _$SysctlV1FromJson(json);

    Map<String, dynamic> toJson() => _$SysctlV1ToJson(this);
}

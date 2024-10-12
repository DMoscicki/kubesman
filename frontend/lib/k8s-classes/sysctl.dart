import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sysctl.g.dart';


///Sysctl defines a kernel parameter to be set
@JsonSerializable()
class Sysctl {
    
    ///Name of a property to set
    @JsonKey(name: "name")
    String? name;
    
    ///Value of a property to set
    @JsonKey(name: "value")
    String? value;

    Sysctl({
        required this.name,
        required this.value,
    });

    factory Sysctl.fromJson(Map<String, dynamic> json) => _$SysctlFromJson(json);

    Map<String, dynamic> toJson() => _$SysctlToJson(this);
}

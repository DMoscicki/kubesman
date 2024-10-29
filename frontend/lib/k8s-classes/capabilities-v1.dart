import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'capabilities_v1.g.dart';


///Adds and removes POSIX capabilities from running containers.
@JsonSerializable()
class CapabilitiesV1 {
    
    ///Added capabilities
    @JsonKey(name: "add")
    List<String?>? add;
    
    ///Removed capabilities
    @JsonKey(name: "drop")
    List<String?>? drop;

    CapabilitiesV1({
        this.add,
        this.drop,
    });

    factory CapabilitiesV1.fromJson(Map<String, dynamic> json) => _$CapabilitiesV1FromJson(json);

    Map<String, dynamic> toJson() => _$CapabilitiesV1ToJson(this);
}

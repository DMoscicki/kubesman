import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'capabilities.g.dart';


///Adds and removes POSIX capabilities from running containers.
@JsonSerializable()
class Capabilities {
    
    ///Added capabilities
    @JsonKey(name: "add")
    List<String?>? add;
    
    ///Removed capabilities
    @JsonKey(name: "drop")
    List<String?>? drop;

    Capabilities({
        this.add,
        this.drop,
    });

    factory Capabilities.fromJson(Map<String, dynamic> json) => _$CapabilitiesFromJson(json);

    Map<String, dynamic> toJson() => _$CapabilitiesToJson(this);
}

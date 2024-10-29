import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'groupversionfordiscovery.g.dart';


///GroupVersion contains the "group/version" and "version" string of a version. It is made a
///struct to keep extensibility.
@JsonSerializable()
class Groupversionfordiscovery {
    
    ///groupVersion specifies the API group and version in the form "group/version"
    @JsonKey(name: "groupVersion")
    String? groupVersion;
    
    ///version specifies the version in the form of "version". This is to save the clients the
    ///trouble of splitting the GroupVersion.
    @JsonKey(name: "version")
    String? version;

    Groupversionfordiscovery({
        required this.groupVersion,
        required this.version,
    });

    factory Groupversionfordiscovery.fromJson(Map<String, dynamic> json) => _$GroupversionfordiscoveryFromJson(json);

    Map<String, dynamic> toJson() => _$GroupversionfordiscoveryToJson(this);
}

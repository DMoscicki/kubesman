import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'info_pkg_version.g.dart';


///Info contains versioning information. how we'll want to distribute that information.
@JsonSerializable()
class InfoPkgVersion {
    @JsonKey(name: "buildDate")
    String? buildDate;
    @JsonKey(name: "compiler")
    String? compiler;
    @JsonKey(name: "gitCommit")
    String? gitCommit;
    @JsonKey(name: "gitTreeState")
    String? gitTreeState;
    @JsonKey(name: "gitVersion")
    String? gitVersion;
    @JsonKey(name: "goVersion")
    String? goVersion;
    @JsonKey(name: "major")
    String? major;
    @JsonKey(name: "minor")
    String? minor;
    @JsonKey(name: "platform")
    String? platform;

    InfoPkgVersion({
        required this.buildDate,
        required this.compiler,
        required this.gitCommit,
        required this.gitTreeState,
        required this.gitVersion,
        required this.goVersion,
        required this.major,
        required this.minor,
        required this.platform,
    });

    factory InfoPkgVersion.fromJson(Map<String, dynamic> json) => _$InfoPkgVersionFromJson(json);

    Map<String, dynamic> toJson() => _$InfoPkgVersionToJson(this);
}

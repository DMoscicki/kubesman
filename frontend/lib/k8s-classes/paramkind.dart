import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'paramkind.g.dart';


///ParamKind is a tuple of Group Kind and Version.
@JsonSerializable()
class Paramkind {
    
    ///APIVersion is the API group version the resources belong to. In format of
    ///"group/version". Required.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is the API kind the resources belong to. Required.
    @JsonKey(name: "kind")
    String? kind;

    Paramkind({
        this.apiVersion,
        this.kind,
    });

    factory Paramkind.fromJson(Map<String, dynamic> json) => _$ParamkindFromJson(json);

    Map<String, dynamic> toJson() => _$ParamkindToJson(this);
}

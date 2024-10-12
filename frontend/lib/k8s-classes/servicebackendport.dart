import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicebackendport.g.dart';


///ServiceBackendPort is the service port being referenced.
@JsonSerializable()
class Servicebackendport {
    
    ///name is the name of the port on the Service. This is a mutually exclusive setting with
    ///"Number".
    @JsonKey(name: "name")
    String? name;
    
    ///number is the numerical port number (e.g. 80) on the Service. This is a mutually
    ///exclusive setting with "Name".
    @JsonKey(name: "number")
    int? number;

    Servicebackendport({
        this.name,
        this.number,
    });

    factory Servicebackendport.fromJson(Map<String, dynamic> json) => _$ServicebackendportFromJson(json);

    Map<String, dynamic> toJson() => _$ServicebackendportToJson(this);
}

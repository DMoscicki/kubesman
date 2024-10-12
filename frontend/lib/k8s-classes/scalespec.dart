import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scalespec.g.dart';


///ScaleSpec describes the attributes of a scale subresource.
@JsonSerializable()
class Scalespec {
    
    ///replicas is the desired number of instances for the scaled object.
    @JsonKey(name: "replicas")
    int? replicas;

    Scalespec({
        this.replicas,
    });

    factory Scalespec.fromJson(Map<String, dynamic> json) => _$ScalespecFromJson(json);

    Map<String, dynamic> toJson() => _$ScalespecToJson(this);
}

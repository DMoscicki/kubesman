import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaim_v1.g.dart';


///ResourceClaim references one entry in PodSpec.ResourceClaims.
@JsonSerializable()
class ResourceclaimV1 {
    
    ///Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this
    ///field is used. It makes that resource available inside a container.
    @JsonKey(name: "name")
    String? name;

    ResourceclaimV1({
        required this.name,
    });

    factory ResourceclaimV1.fromJson(Map<String, dynamic> json) => _$ResourceclaimV1FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimV1ToJson(this);
}

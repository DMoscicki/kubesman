import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclassparametersreference.g.dart';


///ResourceClassParametersReference contains enough information to let you locate the
///parameters for a ResourceClass.
@JsonSerializable()
class Resourceclassparametersreference {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced. This is the same value as in the parameter
    ///object's metadata.
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace that contains the referenced resource. Must be empty for cluster-scoped
    ///resources and non-empty for namespaced resources.
    @JsonKey(name: "namespace")
    String? namespace;

    Resourceclassparametersreference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory Resourceclassparametersreference.fromJson(Map<String, dynamic> json) => _$ResourceclassparametersreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclassparametersreferenceToJson(this);
}

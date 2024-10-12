import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namespacespec_v1.g.dart';


///NamespaceSpec describes the attributes on a Namespace.
@JsonSerializable()
class NamespacespecV1 {
    
    ///Finalizers is an opaque list of values that must be empty to permanently remove object
    ///from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
    @JsonKey(name: "finalizers")
    List<String?>? finalizers;

    NamespacespecV1({
        this.finalizers,
    });

    factory NamespacespecV1.fromJson(Map<String, dynamic> json) => _$NamespacespecV1FromJson(json);

    Map<String, dynamic> toJson() => _$NamespacespecV1ToJson(this);
}

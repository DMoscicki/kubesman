import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namespacespec.g.dart';


///NamespaceSpec describes the attributes on a Namespace.
@JsonSerializable()
class Namespacespec {
    
    ///Finalizers is an opaque list of values that must be empty to permanently remove object
    ///from storage. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
    @JsonKey(name: "finalizers")
    List<String?>? finalizers;

    Namespacespec({
        this.finalizers,
    });

    factory Namespacespec.fromJson(Map<String, dynamic> json) => _$NamespacespecFromJson(json);

    Map<String, dynamic> toJson() => _$NamespacespecToJson(this);
}

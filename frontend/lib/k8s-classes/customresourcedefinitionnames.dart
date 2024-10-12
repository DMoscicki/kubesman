import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcedefinitionnames.g.dart';


///CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
@JsonSerializable()
class Customresourcedefinitionnames {
    
    ///categories is a list of grouped resources this custom resource belongs to (e.g. 'all').
    ///This is published in API discovery documents, and used by clients to support invocations
    ///like `kubectl get all`.
    @JsonKey(name: "categories")
    List<String?>? categories;
    
    ///kind is the serialized kind of the resource. It is normally CamelCase and singular.
    ///Custom resource instances will use this value as the `kind` attribute in API calls.
    @JsonKey(name: "kind")
    String? kind;
    
    ///listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
    @JsonKey(name: "listKind")
    String? listKind;
    
    ///plural is the plural name of the resource to serve. The custom resources are served under
    ///`/apis/<group>/<version>/.../<plural>`. Must match the name of the
    ///CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
    @JsonKey(name: "plural")
    String? plural;
    
    ///shortNames are short names for the resource, exposed in API discovery documents, and used
    ///by clients to support invocations like `kubectl get <shortname>`. It must be all
    ///lowercase.
    @JsonKey(name: "shortNames")
    List<String?>? shortNames;
    
    ///singular is the singular name of the resource. It must be all lowercase. Defaults to
    ///lowercased `kind`.
    @JsonKey(name: "singular")
    String? singular;

    Customresourcedefinitionnames({
        this.categories,
        required this.kind,
        this.listKind,
        required this.plural,
        this.shortNames,
        this.singular,
    });

    factory Customresourcedefinitionnames.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionnamesFromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionnamesToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcedefinitionstatus.g.dart';


///CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
@JsonSerializable()
class Customresourcedefinitionstatus {
    
    ///acceptedNames are the names that are actually being used to serve discovery. They may be
    ///different than the names in spec.
    @JsonKey(name: "acceptedNames")
    AcceptedNames? acceptedNames;
    
    ///conditions indicate state for particular aspects of a CustomResourceDefinition
    @JsonKey(name: "conditions")
    List<CustomresourcedefinitionconditionApiextensionsV1>? conditions;
    
    ///storedVersions lists all versions of CustomResources that were ever persisted. Tracking
    ///these versions allows a migration path for stored versions in etcd. The field is mutable
    ///so a migration controller can finish a migration to another version (ensuring no old
    ///objects are left in storage), and then remove the rest of the versions from this list.
    ///Versions may not be removed from `spec.versions` while they exist in this list.
    @JsonKey(name: "storedVersions")
    List<String?>? storedVersions;

    Customresourcedefinitionstatus({
        this.acceptedNames,
        this.conditions,
        this.storedVersions,
    });

    factory Customresourcedefinitionstatus.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionstatusFromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionstatusToJson(this);
}


///acceptedNames are the names that are actually being used to serve discovery. They may be
///different than the names in spec.
///
///CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
@JsonSerializable()
class AcceptedNames {
    
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

    AcceptedNames({
        this.categories,
        required this.kind,
        this.listKind,
        required this.plural,
        this.shortNames,
        this.singular,
    });

    factory AcceptedNames.fromJson(Map<String, dynamic> json) => _$AcceptedNamesFromJson(json);

    Map<String, dynamic> toJson() => _$AcceptedNamesToJson(this);
}


///CustomResourceDefinitionCondition contains details for the current condition of this pod.
@JsonSerializable()
class CustomresourcedefinitionconditionApiextensionsV1 {
    
    ///lastTransitionTime last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is a human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///reason is a unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///status is the status of the condition. Can be True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///type is the type of the condition. Types include Established, NamesAccepted and
    ///Terminating.
    @JsonKey(name: "type")
    String? type;

    CustomresourcedefinitionconditionApiextensionsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory CustomresourcedefinitionconditionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionconditionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionconditionApiextensionsV1ToJson(this);
}

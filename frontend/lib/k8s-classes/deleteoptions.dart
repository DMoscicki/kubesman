import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deleteoptions.g.dart';


///DeleteOptions may be provided when deleting an API object.
@JsonSerializable()
class Deleteoptions {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///When present, indicates that modifications should not be persisted. An invalid or
    ///unrecognized dryRun directive will result in an error response and no further processing
    ///of the request. Valid values are: - All: all dry run stages will be processed
    @JsonKey(name: "dryRun")
    List<String?>? dryRun;
    
    ///The duration in seconds before the object should be deleted. Value must be non-negative
    ///integer. The value zero indicates delete immediately. If this value is nil, the default
    ///grace period for the specified type will be used. Defaults to a per object value if not
    ///specified. zero means delete immediately.
    @JsonKey(name: "gracePeriodSeconds")
    int? gracePeriodSeconds;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7.
    ///Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be
    ///added to/removed from the object's finalizers list. Either this field or
    ///PropagationPolicy may be set, but not both.
    @JsonKey(name: "orphanDependents")
    bool? orphanDependents;
    
    ///Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict
    ///status will be returned.
    @JsonKey(name: "preconditions")
    IoK8SApimachineryPkgApisMetaV1Preconditions? preconditions;
    
    ///Whether and how garbage collection will be performed. Either this field or
    ///OrphanDependents may be set, but not both. The default policy is decided by the existing
    ///finalizer set in the metadata.finalizers and the resource-specific default policy.
    ///Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage
    ///collector to delete the dependents in the background; 'Foreground' - a cascading policy
    ///that deletes all dependents in the foreground.
    @JsonKey(name: "propagationPolicy")
    String? propagationPolicy;

    Deleteoptions({
        this.apiVersion,
        this.dryRun,
        this.gracePeriodSeconds,
        this.kind,
        this.orphanDependents,
        this.preconditions,
        this.propagationPolicy,
    });

    factory Deleteoptions.fromJson(Map<String, dynamic> json) => _$DeleteoptionsFromJson(json);

    Map<String, dynamic> toJson() => _$DeleteoptionsToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("DeleteOptions")
    DELETE_OPTIONS
}

final kindValues = EnumValues({
    "DeleteOptions": Kind.DELETE_OPTIONS
});


///Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict
///status will be returned.
///
///Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Preconditions {
    
    ///Specifies the target ResourceVersion
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Specifies the target UID.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApimachineryPkgApisMetaV1Preconditions({
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1Preconditions.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1PreconditionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1PreconditionsToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}

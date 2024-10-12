import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiresource.g.dart';


///APIResource specifies the name of a resource and whether it is namespaced.
@JsonSerializable()
class Apiresource {
    
    ///categories is a list of the grouped resources this resource belongs to (e.g. 'all')
    @JsonKey(name: "categories")
    List<String?>? categories;
    
    ///group is the preferred group of the resource.  Empty implies the group of the containing
    ///resource list. For subresources, this may have a different value, for example: Scale".
    @JsonKey(name: "group")
    String? group;
    
    ///kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
    @JsonKey(name: "kind")
    String? kind;
    
    ///name is the plural name of the resource.
    @JsonKey(name: "name")
    String? name;
    
    ///namespaced indicates if a resource is namespaced or not.
    @JsonKey(name: "namespaced")
    bool? namespaced;
    
    ///shortNames is a list of suggested short names of the resource.
    @JsonKey(name: "shortNames")
    List<String?>? shortNames;
    
    ///singularName is the singular name of the resource.  This allows clients to handle plural
    ///and singular opaquely. The singularName is more correct for reporting status on a single
    ///item and both singular and plural are allowed from the kubectl CLI interface.
    @JsonKey(name: "singularName")
    String? singularName;
    
    ///The hash value of the storage version, the version this resource is converted to when
    ///written to the data store. Value must be treated as opaque by clients. Only equality
    ///comparison on the value is valid. This is an alpha feature and may change or be removed
    ///in the future. The field is populated by the apiserver only if the StorageVersionHash
    ///feature gate is enabled. This field will remain optional even if it graduates.
    @JsonKey(name: "storageVersionHash")
    String? storageVersionHash;
    
    ///verbs is a list of supported kube verbs (this includes get, list, watch, create, update,
    ///patch, delete, deletecollection, and proxy)
    @JsonKey(name: "verbs")
    List<String?>? verbs;
    
    ///version is the preferred version of the resource.  Empty implies the version of the
    ///containing resource list For subresources, this may have a different value, for example:
    ///v1 (while inside a v1beta1 version of the core resource's group)".
    @JsonKey(name: "version")
    String? version;

    Apiresource({
        this.categories,
        this.group,
        required this.kind,
        required this.name,
        required this.namespaced,
        this.shortNames,
        required this.singularName,
        this.storageVersionHash,
        required this.verbs,
        this.version,
    });

    factory Apiresource.fromJson(Map<String, dynamic> json) => _$ApiresourceFromJson(json);

    Map<String, dynamic> toJson() => _$ApiresourceToJson(this);
}

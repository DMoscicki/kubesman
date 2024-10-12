import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesinstance_resource_v1_alpha2.g.dart';


///NamedResourcesInstance represents one individual hardware instance that can be selected
///based on its attributes.
@JsonSerializable()
class NamedresourcesinstanceResourceV1Alpha2 {
    
    ///Attributes defines the attributes of this resource instance. The name of each attribute
    ///must be unique.
    @JsonKey(name: "attributes")
    List<IoK8SApiResourceV1Alpha2NamedResourcesAttribute>? attributes;
    
    ///Name is unique identifier among all resource instances managed by the driver on the node.
    ///It must be a DNS subdomain.
    @JsonKey(name: "name")
    String? name;

    NamedresourcesinstanceResourceV1Alpha2({
        this.attributes,
        required this.name,
    });

    factory NamedresourcesinstanceResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$NamedresourcesinstanceResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesinstanceResourceV1Alpha2ToJson(this);
}


///NamedResourcesAttribute is a combination of an attribute name and its value.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesAttribute {
    
    ///BoolValue is a true/false value.
    @JsonKey(name: "bool")
    bool? ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool;
    
    ///IntValue is a 64-bit integer.
    @JsonKey(name: "int")
    int? ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt;
    
    ///IntSliceValue is an array of 64-bit integers.
    @JsonKey(name: "intSlice")
    IoK8SApiResourceV1Alpha2NamedResourcesIntSlice? intSlice;
    
    ///Name is unique identifier among all resource instances managed by the driver on the node.
    ///It must be a DNS subdomain.
    @JsonKey(name: "name")
    String name;
    
    ///QuantityValue is a quantity.
    @JsonKey(name: "quantity")
    dynamic quantity;
    
    ///StringValue is a string.
    @JsonKey(name: "string")
    String? string;
    
    ///StringSliceValue is an array of strings.
    @JsonKey(name: "stringSlice")
    IoK8SApiResourceV1Alpha2NamedResourcesStringSlice? stringSlice;
    
    ///VersionValue is a semantic version according to semver.org spec 2.0.0.
    @JsonKey(name: "version")
    String? version;

    IoK8SApiResourceV1Alpha2NamedResourcesAttribute({
        this.ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool,
        this.ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt,
        this.intSlice,
        required this.name,
        this.quantity,
        this.string,
        this.stringSlice,
        this.version,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesAttribute.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeToJson(this);
}


///IntSliceValue is an array of 64-bit integers.
///
///NamedResourcesIntSlice contains a slice of 64-bit integers.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesIntSlice {
    
    ///Ints is the slice of 64-bit integers.
    @JsonKey(name: "ints")
    List<int> ints;

    IoK8SApiResourceV1Alpha2NamedResourcesIntSlice({
        required this.ints,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesIntSlice.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceToJson(this);
}


///StringSliceValue is an array of strings.
///
///NamedResourcesStringSlice contains a slice of strings.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesStringSlice {
    
    ///Strings is the slice of strings.
    @JsonKey(name: "strings")
    List<String> strings;

    IoK8SApiResourceV1Alpha2NamedResourcesStringSlice({
        required this.strings,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesStringSlice.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceToJson(this);
}

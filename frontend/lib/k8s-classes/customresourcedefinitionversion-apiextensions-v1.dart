import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcedefinitionversion_apiextensions_v1.g.dart';


///CustomResourceDefinitionVersion describes a version for CRD.
@JsonSerializable()
class CustomresourcedefinitionversionApiextensionsV1 {
    
    ///additionalPrinterColumns specifies additional columns returned in Table output. See
    ///https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables
    ///for details. If no columns are specified, a single column displaying the age of the
    ///custom resource is used.
    @JsonKey(name: "additionalPrinterColumns")
    List<CustomresourcecolumndefinitionApiextensionsV1>? additionalPrinterColumns;
    
    ///deprecated indicates this version of the custom resource API is deprecated. When set to
    ///true, API requests to this version receive a warning header in the server response.
    ///Defaults to false.
    @JsonKey(name: "deprecated")
    bool? deprecated;
    
    ///deprecationWarning overrides the default warning returned to API clients. May only be set
    ///when `deprecated` is true. The default warning indicates this version is deprecated and
    ///recommends use of the newest served version of equal or greater stability, if one exists.
    @JsonKey(name: "deprecationWarning")
    String? deprecationWarning;
    
    ///name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served
    ///under this version at `/apis/<group>/<version>/...` if `served` is true.
    @JsonKey(name: "name")
    String? name;
    
    ///schema describes the schema used for validation, pruning, and defaulting of this version
    ///of the custom resource.
    @JsonKey(name: "schema")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation? schema;
    
    ///selectableFields specifies paths to fields that may be used as field selectors. A maximum
    ///of 8 selectable fields are allowed. See
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
    @JsonKey(name: "selectableFields")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField>? selectableFields;
    
    ///served is a flag enabling/disabling this version from being served via REST APIs
    @JsonKey(name: "served")
    bool? served;
    
    ///storage indicates this version should be used when persisting custom resources to
    ///storage. There must be exactly one version with storage=true.
    @JsonKey(name: "storage")
    bool? storage;
    
    ///subresources specify what subresources this version of the defined custom resource have.
    @JsonKey(name: "subresources")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources? subresources;

    CustomresourcedefinitionversionApiextensionsV1({
        this.additionalPrinterColumns,
        this.deprecated,
        this.deprecationWarning,
        required this.name,
        this.schema,
        this.selectableFields,
        required this.served,
        required this.storage,
        this.subresources,
    });

    factory CustomresourcedefinitionversionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcedefinitionversionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcedefinitionversionApiextensionsV1ToJson(this);
}


///CustomResourceColumnDefinition specifies a column for server side printing.
@JsonSerializable()
class CustomresourcecolumndefinitionApiextensionsV1 {
    
    ///description is a human readable description of this column.
    @JsonKey(name: "description")
    String? description;
    
    ///format is an optional OpenAPI type definition for this column. The 'name' format is
    ///applied to the primary identifier column to assist in clients identifying column is the
    ///resource name. See
    ///https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for
    ///details.
    @JsonKey(name: "format")
    String? format;
    
    ///jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each
    ///custom resource to produce the value for this column.
    @JsonKey(name: "jsonPath")
    String? jsonPath;
    
    ///name is a human readable name for the column.
    @JsonKey(name: "name")
    String? name;
    
    ///priority is an integer defining the relative importance of this column compared to
    ///others. Lower numbers are considered higher priority. Columns that may be omitted in
    ///limited space scenarios should be given a priority greater than 0.
    @JsonKey(name: "priority")
    int? priority;
    
    ///type is an OpenAPI type definition for this column. See
    ///https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for
    ///details.
    @JsonKey(name: "type")
    String? type;

    CustomresourcecolumndefinitionApiextensionsV1({
        this.description,
        this.format,
        required this.jsonPath,
        required this.name,
        this.priority,
        required this.type,
    });

    factory CustomresourcecolumndefinitionApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcecolumndefinitionApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcecolumndefinitionApiextensionsV1ToJson(this);
}


///schema describes the schema used for validation, pruning, and defaulting of this version
///of the custom resource.
///
///CustomResourceValidation is a list of validation methods for CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation {
    
    ///openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
    @JsonKey(name: "openAPIV3Schema")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps? openApiv3Schema;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation({
        this.openApiv3Schema,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidationToJson(this);
}


///openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
///
///JSONSchemaProps is a JSON-Schema following Specification Draft 4
///(http://json-schema.org/).
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps {
    @JsonKey(name: "$ref")
    String? ref;
    @JsonKey(name: "$schema")
    String? schema;
    @JsonKey(name: "additionalItems")
    dynamic additionalItems;
    @JsonKey(name: "additionalProperties")
    dynamic additionalProperties;
    @JsonKey(name: "allOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? allOf;
    @JsonKey(name: "anyOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? anyOf;
    
    ///default is a default value for undefined object fields. Defaulting is a beta feature
    ///under the CustomResourceDefaulting feature gate. Defaulting requires
    ///spec.preserveUnknownFields to be false.
    @JsonKey(name: "default")
    dynamic ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsDefault;
    @JsonKey(name: "definitions")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? definitions;
    @JsonKey(name: "dependencies")
    Map<String, dynamic>? dependencies;
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "enum")
    List<dynamic>? ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsEnum;
    @JsonKey(name: "example")
    dynamic example;
    @JsonKey(name: "exclusiveMaximum")
    bool? exclusiveMaximum;
    @JsonKey(name: "exclusiveMinimum")
    bool? exclusiveMinimum;
    @JsonKey(name: "externalDocs")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation? externalDocs;
    
    ///format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats
    ///are validated:
    ///
    ///- bsonobjectid: a bson object ID, i.e. a 24 characters hex string - uri: an URI as parsed
    ///by Golang net/url.ParseRequestURI - email: an email address as parsed by Golang
    ///net/mail.ParseAddress - hostname: a valid representation for an Internet host name, as
    ///defined by RFC 1034, section 3.1 [RFC1034]. - ipv4: an IPv4 IP as parsed by Golang
    ///net.ParseIP - ipv6: an IPv6 IP as parsed by Golang net.ParseIP - cidr: a CIDR as parsed
    ///by Golang net.ParseCIDR - mac: a MAC address as parsed by Golang net.ParseMAC - uuid: an
    ///UUID that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid3: an UUID3
    ///that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$ - uuid4: an UUID4
    ///that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - uuid5: an
    ///UUID5 that allows uppercase defined by the regex
    ///(?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$ - isbn: an
    ///ISBN10 or ISBN13 number string like "0321751043" or "978-0321751041" - isbn10: an ISBN10
    ///number string like "0321751043" - isbn13: an ISBN13 number string like "978-0321751041" -
    ///creditcard: a credit card number defined by the regex
    ///^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\d{3})\d{11})$
    ///with any non digit characters mixed in - ssn: a U.S. social security number following the
    ///regex ^\d{3}[- ]?\d{2}[- ]?\d{4}$ - hexcolor: an hexadecimal color code like "#FFFFFF:
    ///following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$ - rgbcolor: an RGB color code
    ///like rgb like "rgb(255,255,2559" - byte: base64 encoded binary data - password: any kind
    ///of string - date: a date string like "2006-01-02" as defined by full-date in RFC3339 -
    ///duration: a duration string like "22 ns" as parsed by Golang time.ParseDuration or
    ///compatible with Scala duration format - datetime: a date time string like
    ///"2014-12-15T19:30:20.000Z" as defined by date-time in RFC3339.
    @JsonKey(name: "format")
    String? format;
    @JsonKey(name: "id")
    String? id;
    @JsonKey(name: "items")
    dynamic items;
    @JsonKey(name: "maximum")
    double? maximum;
    @JsonKey(name: "maxItems")
    int? maxItems;
    @JsonKey(name: "maxLength")
    int? maxLength;
    @JsonKey(name: "maxProperties")
    int? maxProperties;
    @JsonKey(name: "minimum")
    double? minimum;
    @JsonKey(name: "minItems")
    int? minItems;
    @JsonKey(name: "minLength")
    int? minLength;
    @JsonKey(name: "minProperties")
    int? minProperties;
    @JsonKey(name: "multipleOf")
    double? multipleOf;
    @JsonKey(name: "not")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps? not;
    @JsonKey(name: "nullable")
    bool? nullable;
    @JsonKey(name: "oneOf")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? oneOf;
    @JsonKey(name: "pattern")
    String? pattern;
    @JsonKey(name: "patternProperties")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? patternProperties;
    @JsonKey(name: "properties")
    Map<String, IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps>? properties;
    @JsonKey(name: "required")
    List<String>? required;
    @JsonKey(name: "title")
    String? title;
    @JsonKey(name: "type")
    String? type;
    @JsonKey(name: "uniqueItems")
    bool? uniqueItems;
    
    ///x-kubernetes-embedded-resource defines that the value is an embedded Kubernetes
    ///runtime.Object, with TypeMeta and ObjectMeta. The type must be object. It is allowed to
    ///further restrict the embedded object. kind, apiVersion and metadata are validated
    ///automatically. x-kubernetes-preserve-unknown-fields is allowed to be true, but does not
    ///have to be if the object is fully specified (up to kind, apiVersion, metadata).
    @JsonKey(name: "x-kubernetes-embedded-resource")
    bool? xKubernetesEmbeddedResource;
    
    ///x-kubernetes-int-or-string specifies that this value is either an integer or a string. If
    ///this is true, an empty type is allowed and type as child of anyOf is permitted if
    ///following one of the following patterns:
    ///
    ///1) anyOf:
    ///- type: integer
    ///- type: string
    ///2) allOf:
    ///- anyOf:
    ///- type: integer
    ///- type: string
    ///- ... zero or more
    @JsonKey(name: "x-kubernetes-int-or-string")
    bool? xKubernetesIntOrString;
    
    ///x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by
    ///specifying the keys used as the index of the map.
    ///
    ///This tag MUST only be used on lists that have the "x-kubernetes-list-type" extension set
    ///to "map". Also, the values specified for this attribute must be a scalar typed field of
    ///the child structure (no nesting is supported).
    ///
    ///The properties specified must either be required or have a default value, to ensure those
    ///properties are present for all list items.
    @JsonKey(name: "x-kubernetes-list-map-keys")
    List<String>? xKubernetesListMapKeys;
    
    ///x-kubernetes-list-type annotates an array to further describe its topology. This
    ///extension must only be used on lists and may have 3 possible values:
    ///
    ///1) `atomic`: the list is treated as a single entity, like a scalar.
    ///Atomic lists will be entirely replaced when updated. This extension
    ///may be used on any type of list (struct, scalar, ...).
    ///2) `set`:
    ///Sets are lists that must not have multiple items with the same value. Each
    ///value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
    ///array with x-kubernetes-list-type `atomic`.
    ///3) `map`:
    ///These lists are like maps in that their elements have a non-index key
    ///used to identify them. Order is preserved upon merge. The map tag
    ///must only be used on a list with elements of type object.
    ///Defaults to atomic for arrays.
    @JsonKey(name: "x-kubernetes-list-type")
    String? xKubernetesListType;
    
    ///x-kubernetes-map-type annotates an object to further describe its topology. This
    ///extension must only be used when type is object and may have 2 possible values:
    ///
    ///1) `granular`:
    ///These maps are actual maps (key-value pairs) and each fields are independent
    ///from each other (they can each be manipulated by separate actors). This is
    ///the default behaviour for all maps.
    ///2) `atomic`: the list is treated as a single entity, like a scalar.
    ///Atomic maps will be entirely replaced when updated.
    @JsonKey(name: "x-kubernetes-map-type")
    String? xKubernetesMapType;
    
    ///x-kubernetes-preserve-unknown-fields stops the API server decoding step from pruning
    ///fields which are not specified in the validation schema. This affects fields recursively,
    ///but switches back to normal pruning behaviour if nested properties or
    ///additionalProperties are specified in the schema. This can either be true or undefined.
    ///False is forbidden.
    @JsonKey(name: "x-kubernetes-preserve-unknown-fields")
    bool? xKubernetesPreserveUnknownFields;
    
    ///x-kubernetes-validations describes a list of validation rules written in the CEL
    ///expression language. This field is an alpha-level. Using this field requires the feature
    ///gate `CustomResourceValidationExpressions` to be enabled.
    @JsonKey(name: "x-kubernetes-validations")
    List<IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule>? xKubernetesValidations;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps({
        this.ref,
        this.schema,
        this.additionalItems,
        this.additionalProperties,
        this.allOf,
        this.anyOf,
        this.ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsDefault,
        this.definitions,
        this.dependencies,
        this.description,
        this.ioK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsEnum,
        this.example,
        this.exclusiveMaximum,
        this.exclusiveMinimum,
        this.externalDocs,
        this.format,
        this.id,
        this.items,
        this.maximum,
        this.maxItems,
        this.maxLength,
        this.maxProperties,
        this.minimum,
        this.minItems,
        this.minLength,
        this.minProperties,
        this.multipleOf,
        this.not,
        this.nullable,
        this.oneOf,
        this.pattern,
        this.patternProperties,
        this.properties,
        this.required,
        this.title,
        this.type,
        this.uniqueItems,
        this.xKubernetesEmbeddedResource,
        this.xKubernetesIntOrString,
        this.xKubernetesListMapKeys,
        this.xKubernetesListType,
        this.xKubernetesMapType,
        this.xKubernetesPreserveUnknownFields,
        this.xKubernetesValidations,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaProps.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1JsonSchemaPropsToJson(this);
}


///ExternalDocumentation allows referencing an external resource for extended documentation.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation {
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "url")
    String? url;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation({
        this.description,
        this.url,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentation.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ExternalDocumentationToJson(this);
}


///ValidationRule describes a validation rule written in the CEL expression language.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule {
    
    ///fieldPath represents the field path returned when the validation fails. It must be a
    ///relative JSON path (i.e. with array notation) scoped to the location of this
    ///x-kubernetes-validations extension in the schema and refer to an existing field. e.g.
    ///when validation checks if a specific attribute `foo` under a map `testMap`, the fieldPath
    ///could be set to `.testMap.foo` If the validation checks two lists must have unique
    ///attributes, the fieldPath could be set to either of the list: e.g. `.testList` It does
    ///not support list numeric index. It supports child operation to refer to an existing field
    ///currently. Refer to [JSONPath support in
    ///Kubernetes](https://kubernetes.io/docs/reference/kubectl/jsonpath/) for more info.
    ///Numeric index of array is not supported. For field name which contains special
    ///characters, use `['specialName']` to refer the field name. e.g. for attribute `foo.34$`
    ///appears in a list `testList`, the fieldPath could be set to `.testList['foo.34$']`
    @JsonKey(name: "fieldPath")
    String? fieldPath;
    
    ///Message represents the message displayed when validation fails. The message is required
    ///if the Rule contains line breaks. The message must not contain line breaks. If unset, the
    ///message is "failed rule: {Rule}". e.g. "must be a URL with the host matching spec.host"
    @JsonKey(name: "message")
    String? message;
    
    ///MessageExpression declares a CEL expression that evaluates to the validation failure
    ///message that is returned when this rule fails. Since messageExpression is used as a
    ///failure message, it must evaluate to a string. If both message and messageExpression are
    ///present on a rule, then messageExpression will be used if validation fails. If
    ///messageExpression results in a runtime error, the runtime error is logged, and the
    ///validation failure message is produced as if the messageExpression field were unset. If
    ///messageExpression evaluates to an empty string, a string with only spaces, or a string
    ///that contains line breaks, then the validation failure message will also be produced as
    ///if the messageExpression field were unset, and the fact that messageExpression produced
    ///an empty string/string with only spaces/string with line breaks will be logged.
    ///messageExpression has access to all the same variables as the rule; the only difference
    ///is the return type. Example: "x must be less than max ("+string(self.max)+")"
    @JsonKey(name: "messageExpression")
    String? messageExpression;
    
    ///optionalOldSelf is used to opt a transition rule into evaluation even when the object is
    ///first created, or if the old object is missing the value.
    ///
    ///When enabled `oldSelf` will be a CEL optional whose value will be `None` if there is no
    ///old value, or when the object is initially created.
    ///
    ///You may check for presence of oldSelf using `oldSelf.hasValue()` and unwrap it after
    ///checking using `oldSelf.value()`. Check the CEL documentation for Optional types for more
    ///information: https://pkg.go.dev/github.com/google/cel-go/cel#OptionalTypes
    ///
    ///May not be set unless `oldSelf` is used in `rule`.
    @JsonKey(name: "optionalOldSelf")
    bool? optionalOldSelf;
    
    ///reason provides a machine-readable validation failure reason that is returned to the
    ///caller when a request fails this validation rule. The HTTP status code returned to the
    ///caller will match the reason of the reason of the first failed validation rule. The
    ///currently supported reasons are: "FieldValueInvalid", "FieldValueForbidden",
    ///"FieldValueRequired", "FieldValueDuplicate". If not set, default to use
    ///"FieldValueInvalid". All future added reasons must be accepted by clients when reading
    ///this value and unknown reasons should be treated as FieldValueInvalid.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Rule represents the expression which will be evaluated by CEL. ref:
    ///https://github.com/google/cel-spec The Rule is scoped to the location of the
    ///x-kubernetes-validations extension in the schema. The `self` variable in the CEL
    ///expression is bound to the scoped value. Example: - Rule scoped to the root of a resource
    ///with a status subresource: {"rule": "self.status.actual <= self.spec.maxDesired"}
    ///
    ///If the Rule is scoped to an object with properties, the accessible properties of the
    ///object are field selectable via `self.field` and field presence can be checked via
    ///`has(self.field)`. Null valued fields are treated as absent fields in CEL expressions. If
    ///the Rule is scoped to an object with additionalProperties (i.e. a map) the value of the
    ///map are accessible via `self[mapKey]`, map containment can be checked via `mapKey in
    ///self` and all entries of the map are accessible via CEL macros and functions such as
    ///`self.all(...)`. If the Rule is scoped to an array, the elements of the array are
    ///accessible via `self[i]` and also by macros and functions. If the Rule is scoped to a
    ///scalar, `self` is bound to the scalar value. Examples: - Rule scoped to a map of objects:
    ///{"rule": "self.components['Widget'].priority < 10"} - Rule scoped to a list of integers:
    ///{"rule": "self.values.all(value, value >= 0 && value < 100)"} - Rule scoped to a string
    ///value: {"rule": "self.startsWith('kube')"}
    ///
    ///The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always
    ///accessible from the root of the object and from any x-kubernetes-embedded-resource
    ///annotated objects. No other metadata properties are accessible.
    ///
    ///Unknown data preserved in custom resources via x-kubernetes-preserve-unknown-fields is
    ///not accessible in CEL expressions. This includes: - Unknown field values that are
    ///preserved by object schemas with x-kubernetes-preserve-unknown-fields. - Object
    ///properties where the property schema is of an "unknown type". An "unknown type" is
    ///recursively defined as:
    ///- A schema with no type and x-kubernetes-preserve-unknown-fields set to true
    ///- An array where the items schema is of an "unknown type"
    ///- An object where the additionalProperties schema is of an "unknown type"
    ///
    ///Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible. Accessible
    ///property names are escaped according to the following rules when accessed in the
    ///expression: - '__' escapes to '__underscores__' - '.' escapes to '__dot__' - '-' escapes
    ///to '__dash__' - '/' escapes to '__slash__' - Property names that exactly match a CEL
    ///RESERVED keyword escape to '__{keyword}__'. The keywords are:
    ///"true", "false", "null", "in", "as", "break", "const", "continue", "else", "for",
    ///"function", "if",
    ///"import", "let", "loop", "package", "namespace", "return".
    ///Examples:
    ///- Rule accessing a property named "namespace": {"rule": "self.__namespace__ > 0"}
    ///- Rule accessing a property named "x-prop": {"rule": "self.x__dash__prop > 0"}
    ///- Rule accessing a property named "redact__d": {"rule": "self.redact__underscores__d >
    ///0"}
    ///
    ///Equality on arrays with x-kubernetes-list-type of 'set' or 'map' ignores element order,
    ///i.e. [1, 2] == [2, 1]. Concatenation on arrays with x-kubernetes-list-type use the
    ///semantics of the list type:
    ///- 'set': `X + Y` performs a union where the array positions of all elements in `X` are
    ///preserved and
    ///non-intersecting elements in `Y` are appended, retaining their partial order.
    ///- 'map': `X + Y` performs a merge where the array positions of all keys in `X` are
    ///preserved but the values
    ///are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in
    ///`Y` with
    ///non-intersecting keys are appended, retaining their partial order.
    ///
    ///If `rule` makes use of the `oldSelf` variable it is implicitly a `transition rule`.
    ///
    ///By default, the `oldSelf` variable is the same type as `self`. When `optionalOldSelf` is
    ///true, the `oldSelf` variable is a CEL optional
    ///variable whose value() is the same type as `self`.
    ///See the documentation for the `optionalOldSelf` field for details.
    ///
    ///Transition rules by default are applied only on UPDATE requests and are skipped if an old
    ///value could not be found. You can opt a transition rule into unconditional evaluation by
    ///setting `optionalOldSelf` to true.
    @JsonKey(name: "rule")
    String rule;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule({
        this.fieldPath,
        this.message,
        this.messageExpression,
        this.optionalOldSelf,
        this.reason,
        required this.rule,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ValidationRuleToJson(this);
}


///SelectableField specifies the JSON path of a field that may be used with field selectors.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField {
    
    ///jsonPath is a simple JSON path which is evaluated against each custom resource to produce
    ///a field selector value. Only JSON paths without the array notation are allowed. Must
    ///point to a field of type string, boolean or integer. Types with enum values and strings
    ///with formats are allowed. If jsonPath refers to absent field in a resource, the jsonPath
    ///evaluates to an empty string. Must not point to metdata fields. Required.
    @JsonKey(name: "jsonPath")
    String jsonPath;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField({
        required this.jsonPath,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableField.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableFieldFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1SelectableFieldToJson(this);
}


///subresources specify what subresources this version of the defined custom resource have.
///
///CustomResourceSubresources defines the status and scale subresources for CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources {
    
    ///scale indicates the custom resource should serve a `/scale` subresource that returns an
    ///`autoscaling/v1` Scale object.
    @JsonKey(name: "scale")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale? scale;
    
    ///status indicates the custom resource should serve a `/status` subresource. When enabled:
    ///1. requests to the custom resource primary endpoint ignore changes to the `status` stanza
    ///of the object. 2. requests to the custom resource `/status` subresource ignore changes to
    ///anything other than the `status` stanza of the object.
    @JsonKey(name: "status")
    Map<String, dynamic>? status;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources({
        this.scale,
        this.status,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourcesToJson(this);
}


///scale indicates the custom resource should serve a `/scale` subresource that returns an
///`autoscaling/v1` Scale object.
///
///CustomResourceSubresourceScale defines how to serve the scale subresource for
///CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale {
    
    ///labelSelectorPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler.
    ///The field pointed by this JSON path must be a string field (not a complex selector
    ///struct) which contains a serialized label selector in string form. More info:
    ///https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource
    ///If there is no value under the given path in the custom resource, the `status.selector`
    ///value in the `/scale` subresource will default to the empty string.
    @JsonKey(name: "labelSelectorPath")
    String? labelSelectorPath;
    
    ///specReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a
    ///JSON Path under `.spec`. If there is no value under the given path in the custom
    ///resource, the `/scale` subresource will return an error on GET.
    @JsonKey(name: "specReplicasPath")
    String specReplicasPath;
    
    ///statusReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status`. If there is no value under the given path in the custom
    ///resource, the `status.replicas` value in the `/scale` subresource will default to 0.
    @JsonKey(name: "statusReplicasPath")
    String statusReplicasPath;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale({
        this.labelSelectorPath,
        required this.specReplicasPath,
        required this.statusReplicasPath,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleToJson(this);
}

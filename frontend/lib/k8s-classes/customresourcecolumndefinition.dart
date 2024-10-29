import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcecolumndefinition.g.dart';


///CustomResourceColumnDefinition specifies a column for server side printing.
@JsonSerializable()
class Customresourcecolumndefinition {
    
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

    Customresourcecolumndefinition({
        this.description,
        this.format,
        required this.jsonPath,
        required this.name,
        this.priority,
        required this.type,
    });

    factory Customresourcecolumndefinition.fromJson(Map<String, dynamic> json) => _$CustomresourcecolumndefinitionFromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcecolumndefinitionToJson(this);
}

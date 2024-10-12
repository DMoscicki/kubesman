import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statuscause_meta_v1.g.dart';


///StatusCause provides more information about an api.Status failure, including cases when
///multiple errors are encountered.
@JsonSerializable()
class StatuscauseMetaV1 {
    
    ///The field of the resource that has caused this error, as named by its JSON serialization.
    ///May include dot and postfix notation for nested attributes. Arrays are zero-indexed.
    ///Fields may appear more than once in an array of causes due to fields having multiple
    ///errors. Optional.
    ///
    ///Examples:
    ///"name" - the field "name" on the current resource
    ///"items[0].name" - the field "name" on the first array entry in "items"
    @JsonKey(name: "field")
    String? field;
    
    ///A human-readable description of the cause of the error.  This field may be presented
    ///as-is to a reader.
    @JsonKey(name: "message")
    String? message;
    
    ///A machine-readable description of the cause of the error. If this value is empty there is
    ///no information available.
    @JsonKey(name: "reason")
    String? reason;

    StatuscauseMetaV1({
        this.field,
        this.message,
        this.reason,
    });

    factory StatuscauseMetaV1.fromJson(Map<String, dynamic> json) => _$StatuscauseMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$StatuscauseMetaV1ToJson(this);
}

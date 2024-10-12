import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'noderuntimehandlerfeatures_v1.g.dart';


///NodeRuntimeHandlerFeatures is a set of runtime features.
@JsonSerializable()
class NoderuntimehandlerfeaturesV1 {
    
    ///RecursiveReadOnlyMounts is set to true if the runtime handler supports
    ///RecursiveReadOnlyMounts.
    @JsonKey(name: "recursiveReadOnlyMounts")
    bool? recursiveReadOnlyMounts;

    NoderuntimehandlerfeaturesV1({
        this.recursiveReadOnlyMounts,
    });

    factory NoderuntimehandlerfeaturesV1.fromJson(Map<String, dynamic> json) => _$NoderuntimehandlerfeaturesV1FromJson(json);

    Map<String, dynamic> toJson() => _$NoderuntimehandlerfeaturesV1ToJson(this);
}

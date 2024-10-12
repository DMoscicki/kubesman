import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'noderuntimehandlerfeatures.g.dart';


///NodeRuntimeHandlerFeatures is a set of runtime features.
@JsonSerializable()
class Noderuntimehandlerfeatures {
    
    ///RecursiveReadOnlyMounts is set to true if the runtime handler supports
    ///RecursiveReadOnlyMounts.
    @JsonKey(name: "recursiveReadOnlyMounts")
    bool? recursiveReadOnlyMounts;

    Noderuntimehandlerfeatures({
        this.recursiveReadOnlyMounts,
    });

    factory Noderuntimehandlerfeatures.fromJson(Map<String, dynamic> json) => _$NoderuntimehandlerfeaturesFromJson(json);

    Map<String, dynamic> toJson() => _$NoderuntimehandlerfeaturesToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'noderuntimehandler.g.dart';


///NodeRuntimeHandler is a set of runtime handler information.
@JsonSerializable()
class Noderuntimehandler {
    
    ///Supported features.
    @JsonKey(name: "features")
    IoK8SApiCoreV1NodeRuntimeHandlerFeatures? features;
    
    ///Runtime handler name. Empty for the default runtime handler.
    @JsonKey(name: "name")
    String? name;

    Noderuntimehandler({
        this.features,
        this.name,
    });

    factory Noderuntimehandler.fromJson(Map<String, dynamic> json) => _$NoderuntimehandlerFromJson(json);

    Map<String, dynamic> toJson() => _$NoderuntimehandlerToJson(this);
}


///Supported features.
///
///NodeRuntimeHandlerFeatures is a set of runtime features.
@JsonSerializable()
class IoK8SApiCoreV1NodeRuntimeHandlerFeatures {
    
    ///RecursiveReadOnlyMounts is set to true if the runtime handler supports
    ///RecursiveReadOnlyMounts.
    @JsonKey(name: "recursiveReadOnlyMounts")
    bool? recursiveReadOnlyMounts;

    IoK8SApiCoreV1NodeRuntimeHandlerFeatures({
        this.recursiveReadOnlyMounts,
    });

    factory IoK8SApiCoreV1NodeRuntimeHandlerFeatures.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesToJson(this);
}

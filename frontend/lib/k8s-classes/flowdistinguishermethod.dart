import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowdistinguishermethod.g.dart';


///FlowDistinguisherMethod specifies the method of a flow distinguisher.
@JsonSerializable()
class Flowdistinguishermethod {
    
    ///`type` is the type of flow distinguisher method The supported types are "ByUser" and
    ///"ByNamespace". Required.
    @JsonKey(name: "type")
    String? type;

    Flowdistinguishermethod({
        required this.type,
    });

    factory Flowdistinguishermethod.fromJson(Map<String, dynamic> json) => _$FlowdistinguishermethodFromJson(json);

    Map<String, dynamic> toJson() => _$FlowdistinguishermethodToJson(this);
}

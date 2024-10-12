import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podos_v1.g.dart';


///PodOS defines the OS parameters of a pod.
@JsonSerializable()
class PodosV1 {
    
    ///Name is the name of the operating system. The currently supported values are linux and
    ///windows. Additional value may be defined in future and can be one of:
    ///https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration
    ///Clients should expect to handle additional values and treat unrecognized values in this
    ///field as os: null
    @JsonKey(name: "name")
    String? name;

    PodosV1({
        required this.name,
    });

    factory PodosV1.fromJson(Map<String, dynamic> json) => _$PodosV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodosV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'uncountedterminatedpods.g.dart';


///UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been
///accounted in Job status counters.
@JsonSerializable()
class Uncountedterminatedpods {
    
    ///failed holds UIDs of failed Pods.
    @JsonKey(name: "failed")
    List<String?>? failed;
    
    ///succeeded holds UIDs of succeeded Pods.
    @JsonKey(name: "succeeded")
    List<String?>? succeeded;

    Uncountedterminatedpods({
        this.failed,
        this.succeeded,
    });

    factory Uncountedterminatedpods.fromJson(Map<String, dynamic> json) => _$UncountedterminatedpodsFromJson(json);

    Map<String, dynamic> toJson() => _$UncountedterminatedpodsToJson(this);
}

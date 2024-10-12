import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'uncountedterminatedpods_batch_v1.g.dart';


///UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been
///accounted in Job status counters.
@JsonSerializable()
class UncountedterminatedpodsBatchV1 {
    
    ///failed holds UIDs of failed Pods.
    @JsonKey(name: "failed")
    List<String?>? failed;
    
    ///succeeded holds UIDs of succeeded Pods.
    @JsonKey(name: "succeeded")
    List<String?>? succeeded;

    UncountedterminatedpodsBatchV1({
        this.failed,
        this.succeeded,
    });

    factory UncountedterminatedpodsBatchV1.fromJson(Map<String, dynamic> json) => _$UncountedterminatedpodsBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$UncountedterminatedpodsBatchV1ToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'preconditions_meta_v1.g.dart';


///Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
@JsonSerializable()
class PreconditionsMetaV1 {
    
    ///Specifies the target ResourceVersion
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Specifies the target UID.
    @JsonKey(name: "uid")
    String? uid;

    PreconditionsMetaV1({
        this.resourceVersion,
        this.uid,
    });

    factory PreconditionsMetaV1.fromJson(Map<String, dynamic> json) => _$PreconditionsMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$PreconditionsMetaV1ToJson(this);
}

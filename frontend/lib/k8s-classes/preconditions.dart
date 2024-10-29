import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'preconditions.g.dart';


///Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
@JsonSerializable()
class Preconditions {
    
    ///Specifies the target ResourceVersion
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Specifies the target UID.
    @JsonKey(name: "uid")
    String? uid;

    Preconditions({
        this.resourceVersion,
        this.uid,
    });

    factory Preconditions.fromJson(Map<String, dynamic> json) => _$PreconditionsFromJson(json);

    Map<String, dynamic> toJson() => _$PreconditionsToJson(this);
}

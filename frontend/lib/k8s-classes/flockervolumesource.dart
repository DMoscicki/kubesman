import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flockervolumesource.g.dart';


///Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName
///and datasetUUID should be set. Flocker volumes do not support ownership management or
///SELinux relabeling.
@JsonSerializable()
class Flockervolumesource {
    
    ///datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker
    ///should be considered as deprecated
    @JsonKey(name: "datasetName")
    String? datasetName;
    
    ///datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
    @JsonKey(name: "datasetUUID")
    String? datasetUuid;

    Flockervolumesource({
        this.datasetName,
        this.datasetUuid,
    });

    factory Flockervolumesource.fromJson(Map<String, dynamic> json) => _$FlockervolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$FlockervolumesourceToJson(this);
}

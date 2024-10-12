import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerimage_v1.g.dart';


///Describe a container image
@JsonSerializable()
class ContainerimageV1 {
    
    ///Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7",
    ///"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
    @JsonKey(name: "names")
    List<String?>? names;
    
    ///The size of the image in bytes.
    @JsonKey(name: "sizeBytes")
    int? sizeBytes;

    ContainerimageV1({
        this.names,
        this.sizeBytes,
    });

    factory ContainerimageV1.fromJson(Map<String, dynamic> json) => _$ContainerimageV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerimageV1ToJson(this);
}

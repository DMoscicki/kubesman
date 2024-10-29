import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerimage.g.dart';


///Describe a container image
@JsonSerializable()
class Containerimage {
    
    ///Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7",
    ///"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"]
    @JsonKey(name: "names")
    List<String?>? names;
    
    ///The size of the image in bytes.
    @JsonKey(name: "sizeBytes")
    int? sizeBytes;

    Containerimage({
        this.names,
        this.sizeBytes,
    });

    factory Containerimage.fromJson(Map<String, dynamic> json) => _$ContainerimageFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerimageToJson(this);
}

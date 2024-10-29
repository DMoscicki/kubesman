import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'azurefilevolumesource.g.dart';


///AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
@JsonSerializable()
class Azurefilevolumesource {
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretName is the  name of secret that contains Azure Storage Account Name and Key
    @JsonKey(name: "secretName")
    String? secretName;
    
    ///shareName is the azure share Name
    @JsonKey(name: "shareName")
    String? shareName;

    Azurefilevolumesource({
        this.readOnly,
        required this.secretName,
        required this.shareName,
    });

    factory Azurefilevolumesource.fromJson(Map<String, dynamic> json) => _$AzurefilevolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$AzurefilevolumesourceToJson(this);
}

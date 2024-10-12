import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'azurefilepersistentvolumesource.g.dart';


///AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
@JsonSerializable()
class Azurefilepersistentvolumesource {
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretName is the name of secret that contains Azure Storage Account Name and Key
    @JsonKey(name: "secretName")
    String? secretName;
    
    ///secretNamespace is the namespace of the secret that contains Azure Storage Account Name
    ///and Key default is the same as the Pod
    @JsonKey(name: "secretNamespace")
    String? secretNamespace;
    
    ///shareName is the azure Share Name
    @JsonKey(name: "shareName")
    String? shareName;

    Azurefilepersistentvolumesource({
        this.readOnly,
        required this.secretName,
        this.secretNamespace,
        required this.shareName,
    });

    factory Azurefilepersistentvolumesource.fromJson(Map<String, dynamic> json) => _$AzurefilepersistentvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$AzurefilepersistentvolumesourceToJson(this);
}

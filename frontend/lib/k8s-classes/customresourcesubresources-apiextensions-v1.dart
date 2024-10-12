import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'customresourcesubresources_apiextensions_v1.g.dart';


///CustomResourceSubresources defines the status and scale subresources for CustomResources.
@JsonSerializable()
class CustomresourcesubresourcesApiextensionsV1 {
    
    ///scale indicates the custom resource should serve a `/scale` subresource that returns an
    ///`autoscaling/v1` Scale object.
    @JsonKey(name: "scale")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale? scale;
    
    ///status indicates the custom resource should serve a `/status` subresource. When enabled:
    ///1. requests to the custom resource primary endpoint ignore changes to the `status` stanza
    ///of the object. 2. requests to the custom resource `/status` subresource ignore changes to
    ///anything other than the `status` stanza of the object.
    @JsonKey(name: "status")
    Map<String, dynamic>? status;

    CustomresourcesubresourcesApiextensionsV1({
        this.scale,
        this.status,
    });

    factory CustomresourcesubresourcesApiextensionsV1.fromJson(Map<String, dynamic> json) => _$CustomresourcesubresourcesApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$CustomresourcesubresourcesApiextensionsV1ToJson(this);
}


///scale indicates the custom resource should serve a `/scale` subresource that returns an
///`autoscaling/v1` Scale object.
///
///CustomResourceSubresourceScale defines how to serve the scale subresource for
///CustomResources.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale {
    
    ///labelSelectorPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.selector`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status` or `.spec`. Must be set to work with HorizontalPodAutoscaler.
    ///The field pointed by this JSON path must be a string field (not a complex selector
    ///struct) which contains a serialized label selector in string form. More info:
    ///https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource
    ///If there is no value under the given path in the custom resource, the `status.selector`
    ///value in the `/scale` subresource will default to the empty string.
    @JsonKey(name: "labelSelectorPath")
    String? labelSelectorPath;
    
    ///specReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `spec.replicas`. Only JSON paths without the array notation are allowed. Must be a
    ///JSON Path under `.spec`. If there is no value under the given path in the custom
    ///resource, the `/scale` subresource will return an error on GET.
    @JsonKey(name: "specReplicasPath")
    String specReplicasPath;
    
    ///statusReplicasPath defines the JSON path inside of a custom resource that corresponds to
    ///Scale `status.replicas`. Only JSON paths without the array notation are allowed. Must be
    ///a JSON Path under `.status`. If there is no value under the given path in the custom
    ///resource, the `status.replicas` value in the `/scale` subresource will default to 0.
    @JsonKey(name: "statusReplicasPath")
    String statusReplicasPath;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale({
        this.labelSelectorPath,
        required this.specReplicasPath,
        required this.statusReplicasPath,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleToJson(this);
}

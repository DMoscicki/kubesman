import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'webhookconversion.g.dart';


///WebhookConversion describes how to call a conversion webhook
@JsonSerializable()
class Webhookconversion {
    
    ///clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
    @JsonKey(name: "clientConfig")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig? clientConfig;
    
    ///conversionReviewVersions is an ordered list of preferred `ConversionReview` versions the
    ///Webhook expects. The API server will use the first version in the list which it supports.
    ///If none of the versions specified in this list are supported by API server, conversion
    ///will fail for the custom resource. If a persisted Webhook configuration specifies allowed
    ///versions and does not include any versions known to the API Server, calls to the webhook
    ///will fail.
    @JsonKey(name: "conversionReviewVersions")
    List<String?>? conversionReviewVersions;

    Webhookconversion({
        this.clientConfig,
        required this.conversionReviewVersions,
    });

    factory Webhookconversion.fromJson(Map<String, dynamic> json) => _$WebhookconversionFromJson(json);

    Map<String, dynamic> toJson() => _$WebhookconversionToJson(this);
}


///clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
///
///WebhookClientConfig contains the information to make a TLS connection with the webhook.
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig {
    
    ///caBundle is a PEM encoded CA bundle which will be used to validate the webhook's server
    ///certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///service is a reference to the service for this webhook. Either service or url must be
    ///specified.
    ///
    ///If the webhook is running within the cluster, then you should use `service`.
    @JsonKey(name: "service")
    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference? service;
    
    ///url gives the location of the webhook, in standard URL form (`scheme://host:port/path`).
    ///Exactly one of `url` or `service` must be specified.
    ///
    ///The `host` should not refer to a service running in the cluster; use the `service` field
    ///instead. The host might be resolved via external DNS in some apiservers (e.g.,
    ///`kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation).
    ///`host` may also be an IP address.
    ///
    ///Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take
    ///great care to run this webhook on all hosts which run an apiserver which might need to
    ///make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy
    ///to turn up in a new cluster.
    ///
    ///The scheme must be "https"; the URL must begin with "https://".
    ///
    ///A path is optional, and if present may be any string permissible in a URL. You may use
    ///the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
    ///
    ///Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments
    ///("#...") and query parameters ("?...") are not allowed, either.
    @JsonKey(name: "url")
    String? url;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig({
        this.caBundle,
        this.service,
        this.url,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigToJson(this);
}


///service is a reference to the service for this webhook. Either service or url must be
///specified.
///
///If the webhook is running within the cluster, then you should use `service`.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference {
    
    ///name is the name of the service. Required
    @JsonKey(name: "name")
    String name;
    
    ///namespace is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String namespace;
    
    ///path is an optional URL path at which the webhook will be contacted.
    @JsonKey(name: "path")
    String? path;
    
    ///port is an optional service port at which the webhook will be contacted. `port` should be
    ///a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
    @JsonKey(name: "port")
    int? port;

    IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceToJson(this);
}

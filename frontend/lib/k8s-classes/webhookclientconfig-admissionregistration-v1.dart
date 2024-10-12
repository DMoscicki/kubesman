import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'webhookclientconfig_admissionregistration_v1.g.dart';


///WebhookClientConfig contains the information to make a TLS connection with the webhook
@JsonSerializable()
class WebhookclientconfigAdmissionregistrationV1 {
    
    ///`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server
    ///certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///`service` is a reference to the service for this webhook. Either `service` or `url` must
    ///be specified.
    ///
    ///If the webhook is running within the cluster, then you should use `service`.
    @JsonKey(name: "service")
    IoK8SApiAdmissionregistrationV1ServiceReference? service;
    
    ///`url` gives the location of the webhook, in standard URL form
    ///(`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.
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

    WebhookclientconfigAdmissionregistrationV1({
        this.caBundle,
        this.service,
        this.url,
    });

    factory WebhookclientconfigAdmissionregistrationV1.fromJson(Map<String, dynamic> json) => _$WebhookclientconfigAdmissionregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$WebhookclientconfigAdmissionregistrationV1ToJson(this);
}


///`service` is a reference to the service for this webhook. Either `service` or `url` must
///be specified.
///
///If the webhook is running within the cluster, then you should use `service`.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ServiceReference {
    
    ///`name` is the name of the service. Required
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String namespace;
    
    ///`path` is an optional URL path which will be sent in any request to this service.
    @JsonKey(name: "path")
    String? path;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    IoK8SApiAdmissionregistrationV1ServiceReference({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory IoK8SApiAdmissionregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ServiceReferenceToJson(this);
}

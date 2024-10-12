import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'servicespec.g.dart';


///ServiceSpec describes the attributes that a user creates on a service.
@JsonSerializable()
class Servicespec {
    
    ///allocateLoadBalancerNodePorts defines if NodePorts will be automatically allocated for
    ///services with type LoadBalancer.  Default is "true". It may be set to "false" if the
    ///cluster load-balancer does not rely on NodePorts.  If the caller requests specific
    ///NodePorts (by specifying a value), those requests will be respected, regardless of this
    ///field. This field may only be set for services with type LoadBalancer and will be cleared
    ///if the type is changed to any other type.
    @JsonKey(name: "allocateLoadBalancerNodePorts")
    bool? allocateLoadBalancerNodePorts;
    
    ///clusterIP is the IP address of the service and is usually assigned randomly. If an
    ///address is specified manually, is in-range (as per system configuration), and is not in
    ///use, it will be allocated to the service; otherwise creation of the service will fail.
    ///This field may not be changed through updates unless the type field is also being changed
    ///to ExternalName (which requires this field to be blank) or the type field is being
    ///changed from ExternalName (in which case this field may optionally be specified, as
    ///describe above).  Valid values are "None", empty string (""), or a valid IP address.
    ///Setting this to "None" makes a "headless service" (no virtual IP), which is useful when
    ///direct endpoint connections are preferred and proxying is not required.  Only applies to
    ///types ClusterIP, NodePort, and LoadBalancer. If this field is specified when creating a
    ///Service of type ExternalName, creation will fail. This field will be wiped when updating
    ///a Service to type ExternalName. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "clusterIP")
    String? clusterIp;
    
    ///ClusterIPs is a list of IP addresses assigned to this service, and are usually assigned
    ///randomly.  If an address is specified manually, is in-range (as per system
    ///configuration), and is not in use, it will be allocated to the service; otherwise
    ///creation of the service will fail. This field may not be changed through updates unless
    ///the type field is also being changed to ExternalName (which requires this field to be
    ///empty) or the type field is being changed from ExternalName (in which case this field may
    ///optionally be specified, as describe above).  Valid values are "None", empty string (""),
    ///or a valid IP address.  Setting this to "None" makes a "headless service" (no virtual
    ///IP), which is useful when direct endpoint connections are preferred and proxying is not
    ///required.  Only applies to types ClusterIP, NodePort, and LoadBalancer. If this field is
    ///specified when creating a Service of type ExternalName, creation will fail. This field
    ///will be wiped when updating a Service to type ExternalName.  If this field is not
    ///specified, it will be initialized from the clusterIP field.  If this field is specified,
    ///clients must ensure that clusterIPs[0] and clusterIP have the same value.
    ///
    ///This field may hold a maximum of two entries (dual-stack IPs, in either order). These IPs
    ///must correspond to the values of the ipFamilies field. Both clusterIPs and ipFamilies are
    ///governed by the ipFamilyPolicy field. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "clusterIPs")
    List<String?>? clusterIPs;
    
    ///externalIPs is a list of IP addresses for which nodes in the cluster will also accept
    ///traffic for this service.  These IPs are not managed by Kubernetes.  The user is
    ///responsible for ensuring that traffic arrives at a node with this IP.  A common example
    ///is external load-balancers that are not part of the Kubernetes system.
    @JsonKey(name: "externalIPs")
    List<String?>? externalIPs;
    
    ///externalName is the external reference that discovery mechanisms will return as an alias
    ///for this service (e.g. a DNS CNAME record). No proxying will be involved.  Must be a
    ///lowercase RFC-1123 hostname (https://tools.ietf.org/html/rfc1123) and requires `type` to
    ///be "ExternalName".
    @JsonKey(name: "externalName")
    String? externalName;
    
    ///externalTrafficPolicy describes how nodes distribute service traffic they receive on one
    ///of the Service's "externally-facing" addresses (NodePorts, ExternalIPs, and LoadBalancer
    ///IPs). If set to "Local", the proxy will configure the service in a way that assumes that
    ///external load balancers will take care of balancing the service traffic between nodes,
    ///and so each node will deliver traffic only to the node-local endpoints of the service,
    ///without masquerading the client source IP. (Traffic mistakenly sent to a node with no
    ///endpoints will be dropped.) The default value, "Cluster", uses the standard behavior of
    ///routing to all endpoints evenly (possibly modified by topology and other features). Note
    ///that traffic sent to an External IP or LoadBalancer IP from within the cluster will
    ///always get "Cluster" semantics, but clients sending to a NodePort from within the cluster
    ///may need to take traffic policy into account when picking a node.
    @JsonKey(name: "externalTrafficPolicy")
    String? externalTrafficPolicy;
    
    ///healthCheckNodePort specifies the healthcheck nodePort for the service. This only applies
    ///when type is set to LoadBalancer and externalTrafficPolicy is set to Local. If a value is
    ///specified, is in-range, and is not in use, it will be used.  If not specified, a value
    ///will be automatically allocated.  External systems (e.g. load-balancers) can use this
    ///port to determine if a given node holds endpoints for this service or not.  If this field
    ///is specified when creating a Service which does not need it, creation will fail. This
    ///field will be wiped when updating a Service to no longer need it (e.g. changing type).
    ///This field cannot be updated once set.
    @JsonKey(name: "healthCheckNodePort")
    int? healthCheckNodePort;
    
    ///InternalTrafficPolicy describes how nodes distribute service traffic they receive on the
    ///ClusterIP. If set to "Local", the proxy will assume that pods only want to talk to
    ///endpoints of the service on the same node as the pod, dropping the traffic if there are
    ///no local endpoints. The default value, "Cluster", uses the standard behavior of routing
    ///to all endpoints evenly (possibly modified by topology and other features).
    @JsonKey(name: "internalTrafficPolicy")
    String? internalTrafficPolicy;
    
    ///IPFamilies is a list of IP families (e.g. IPv4, IPv6) assigned to this service. This
    ///field is usually assigned automatically based on cluster configuration and the
    ///ipFamilyPolicy field. If this field is specified manually, the requested family is
    ///available in the cluster, and ipFamilyPolicy allows it, it will be used; otherwise
    ///creation of the service will fail. This field is conditionally mutable: it allows for
    ///adding or removing a secondary IP family, but it does not allow changing the primary IP
    ///family of the Service. Valid values are "IPv4" and "IPv6".  This field only applies to
    ///Services of types ClusterIP, NodePort, and LoadBalancer, and does apply to "headless"
    ///services. This field will be wiped when updating a Service to type ExternalName.
    ///
    ///This field may hold a maximum of two entries (dual-stack families, in either order).
    ///These families must correspond to the values of the clusterIPs field, if specified. Both
    ///clusterIPs and ipFamilies are governed by the ipFamilyPolicy field.
    @JsonKey(name: "ipFamilies")
    List<String?>? ipFamilies;
    
    ///IPFamilyPolicy represents the dual-stack-ness requested or required by this Service. If
    ///there is no value provided, then this field will be set to SingleStack. Services can be
    ///"SingleStack" (a single IP family), "PreferDualStack" (two IP families on dual-stack
    ///configured clusters or a single IP family on single-stack clusters), or
    ///"RequireDualStack" (two IP families on dual-stack configured clusters, otherwise fail).
    ///The ipFamilies and clusterIPs fields depend on the value of this field. This field will
    ///be wiped when updating a service to type ExternalName.
    @JsonKey(name: "ipFamilyPolicy")
    String? ipFamilyPolicy;
    
    ///loadBalancerClass is the class of the load balancer implementation this Service belongs
    ///to. If specified, the value of this field must be a label-style identifier, with an
    ///optional prefix, e.g. "internal-vip" or "example.com/internal-vip". Unprefixed names are
    ///reserved for end-users. This field can only be set when the Service type is
    ///'LoadBalancer'. If not set, the default load balancer implementation is used, today this
    ///is typically done through the cloud provider integration, but should apply for any
    ///default implementation. If set, it is assumed that a load balancer implementation is
    ///watching for Services with a matching class. Any default load balancer implementation
    ///(e.g. cloud providers) should ignore Services that set this field. This field can only be
    ///set when creating or updating a Service to type 'LoadBalancer'. Once set, it can not be
    ///changed. This field will be wiped when a service is updated to a non 'LoadBalancer' type.
    @JsonKey(name: "loadBalancerClass")
    String? loadBalancerClass;
    
    ///Only applies to Service Type: LoadBalancer. This feature depends on whether the
    ///underlying cloud-provider supports specifying the loadBalancerIP when a load balancer is
    ///created. This field will be ignored if the cloud-provider does not support the feature.
    ///Deprecated: This field was under-specified and its meaning varies across implementations.
    ///Using it is non-portable and it may not support dual-stack. Users are encouraged to use
    ///implementation-specific annotations when available.
    @JsonKey(name: "loadBalancerIP")
    String? loadBalancerIp;
    
    ///If specified and supported by the platform, this will restrict traffic through the
    ///cloud-provider load-balancer will be restricted to the specified client IPs. This field
    ///will be ignored if the cloud-provider does not support the feature." More info:
    ///https://kubernetes.io/docs/tasks/access-application-cluster/create-external-load-balancer/
    @JsonKey(name: "loadBalancerSourceRanges")
    List<String?>? loadBalancerSourceRanges;
    
    ///The list of ports that are exposed by this service. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1ServicePort>? ports;
    
    ///publishNotReadyAddresses indicates that any agent which deals with endpoints for this
    ///Service should disregard any indications of ready/not-ready. The primary use case for
    ///setting this field is for a StatefulSet's Headless Service to propagate SRV DNS records
    ///for its Pods for the purpose of peer discovery. The Kubernetes controllers that generate
    ///Endpoints and EndpointSlice resources for Services interpret this to mean that all
    ///endpoints are considered "ready" even if the Pods themselves are not. Agents which
    ///consume only Kubernetes generated endpoints through the Endpoints or EndpointSlice
    ///resources can safely assume this behavior.
    @JsonKey(name: "publishNotReadyAddresses")
    bool? publishNotReadyAddresses;
    
    ///Route service traffic to pods with label keys and values matching this selector. If empty
    ///or not present, the service is assumed to have an external process managing its
    ///endpoints, which Kubernetes will not modify. Only applies to types ClusterIP, NodePort,
    ///and LoadBalancer. Ignored if type is ExternalName. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/
    @JsonKey(name: "selector")
    Map<String, String?>? selector;
    
    ///Supports "ClientIP" and "None". Used to maintain session affinity. Enable client IP based
    ///session affinity. Must be ClientIP or None. Defaults to None. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#virtual-ips-and-service-proxies
    @JsonKey(name: "sessionAffinity")
    String? sessionAffinity;
    
    ///sessionAffinityConfig contains the configurations of session affinity.
    @JsonKey(name: "sessionAffinityConfig")
    IoK8SApiCoreV1SessionAffinityConfig? sessionAffinityConfig;
    
    ///TrafficDistribution offers a way to express preferences for how traffic is distributed to
    ///Service endpoints. Implementations can use this field as a hint, but are not required to
    ///guarantee strict adherence. If the field is not set, the implementation will apply its
    ///default routing strategy. If set to "PreferClose", implementations should prioritize
    ///endpoints that are topologically close (e.g., same zone). This is an alpha field and
    ///requires enabling ServiceTrafficDistribution feature.
    @JsonKey(name: "trafficDistribution")
    String? trafficDistribution;
    
    ///type determines how the Service is exposed. Defaults to ClusterIP. Valid options are
    ///ExternalName, ClusterIP, NodePort, and LoadBalancer. "ClusterIP" allocates a
    ///cluster-internal IP address for load-balancing to endpoints. Endpoints are determined by
    ///the selector or if that is not specified, by manual construction of an Endpoints object
    ///or EndpointSlice objects. If clusterIP is "None", no virtual IP is allocated and the
    ///endpoints are published as a set of endpoints rather than a virtual IP. "NodePort" builds
    ///on ClusterIP and allocates a port on every node which routes to the same endpoints as the
    ///clusterIP. "LoadBalancer" builds on NodePort and creates an external load-balancer (if
    ///supported in the current cloud) which routes to the same endpoints as the clusterIP.
    ///"ExternalName" aliases this service to the specified externalName. Several other fields
    ///do not apply to ExternalName services. More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types
    @JsonKey(name: "type")
    String? type;

    Servicespec({
        this.allocateLoadBalancerNodePorts,
        this.clusterIp,
        this.clusterIPs,
        this.externalIPs,
        this.externalName,
        this.externalTrafficPolicy,
        this.healthCheckNodePort,
        this.internalTrafficPolicy,
        this.ipFamilies,
        this.ipFamilyPolicy,
        this.loadBalancerClass,
        this.loadBalancerIp,
        this.loadBalancerSourceRanges,
        this.ports,
        this.publishNotReadyAddresses,
        this.selector,
        this.sessionAffinity,
        this.sessionAffinityConfig,
        this.trafficDistribution,
        this.type,
    });

    factory Servicespec.fromJson(Map<String, dynamic> json) => _$ServicespecFromJson(json);

    Map<String, dynamic> toJson() => _$ServicespecToJson(this);
}


///ServicePort contains information on service's port.
@JsonSerializable()
class IoK8SApiCoreV1ServicePort {
    
    ///The application protocol for this port. This is used as a hint for implementations to
    ///offer richer behavior for protocols that they understand. This field follows standard
    ///Kubernetes label syntax. Valid values are either:
    ///
    ///* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335
    ///and https://www.iana.org/assignments/service-names).
    ///
    ///* Kubernetes-defined prefixed names:
    ///* 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
    ///* 'kubernetes.io/ws'  - WebSocket over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///* 'kubernetes.io/wss' - WebSocket over TLS as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///
    ///* Other protocols should use implementation-defined prefixed names such as
    ///mycompany.com/my-custom-protocol.
    @JsonKey(name: "appProtocol")
    String? appProtocol;
    
    ///The name of this port within the service. This must be a DNS_LABEL. All ports within a
    ///ServiceSpec must have unique names. When considering the endpoints for a Service, this
    ///must match the 'name' field in the EndpointPort. Optional if only one ServicePort is
    ///defined on this service.
    @JsonKey(name: "name")
    String? name;
    
    ///The port on each node on which this service is exposed when type is NodePort or
    ///LoadBalancer.  Usually assigned by the system. If a value is specified, in-range, and not
    ///in use it will be used, otherwise the operation will fail.  If not specified, a port will
    ///be allocated if this Service requires one.  If this field is specified when creating a
    ///Service which does not need it, creation will fail. This field will be wiped when
    ///updating a Service to no longer need it (e.g. changing type from NodePort to ClusterIP).
    ///More info: https://kubernetes.io/docs/concepts/services-networking/service/#type-nodeport
    @JsonKey(name: "nodePort")
    int? nodePort;
    
    ///The port that will be exposed by this service.
    @JsonKey(name: "port")
    int port;
    
    ///The IP protocol for this port. Supports "TCP", "UDP", and "SCTP". Default is TCP.
    @JsonKey(name: "protocol")
    String? protocol;
    
    ///Number or name of the port to access on the pods targeted by the service. Number must be
    ///in the range 1 to 65535. Name must be an IANA_SVC_NAME. If this is a string, it will be
    ///looked up as a named port in the target Pod's container ports. If this is not specified,
    ///the value of the 'port' field is used (an identity map). This field is ignored for
    ///services with clusterIP=None, and should be omitted or set equal to the 'port' field.
    ///More info:
    ///https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
    @JsonKey(name: "targetPort")
    dynamic targetPort;

    IoK8SApiCoreV1ServicePort({
        this.appProtocol,
        this.name,
        this.nodePort,
        required this.port,
        this.protocol,
        this.targetPort,
    });

    factory IoK8SApiCoreV1ServicePort.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServicePortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServicePortToJson(this);
}


///sessionAffinityConfig contains the configurations of session affinity.
///
///SessionAffinityConfig represents the configurations of session affinity.
@JsonSerializable()
class IoK8SApiCoreV1SessionAffinityConfig {
    
    ///clientIP contains the configurations of Client IP based session affinity.
    @JsonKey(name: "clientIP")
    IoK8SApiCoreV1ClientIpConfig? clientIp;

    IoK8SApiCoreV1SessionAffinityConfig({
        this.clientIp,
    });

    factory IoK8SApiCoreV1SessionAffinityConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SessionAffinityConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SessionAffinityConfigToJson(this);
}


///clientIP contains the configurations of Client IP based session affinity.
///
///ClientIPConfig represents the configurations of Client IP based session affinity.
@JsonSerializable()
class IoK8SApiCoreV1ClientIpConfig {
    
    ///timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must
    ///be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for
    ///3 hours).
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    IoK8SApiCoreV1ClientIpConfig({
        this.timeoutSeconds,
    });

    factory IoK8SApiCoreV1ClientIpConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClientIpConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClientIpConfigToJson(this);
}

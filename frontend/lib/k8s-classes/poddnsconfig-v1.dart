import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'poddnsconfig_v1.g.dart';


///PodDNSConfig defines the DNS parameters of a pod in addition to those generated from
///DNSPolicy.
@JsonSerializable()
class PoddnsconfigV1 {
    
    ///A list of DNS name server IP addresses. This will be appended to the base nameservers
    ///generated from DNSPolicy. Duplicated nameservers will be removed.
    @JsonKey(name: "nameservers")
    List<String?>? nameservers;
    
    ///A list of DNS resolver options. This will be merged with the base options generated from
    ///DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will
    ///override those that appear in the base DNSPolicy.
    @JsonKey(name: "options")
    List<IoK8SApiCoreV1PodDnsConfigOption>? options;
    
    ///A list of DNS search domains for host-name lookup. This will be appended to the base
    ///search paths generated from DNSPolicy. Duplicated search paths will be removed.
    @JsonKey(name: "searches")
    List<String?>? searches;

    PoddnsconfigV1({
        this.nameservers,
        this.options,
        this.searches,
    });

    factory PoddnsconfigV1.fromJson(Map<String, dynamic> json) => _$PoddnsconfigV1FromJson(json);

    Map<String, dynamic> toJson() => _$PoddnsconfigV1ToJson(this);
}


///PodDNSConfigOption defines DNS resolver options of a pod.
@JsonSerializable()
class IoK8SApiCoreV1PodDnsConfigOption {
    
    ///Required.
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1PodDnsConfigOption({
        this.name,
        this.value,
    });

    factory IoK8SApiCoreV1PodDnsConfigOption.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodDnsConfigOptionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodDnsConfigOptionToJson(this);
}

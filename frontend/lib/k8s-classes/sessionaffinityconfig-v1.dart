import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'sessionaffinityconfig_v1.g.dart';


///SessionAffinityConfig represents the configurations of session affinity.
@JsonSerializable()
class SessionaffinityconfigV1 {
    
    ///clientIP contains the configurations of Client IP based session affinity.
    @JsonKey(name: "clientIP")
    IoK8SApiCoreV1ClientIpConfig? clientIp;

    SessionaffinityconfigV1({
        this.clientIp,
    });

    factory SessionaffinityconfigV1.fromJson(Map<String, dynamic> json) => _$SessionaffinityconfigV1FromJson(json);

    Map<String, dynamic> toJson() => _$SessionaffinityconfigV1ToJson(this);
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

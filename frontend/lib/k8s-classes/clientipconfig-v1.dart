import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'clientipconfig_v1.g.dart';


///ClientIPConfig represents the configurations of Client IP based session affinity.
@JsonSerializable()
class ClientipconfigV1 {
    
    ///timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must
    ///be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for
    ///3 hours).
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    ClientipconfigV1({
        this.timeoutSeconds,
    });

    factory ClientipconfigV1.fromJson(Map<String, dynamic> json) => _$ClientipconfigV1FromJson(json);

    Map<String, dynamic> toJson() => _$ClientipconfigV1ToJson(this);
}

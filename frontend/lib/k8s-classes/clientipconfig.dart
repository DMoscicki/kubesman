import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'clientipconfig.g.dart';


///ClientIPConfig represents the configurations of Client IP based session affinity.
@JsonSerializable()
class Clientipconfig {
    
    ///timeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must
    ///be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for
    ///3 hours).
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    Clientipconfig({
        this.timeoutSeconds,
    });

    factory Clientipconfig.fromJson(Map<String, dynamic> json) => _$ClientipconfigFromJson(json);

    Map<String, dynamic> toJson() => _$ClientipconfigToJson(this);
}

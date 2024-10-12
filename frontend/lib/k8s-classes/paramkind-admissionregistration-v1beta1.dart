import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'paramkind_admissionregistration_v1_beta1.g.dart';


///ParamKind is a tuple of Group Kind and Version.
@JsonSerializable()
class ParamkindAdmissionregistrationV1Beta1 {
    
    ///APIVersion is the API group version the resources belong to. In format of
    ///"group/version". Required.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is the API kind the resources belong to. Required.
    @JsonKey(name: "kind")
    String? kind;

    ParamkindAdmissionregistrationV1Beta1({
        this.apiVersion,
        this.kind,
    });

    factory ParamkindAdmissionregistrationV1Beta1.fromJson(Map<String, dynamic> json) => _$ParamkindAdmissionregistrationV1Beta1FromJson(json);

    Map<String, dynamic> toJson() => _$ParamkindAdmissionregistrationV1Beta1ToJson(this);
}

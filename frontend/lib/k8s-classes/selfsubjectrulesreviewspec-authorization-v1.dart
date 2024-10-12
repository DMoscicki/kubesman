import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selfsubjectrulesreviewspec_authorization_v1.g.dart';


///SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
@JsonSerializable()
class SelfsubjectrulesreviewspecAuthorizationV1 {
    
    ///Namespace to evaluate rules for. Required.
    @JsonKey(name: "namespace")
    String? namespace;

    SelfsubjectrulesreviewspecAuthorizationV1({
        this.namespace,
    });

    factory SelfsubjectrulesreviewspecAuthorizationV1.fromJson(Map<String, dynamic> json) => _$SelfsubjectrulesreviewspecAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$SelfsubjectrulesreviewspecAuthorizationV1ToJson(this);
}

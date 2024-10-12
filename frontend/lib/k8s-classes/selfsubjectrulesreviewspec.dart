import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selfsubjectrulesreviewspec.g.dart';


///SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
@JsonSerializable()
class Selfsubjectrulesreviewspec {
    
    ///Namespace to evaluate rules for. Required.
    @JsonKey(name: "namespace")
    String? namespace;

    Selfsubjectrulesreviewspec({
        this.namespace,
    });

    factory Selfsubjectrulesreviewspec.fromJson(Map<String, dynamic> json) => _$SelfsubjectrulesreviewspecFromJson(json);

    Map<String, dynamic> toJson() => _$SelfsubjectrulesreviewspecToJson(this);
}

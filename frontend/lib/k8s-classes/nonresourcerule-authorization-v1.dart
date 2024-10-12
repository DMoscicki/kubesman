import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nonresourcerule_authorization_v1.g.dart';


///NonResourceRule holds information that describes a rule for the non-resource
@JsonSerializable()
class NonresourceruleAuthorizationV1 {
    
    ///NonResourceURLs is a set of partial urls that a user should have access to.  *s are
    ///allowed, but only as the full, final step in the path.  "*" means all.
    @JsonKey(name: "nonResourceURLs")
    List<String?>? nonResourceUrLs;
    
    ///Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch,
    ///head, options.  "*" means all.
    @JsonKey(name: "verbs")
    List<String?>? verbs;

    NonresourceruleAuthorizationV1({
        this.nonResourceUrLs,
        required this.verbs,
    });

    factory NonresourceruleAuthorizationV1.fromJson(Map<String, dynamic> json) => _$NonresourceruleAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$NonresourceruleAuthorizationV1ToJson(this);
}

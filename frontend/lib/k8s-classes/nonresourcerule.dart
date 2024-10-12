import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nonresourcerule.g.dart';


///NonResourceRule holds information that describes a rule for the non-resource
@JsonSerializable()
class Nonresourcerule {
    
    ///NonResourceURLs is a set of partial urls that a user should have access to.  *s are
    ///allowed, but only as the full, final step in the path.  "*" means all.
    @JsonKey(name: "nonResourceURLs")
    List<String?>? nonResourceUrLs;
    
    ///Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch,
    ///head, options.  "*" means all.
    @JsonKey(name: "verbs")
    List<String?>? verbs;

    Nonresourcerule({
        this.nonResourceUrLs,
        required this.verbs,
    });

    factory Nonresourcerule.fromJson(Map<String, dynamic> json) => _$NonresourceruleFromJson(json);

    Map<String, dynamic> toJson() => _$NonresourceruleToJson(this);
}

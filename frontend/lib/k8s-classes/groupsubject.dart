import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'groupsubject.g.dart';


///GroupSubject holds detailed information for group-kind subject.
@JsonSerializable()
class Groupsubject {
    
    ///name is the user group that matches, or "*" to match all user groups. See
    ///https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for
    ///some well-known group names. Required.
    @JsonKey(name: "name")
    String? name;

    Groupsubject({
        required this.name,
    });

    factory Groupsubject.fromJson(Map<String, dynamic> json) => _$GroupsubjectFromJson(json);

    Map<String, dynamic> toJson() => _$GroupsubjectToJson(this);
}

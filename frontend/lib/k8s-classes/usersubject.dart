import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'usersubject.g.dart';


///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class Usersubject {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String? name;

    Usersubject({
        required this.name,
    });

    factory Usersubject.fromJson(Map<String, dynamic> json) => _$UsersubjectFromJson(json);

    Map<String, dynamic> toJson() => _$UsersubjectToJson(this);
}

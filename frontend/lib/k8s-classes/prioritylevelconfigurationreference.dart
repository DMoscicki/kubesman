import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationreference.g.dart';


///PriorityLevelConfigurationReference contains information that points to the
///"request-priority" being used.
@JsonSerializable()
class Prioritylevelconfigurationreference {
    
    ///`name` is the name of the priority level configuration being referenced Required.
    @JsonKey(name: "name")
    String? name;

    Prioritylevelconfigurationreference({
        required this.name,
    });

    factory Prioritylevelconfigurationreference.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationreferenceToJson(this);
}

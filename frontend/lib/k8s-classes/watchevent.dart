import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'watchevent.g.dart';


///Event represents a single event to a watched resource.
@JsonSerializable()
class Watchevent {
    
    ///Object is:
    ///* If Type is Added or Modified: the new state of the object.
    ///* If Type is Deleted: the state of the object immediately before deletion.
    ///* If Type is Error: *Status is recommended; other types may make sense
    ///depending on context.
    @JsonKey(name: "object")
    Map<String, dynamic> object;
    @JsonKey(name: "type")
    String? type;

    Watchevent({
        required this.object,
        required this.type,
    });

    factory Watchevent.fromJson(Map<String, dynamic> json) => _$WatcheventFromJson(json);

    Map<String, dynamic> toJson() => _$WatcheventToJson(this);
}

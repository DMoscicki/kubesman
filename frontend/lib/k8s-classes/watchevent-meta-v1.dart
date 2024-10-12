import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'watchevent_meta_v1.g.dart';


///Event represents a single event to a watched resource.
@JsonSerializable()
class WatcheventMetaV1 {
    
    ///Object is:
    ///* If Type is Added or Modified: the new state of the object.
    ///* If Type is Deleted: the state of the object immediately before deletion.
    ///* If Type is Error: *Status is recommended; other types may make sense
    ///depending on context.
    @JsonKey(name: "object")
    Map<String, dynamic> object;
    @JsonKey(name: "type")
    String? type;

    WatcheventMetaV1({
        required this.object,
        required this.type,
    });

    factory WatcheventMetaV1.fromJson(Map<String, dynamic> json) => _$WatcheventMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$WatcheventMetaV1ToJson(this);
}

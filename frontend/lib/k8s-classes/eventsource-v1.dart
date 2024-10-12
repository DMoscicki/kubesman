import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'eventsource_v1.g.dart';


///EventSource contains information for an event.
@JsonSerializable()
class EventsourceV1 {
    
    ///Component from which the event is generated.
    @JsonKey(name: "component")
    String? component;
    
    ///Node name on which the event is generated.
    @JsonKey(name: "host")
    String? host;

    EventsourceV1({
        this.component,
        this.host,
    });

    factory EventsourceV1.fromJson(Map<String, dynamic> json) => _$EventsourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$EventsourceV1ToJson(this);
}

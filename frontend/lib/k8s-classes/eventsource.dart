import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'eventsource.g.dart';


///EventSource contains information for an event.
@JsonSerializable()
class Eventsource {
    
    ///Component from which the event is generated.
    @JsonKey(name: "component")
    String? component;
    
    ///Node name on which the event is generated.
    @JsonKey(name: "host")
    String? host;

    Eventsource({
        this.component,
        this.host,
    });

    factory Eventsource.fromJson(Map<String, dynamic> json) => _$EventsourceFromJson(json);

    Map<String, dynamic> toJson() => _$EventsourceToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'eventseries_events_v1.g.dart';


///EventSeries contain information on series of events, i.e. thing that was/is happening
///continuously for some time. How often to update the EventSeries is up to the event
///reporters. The default event reporter in
///"k8s.io/client-go/tools/events/event_broadcaster.go" shows how this struct is updated on
///heartbeats and can guide customized reporter implementations.
@JsonSerializable()
class EventseriesEventsV1 {
    
    ///count is the number of occurrences in this series up to the last heartbeat time.
    @JsonKey(name: "count")
    int? count;
    
    ///lastObservedTime is the time when last Event from the series was seen before last
    ///heartbeat.
    @JsonKey(name: "lastObservedTime")
    DateTime lastObservedTime;

    EventseriesEventsV1({
        required this.count,
        required this.lastObservedTime,
    });

    factory EventseriesEventsV1.fromJson(Map<String, dynamic> json) => _$EventseriesEventsV1FromJson(json);

    Map<String, dynamic> toJson() => _$EventseriesEventsV1ToJson(this);
}

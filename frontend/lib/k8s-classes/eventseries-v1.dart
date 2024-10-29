import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'eventseries_v1.g.dart';


///EventSeries contain information on series of events, i.e. thing that was/is happening
///continuously for some time.
@JsonSerializable()
class EventseriesV1 {
    
    ///Number of occurrences in this series up to the last heartbeat time
    @JsonKey(name: "count")
    int? count;
    
    ///Time of the last occurrence observed
    @JsonKey(name: "lastObservedTime")
    DateTime? lastObservedTime;

    EventseriesV1({
        this.count,
        this.lastObservedTime,
    });

    factory EventseriesV1.fromJson(Map<String, dynamic> json) => _$EventseriesV1FromJson(json);

    Map<String, dynamic> toJson() => _$EventseriesV1ToJson(this);
}

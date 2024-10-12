import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstatewaiting_v1.g.dart';


///ContainerStateWaiting is a waiting state of a container.
@JsonSerializable()
class ContainerstatewaitingV1 {
    
    ///Message regarding why the container is not yet running.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason the container is not yet running.
    @JsonKey(name: "reason")
    String? reason;

    ContainerstatewaitingV1({
        this.message,
        this.reason,
    });

    factory ContainerstatewaitingV1.fromJson(Map<String, dynamic> json) => _$ContainerstatewaitingV1FromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstatewaitingV1ToJson(this);
}

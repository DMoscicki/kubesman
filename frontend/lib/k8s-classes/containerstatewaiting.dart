import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerstatewaiting.g.dart';


///ContainerStateWaiting is a waiting state of a container.
@JsonSerializable()
class Containerstatewaiting {
    
    ///Message regarding why the container is not yet running.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason the container is not yet running.
    @JsonKey(name: "reason")
    String? reason;

    Containerstatewaiting({
        this.message,
        this.reason,
    });

    factory Containerstatewaiting.fromJson(Map<String, dynamic> json) => _$ContainerstatewaitingFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerstatewaitingToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumeattachmentstatus.g.dart';


///VolumeAttachmentStatus is the status of a VolumeAttachment request.
@JsonSerializable()
class Volumeattachmentstatus {
    
    ///attached indicates the volume is successfully attached. This field must only be set by
    ///the entity completing the attach operation, i.e. the external-attacher.
    @JsonKey(name: "attached")
    bool? attached;
    
    ///attachError represents the last error encountered during attach operation, if any. This
    ///field must only be set by the entity completing the attach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "attachError")
    IoK8SApiStorageV1VolumeError? attachError;
    
    ///attachmentMetadata is populated with any information returned by the attach operation,
    ///upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls.
    ///This field must only be set by the entity completing the attach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "attachmentMetadata")
    Map<String, String?>? attachmentMetadata;
    
    ///detachError represents the last error encountered during detach operation, if any. This
    ///field must only be set by the entity completing the detach operation, i.e. the
    ///external-attacher.
    @JsonKey(name: "detachError")
    IoK8SApiStorageV1VolumeError? detachError;

    Volumeattachmentstatus({
        required this.attached,
        this.attachError,
        this.attachmentMetadata,
        this.detachError,
    });

    factory Volumeattachmentstatus.fromJson(Map<String, dynamic> json) => _$VolumeattachmentstatusFromJson(json);

    Map<String, dynamic> toJson() => _$VolumeattachmentstatusToJson(this);
}


///attachError represents the last error encountered during attach operation, if any. This
///field must only be set by the entity completing the attach operation, i.e. the
///external-attacher.
///
///VolumeError captures an error encountered during a volume operation.
///
///detachError represents the last error encountered during detach operation, if any. This
///field must only be set by the entity completing the detach operation, i.e. the
///external-attacher.
@JsonSerializable()
class IoK8SApiStorageV1VolumeError {
    
    ///message represents the error encountered during Attach or Detach operation. This string
    ///may be logged, so it should not contain sensitive information.
    @JsonKey(name: "message")
    String? message;
    
    ///time represents the time the error was encountered.
    @JsonKey(name: "time")
    DateTime? time;

    IoK8SApiStorageV1VolumeError({
        this.message,
        this.time,
    });

    factory IoK8SApiStorageV1VolumeError.fromJson(Map<String, dynamic> json) => _$IoK8SApiStorageV1VolumeErrorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiStorageV1VolumeErrorToJson(this);
}

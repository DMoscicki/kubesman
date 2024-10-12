import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'emptydirvolumesource.g.dart';


///Represents an empty directory for a pod. Empty directory volumes support ownership
///management and SELinux relabeling.
@JsonSerializable()
class Emptydirvolumesource {
    
    ///medium represents what type of storage medium should back this directory. The default is
    ///"" which means to use the node's default medium. Must be an empty string (default) or
    ///Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "medium")
    String? medium;
    
    ///sizeLimit is the total amount of local storage required for this EmptyDir volume. The
    ///size limit is also applicable for memory medium. The maximum usage on memory medium
    ///EmptyDir would be the minimum value between the SizeLimit specified here and the sum of
    ///memory limits of all containers in a pod. The default is nil which means that the limit
    ///is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "sizeLimit")
    dynamic sizeLimit;

    Emptydirvolumesource({
        this.medium,
        this.sizeLimit,
    });

    factory Emptydirvolumesource.fromJson(Map<String, dynamic> json) => _$EmptydirvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$EmptydirvolumesourceToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'keytopath.g.dart';


///Maps a string key to a path within a volume.
@JsonSerializable()
class Keytopath {
    
    ///key is the key to project.
    @JsonKey(name: "key")
    String? key;
    
    ///mode is Optional: mode bits used to set permissions on this file. Must be an octal value
    ///between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and
    ///decimal values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///path is the relative path of the file to map the key to. May not be an absolute path. May
    ///not contain the path element '..'. May not start with the string '..'.
    @JsonKey(name: "path")
    String? path;

    Keytopath({
        required this.key,
        this.mode,
        required this.path,
    });

    factory Keytopath.fromJson(Map<String, dynamic> json) => _$KeytopathFromJson(json);

    Map<String, dynamic> toJson() => _$KeytopathToJson(this);
}

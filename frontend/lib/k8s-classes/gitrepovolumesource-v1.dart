import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'gitrepovolumesource_v1.g.dart';


///Represents a volume that is populated with the contents of a git repository. Git repo
///volumes do not support ownership management. Git repo volumes support SELinux
///relabeling.
///
///DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an
///EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir
///into the Pod's container.
@JsonSerializable()
class GitrepovolumesourceV1 {
    
    ///directory is the target directory name. Must not contain or start with '..'.  If '.' is
    ///supplied, the volume directory will be the git repository.  Otherwise, if specified, the
    ///volume will contain the git repository in the subdirectory with the given name.
    @JsonKey(name: "directory")
    String? directory;
    
    ///repository is the URL
    @JsonKey(name: "repository")
    String? repository;
    
    ///revision is the commit hash for the specified revision.
    @JsonKey(name: "revision")
    String? revision;

    GitrepovolumesourceV1({
        this.directory,
        required this.repository,
        this.revision,
    });

    factory GitrepovolumesourceV1.fromJson(Map<String, dynamic> json) => _$GitrepovolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$GitrepovolumesourceV1ToJson(this);
}

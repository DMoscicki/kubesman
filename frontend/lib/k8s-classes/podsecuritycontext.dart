import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podsecuritycontext.g.dart';


///PodSecurityContext holds pod-level security attributes and common container settings.
///Some fields are also present in container.securityContext.  Field values of
///container.securityContext take precedence over field values of PodSecurityContext.
@JsonSerializable()
class Podsecuritycontext {
    
    ///appArmorProfile is the AppArmor options to use by the containers in this pod. Note that
    ///this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "appArmorProfile")
    IoK8SApiCoreV1AppArmorProfile? appArmorProfile;
    
    ///A special supplemental group that applies to all containers in a pod. Some volume types
    ///allow the Kubelet to change the ownership of that volume to be owned by the pod:
    ///
    ///1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the
    ///volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    ///
    ///If unset, the Kubelet will not modify the ownership and permissions of any volume. Note
    ///that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "fsGroup")
    int? fsGroup;
    
    ///fsGroupChangePolicy defines behavior of changing ownership and permission of the volume
    ///before being exposed inside Pod. This field will only apply to volume types which support
    ///fsGroup based ownership(and permissions). It will have no effect on ephemeral volume
    ///types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and
    ///"Always". If not specified, "Always" is used. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "fsGroupChangePolicy")
    String? fsGroupChangePolicy;
    
    ///The GID to run the entrypoint of the container process. Uses runtime default if unset.
    ///May also be set in SecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence for that
    ///container. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsGroup")
    int? runAsGroup;
    
    ///Indicates that the container must run as a non-root user. If true, the Kubelet will
    ///validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to
    ///start the container if it does. If unset or false, no such validation will be performed.
    ///May also be set in SecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence.
    @JsonKey(name: "runAsNonRoot")
    bool? runAsNonRoot;
    
    ///The UID to run the entrypoint of the container process. Defaults to user specified in
    ///image metadata if unspecified. May also be set in SecurityContext.  If set in both
    ///SecurityContext and PodSecurityContext, the value specified in SecurityContext takes
    ///precedence for that container. Note that this field cannot be set when spec.os.name is
    ///windows.
    @JsonKey(name: "runAsUser")
    int? runAsUser;
    
    ///The seccomp options to use by the containers in this pod. Note that this field cannot be
    ///set when spec.os.name is windows.
    @JsonKey(name: "seccompProfile")
    IoK8SApiCoreV1SeccompProfile? seccompProfile;
    
    ///The SELinux context to be applied to all containers. If unspecified, the container
    ///runtime will allocate a random SELinux context for each container.  May also be set in
    ///SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
    ///specified in SecurityContext takes precedence for that container. Note that this field
    ///cannot be set when spec.os.name is windows.
    @JsonKey(name: "seLinuxOptions")
    IoK8SApiCoreV1SeLinuxOptions? seLinuxOptions;
    
    ///A list of groups applied to the first process run in each container, in addition to the
    ///container's primary GID, the fsGroup (if specified), and group memberships defined in the
    ///container image for the uid of the container process. If unspecified, no additional
    ///groups are added to any container. Note that group memberships defined in the container
    ///image for the uid of the container process are still effective, even if they are not
    ///included in this list. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "supplementalGroups")
    List<int?>? supplementalGroups;
    
    ///Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls
    ///(by the container runtime) might fail to launch. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "sysctls")
    List<IoK8SApiCoreV1Sysctl>? sysctls;
    
    ///The Windows specific settings applied to all containers. If unspecified, the options
    ///within a container's SecurityContext will be used. If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is linux.
    @JsonKey(name: "windowsOptions")
    IoK8SApiCoreV1WindowsSecurityContextOptions? windowsOptions;

    Podsecuritycontext({
        this.appArmorProfile,
        this.fsGroup,
        this.fsGroupChangePolicy,
        this.runAsGroup,
        this.runAsNonRoot,
        this.runAsUser,
        this.seccompProfile,
        this.seLinuxOptions,
        this.supplementalGroups,
        this.sysctls,
        this.windowsOptions,
    });

    factory Podsecuritycontext.fromJson(Map<String, dynamic> json) => _$PodsecuritycontextFromJson(json);

    Map<String, dynamic> toJson() => _$PodsecuritycontextToJson(this);
}


///appArmorProfile is the AppArmor options to use by the containers in this pod. Note that
///this field cannot be set when spec.os.name is windows.
///
///AppArmorProfile defines a pod or container's AppArmor settings.
@JsonSerializable()
class IoK8SApiCoreV1AppArmorProfile {
    
    ///localhostProfile indicates a profile loaded on the node that should be used. The profile
    ///must be preconfigured on the node to work. Must match the loaded name of the profile.
    ///Must be set if and only if type is "Localhost".
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of AppArmor profile will be applied. Valid options are:
    ///Localhost - a profile pre-loaded on the node.
    ///RuntimeDefault - the container runtime's default profile.
    ///Unconfined - no AppArmor enforcement.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1AppArmorProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1AppArmorProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AppArmorProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AppArmorProfileToJson(this);
}


///The SELinux context to be applied to all containers. If unspecified, the container
///runtime will allocate a random SELinux context for each container.  May also be set in
///SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
///specified in SecurityContext takes precedence for that container. Note that this field
///cannot be set when spec.os.name is windows.
///
///SELinuxOptions are the labels to be applied to the container
@JsonSerializable()
class IoK8SApiCoreV1SeLinuxOptions {
    
    ///Level is SELinux level label that applies to the container.
    @JsonKey(name: "level")
    String? level;
    
    ///Role is a SELinux role label that applies to the container.
    @JsonKey(name: "role")
    String? role;
    
    ///Type is a SELinux type label that applies to the container.
    @JsonKey(name: "type")
    String? type;
    
    ///User is a SELinux user label that applies to the container.
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1SeLinuxOptions({
        this.level,
        this.role,
        this.type,
        this.user,
    });

    factory IoK8SApiCoreV1SeLinuxOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeLinuxOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeLinuxOptionsToJson(this);
}


///The seccomp options to use by the containers in this pod. Note that this field cannot be
///set when spec.os.name is windows.
///
///SeccompProfile defines a pod/container's seccomp profile settings. Only one profile
///source may be set.
@JsonSerializable()
class IoK8SApiCoreV1SeccompProfile {
    
    ///localhostProfile indicates a profile defined in a file on the node should be used. The
    ///profile must be preconfigured on the node to work. Must be a descending path, relative to
    ///the kubelet's configured seccomp profile location. Must be set if type is "Localhost".
    ///Must NOT be set for any other type.
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of seccomp profile will be applied. Valid options are:
    ///
    ///Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the
    ///container runtime default profile should be used. Unconfined - no profile should be
    ///applied.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1SeccompProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1SeccompProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeccompProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeccompProfileToJson(this);
}


///Sysctl defines a kernel parameter to be set
@JsonSerializable()
class IoK8SApiCoreV1Sysctl {
    
    ///Name of a property to set
    @JsonKey(name: "name")
    String name;
    
    ///Value of a property to set
    @JsonKey(name: "value")
    String value;

    IoK8SApiCoreV1Sysctl({
        required this.name,
        required this.value,
    });

    factory IoK8SApiCoreV1Sysctl.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SysctlFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SysctlToJson(this);
}


///The Windows specific settings applied to all containers. If unspecified, the options
///within a container's SecurityContext will be used. If set in both SecurityContext and
///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
///this field cannot be set when spec.os.name is linux.
///
///WindowsSecurityContextOptions contain Windows-specific options and credentials.
@JsonSerializable()
class IoK8SApiCoreV1WindowsSecurityContextOptions {
    
    ///GMSACredentialSpec is where the GMSA admission webhook
    ///(https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA
    ///credential spec named by the GMSACredentialSpecName field.
    @JsonKey(name: "gmsaCredentialSpec")
    String? gmsaCredentialSpec;
    
    ///GMSACredentialSpecName is the name of the GMSA credential spec to use.
    @JsonKey(name: "gmsaCredentialSpecName")
    String? gmsaCredentialSpecName;
    
    ///HostProcess determines if a container should be run as a 'Host Process' container. All of
    ///a Pod's containers must have the same effective HostProcess value (it is not allowed to
    ///have a mix of HostProcess containers and non-HostProcess containers). In addition, if
    ///HostProcess is true then HostNetwork must also be set to true.
    @JsonKey(name: "hostProcess")
    bool? hostProcess;
    
    ///The UserName in Windows to run the entrypoint of the container process. Defaults to the
    ///user specified in image metadata if unspecified. May also be set in PodSecurityContext.
    ///If set in both SecurityContext and PodSecurityContext, the value specified in
    ///SecurityContext takes precedence.
    @JsonKey(name: "runAsUserName")
    String? runAsUserName;

    IoK8SApiCoreV1WindowsSecurityContextOptions({
        this.gmsaCredentialSpec,
        this.gmsaCredentialSpecName,
        this.hostProcess,
        this.runAsUserName,
    });

    factory IoK8SApiCoreV1WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1WindowsSecurityContextOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1WindowsSecurityContextOptionsToJson(this);
}

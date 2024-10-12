import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'securitycontext.g.dart';


///SecurityContext holds security configuration that will be applied to a container. Some
///fields are present in both SecurityContext and PodSecurityContext.  When both are set,
///the values in SecurityContext take precedence.
@JsonSerializable()
class Securitycontext {
    
    ///AllowPrivilegeEscalation controls whether a process can gain more privileges than its
    ///parent process. This bool directly controls if the no_new_privs flag will be set on the
    ///container process. AllowPrivilegeEscalation is true always when the container is: 1) run
    ///as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "allowPrivilegeEscalation")
    bool? allowPrivilegeEscalation;
    
    ///appArmorProfile is the AppArmor options to use by this container. If set, this profile
    ///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "appArmorProfile")
    IoK8SApiCoreV1AppArmorProfile? appArmorProfile;
    
    ///The capabilities to add/drop when running containers. Defaults to the default set of
    ///capabilities granted by the container runtime. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "capabilities")
    IoK8SApiCoreV1Capabilities? capabilities;
    
    ///Run container in privileged mode. Processes in privileged containers are essentially
    ///equivalent to root on the host. Defaults to false. Note that this field cannot be set
    ///when spec.os.name is windows.
    @JsonKey(name: "privileged")
    bool? privileged;
    
    ///procMount denotes the type of proc mount to use for the containers. The default is
    ///DefaultProcMount which uses the container runtime defaults for readonly paths and masked
    ///paths. This requires the ProcMountType feature flag to be enabled. Note that this field
    ///cannot be set when spec.os.name is windows.
    @JsonKey(name: "procMount")
    String? procMount;
    
    ///Whether this container has a read-only root filesystem. Default is false. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "readOnlyRootFilesystem")
    bool? readOnlyRootFilesystem;
    
    ///The GID to run the entrypoint of the container process. Uses runtime default if unset.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsGroup")
    int? runAsGroup;
    
    ///Indicates that the container must run as a non-root user. If true, the Kubelet will
    ///validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to
    ///start the container if it does. If unset or false, no such validation will be performed.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence.
    @JsonKey(name: "runAsNonRoot")
    bool? runAsNonRoot;
    
    ///The UID to run the entrypoint of the container process. Defaults to user specified in
    ///image metadata if unspecified. May also be set in PodSecurityContext.  If set in both
    ///SecurityContext and PodSecurityContext, the value specified in SecurityContext takes
    ///precedence. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsUser")
    int? runAsUser;
    
    ///The seccomp options to use by this container. If seccomp options are provided at both the
    ///pod & container level, the container options override the pod options. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "seccompProfile")
    IoK8SApiCoreV1SeccompProfile? seccompProfile;
    
    ///The SELinux context to be applied to the container. If unspecified, the container runtime
    ///will allocate a random SELinux context for each container.  May also be set in
    ///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
    ///specified in SecurityContext takes precedence. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "seLinuxOptions")
    IoK8SApiCoreV1SeLinuxOptions? seLinuxOptions;
    
    ///The Windows specific settings applied to all containers. If unspecified, the options from
    ///the PodSecurityContext will be used. If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is linux.
    @JsonKey(name: "windowsOptions")
    IoK8SApiCoreV1WindowsSecurityContextOptions? windowsOptions;

    Securitycontext({
        this.allowPrivilegeEscalation,
        this.appArmorProfile,
        this.capabilities,
        this.privileged,
        this.procMount,
        this.readOnlyRootFilesystem,
        this.runAsGroup,
        this.runAsNonRoot,
        this.runAsUser,
        this.seccompProfile,
        this.seLinuxOptions,
        this.windowsOptions,
    });

    factory Securitycontext.fromJson(Map<String, dynamic> json) => _$SecuritycontextFromJson(json);

    Map<String, dynamic> toJson() => _$SecuritycontextToJson(this);
}


///appArmorProfile is the AppArmor options to use by this container. If set, this profile
///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
///is windows.
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


///The capabilities to add/drop when running containers. Defaults to the default set of
///capabilities granted by the container runtime. Note that this field cannot be set when
///spec.os.name is windows.
///
///Adds and removes POSIX capabilities from running containers.
@JsonSerializable()
class IoK8SApiCoreV1Capabilities {
    
    ///Added capabilities
    @JsonKey(name: "add")
    List<String>? add;
    
    ///Removed capabilities
    @JsonKey(name: "drop")
    List<String>? drop;

    IoK8SApiCoreV1Capabilities({
        this.add,
        this.drop,
    });

    factory IoK8SApiCoreV1Capabilities.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CapabilitiesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CapabilitiesToJson(this);
}


///The SELinux context to be applied to the container. If unspecified, the container runtime
///will allocate a random SELinux context for each container.  May also be set in
///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
///specified in SecurityContext takes precedence. Note that this field cannot be set when
///spec.os.name is windows.
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


///The seccomp options to use by this container. If seccomp options are provided at both the
///pod & container level, the container options override the pod options. Note that this
///field cannot be set when spec.os.name is windows.
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


///The Windows specific settings applied to all containers. If unspecified, the options from
///the PodSecurityContext will be used. If set in both SecurityContext and
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

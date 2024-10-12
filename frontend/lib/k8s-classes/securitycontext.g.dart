// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'securitycontext.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Securitycontext _$SecuritycontextFromJson(Map<String, dynamic> json) =>
    Securitycontext(
      allowPrivilegeEscalation: json['allowPrivilegeEscalation'] as bool?,
      appArmorProfile: json['appArmorProfile'] == null
          ? null
          : IoK8SApiCoreV1AppArmorProfile.fromJson(
              json['appArmorProfile'] as Map<String, dynamic>),
      capabilities: json['capabilities'] == null
          ? null
          : IoK8SApiCoreV1Capabilities.fromJson(
              json['capabilities'] as Map<String, dynamic>),
      privileged: json['privileged'] as bool?,
      procMount: json['procMount'] as String?,
      readOnlyRootFilesystem: json['readOnlyRootFilesystem'] as bool?,
      runAsGroup: (json['runAsGroup'] as num?)?.toInt(),
      runAsNonRoot: json['runAsNonRoot'] as bool?,
      runAsUser: (json['runAsUser'] as num?)?.toInt(),
      seccompProfile: json['seccompProfile'] == null
          ? null
          : IoK8SApiCoreV1SeccompProfile.fromJson(
              json['seccompProfile'] as Map<String, dynamic>),
      seLinuxOptions: json['seLinuxOptions'] == null
          ? null
          : IoK8SApiCoreV1SeLinuxOptions.fromJson(
              json['seLinuxOptions'] as Map<String, dynamic>),
      windowsOptions: json['windowsOptions'] == null
          ? null
          : IoK8SApiCoreV1WindowsSecurityContextOptions.fromJson(
              json['windowsOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SecuritycontextToJson(Securitycontext instance) =>
    <String, dynamic>{
      'allowPrivilegeEscalation': instance.allowPrivilegeEscalation,
      'appArmorProfile': instance.appArmorProfile,
      'capabilities': instance.capabilities,
      'privileged': instance.privileged,
      'procMount': instance.procMount,
      'readOnlyRootFilesystem': instance.readOnlyRootFilesystem,
      'runAsGroup': instance.runAsGroup,
      'runAsNonRoot': instance.runAsNonRoot,
      'runAsUser': instance.runAsUser,
      'seccompProfile': instance.seccompProfile,
      'seLinuxOptions': instance.seLinuxOptions,
      'windowsOptions': instance.windowsOptions,
    };

IoK8SApiCoreV1AppArmorProfile _$IoK8SApiCoreV1AppArmorProfileFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1AppArmorProfile(
      localhostProfile: json['localhostProfile'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1AppArmorProfileToJson(
        IoK8SApiCoreV1AppArmorProfile instance) =>
    <String, dynamic>{
      'localhostProfile': instance.localhostProfile,
      'type': instance.type,
    };

IoK8SApiCoreV1Capabilities _$IoK8SApiCoreV1CapabilitiesFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Capabilities(
      add: (json['add'] as List<dynamic>?)?.map((e) => e as String).toList(),
      drop: (json['drop'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1CapabilitiesToJson(
        IoK8SApiCoreV1Capabilities instance) =>
    <String, dynamic>{
      'add': instance.add,
      'drop': instance.drop,
    };

IoK8SApiCoreV1SeLinuxOptions _$IoK8SApiCoreV1SeLinuxOptionsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SeLinuxOptions(
      level: json['level'] as String?,
      role: json['role'] as String?,
      type: json['type'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SeLinuxOptionsToJson(
        IoK8SApiCoreV1SeLinuxOptions instance) =>
    <String, dynamic>{
      'level': instance.level,
      'role': instance.role,
      'type': instance.type,
      'user': instance.user,
    };

IoK8SApiCoreV1SeccompProfile _$IoK8SApiCoreV1SeccompProfileFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SeccompProfile(
      localhostProfile: json['localhostProfile'] as String?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SeccompProfileToJson(
        IoK8SApiCoreV1SeccompProfile instance) =>
    <String, dynamic>{
      'localhostProfile': instance.localhostProfile,
      'type': instance.type,
    };

IoK8SApiCoreV1WindowsSecurityContextOptions
    _$IoK8SApiCoreV1WindowsSecurityContextOptionsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1WindowsSecurityContextOptions(
          gmsaCredentialSpec: json['gmsaCredentialSpec'] as String?,
          gmsaCredentialSpecName: json['gmsaCredentialSpecName'] as String?,
          hostProcess: json['hostProcess'] as bool?,
          runAsUserName: json['runAsUserName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1WindowsSecurityContextOptionsToJson(
        IoK8SApiCoreV1WindowsSecurityContextOptions instance) =>
    <String, dynamic>{
      'gmsaCredentialSpec': instance.gmsaCredentialSpec,
      'gmsaCredentialSpecName': instance.gmsaCredentialSpecName,
      'hostProcess': instance.hostProcess,
      'runAsUserName': instance.runAsUserName,
    };

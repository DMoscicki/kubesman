// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodesysteminfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodesysteminfo _$NodesysteminfoFromJson(Map<String, dynamic> json) =>
    Nodesysteminfo(
      architecture: json['architecture'] as String?,
      bootId: json['bootID'] as String?,
      containerRuntimeVersion: json['containerRuntimeVersion'] as String?,
      kernelVersion: json['kernelVersion'] as String?,
      kubeletVersion: json['kubeletVersion'] as String?,
      kubeProxyVersion: json['kubeProxyVersion'] as String?,
      machineId: json['machineID'] as String?,
      operatingSystem: json['operatingSystem'] as String?,
      osImage: json['osImage'] as String?,
      systemUuid: json['systemUUID'] as String?,
    );

Map<String, dynamic> _$NodesysteminfoToJson(Nodesysteminfo instance) =>
    <String, dynamic>{
      'architecture': instance.architecture,
      'bootID': instance.bootId,
      'containerRuntimeVersion': instance.containerRuntimeVersion,
      'kernelVersion': instance.kernelVersion,
      'kubeletVersion': instance.kubeletVersion,
      'kubeProxyVersion': instance.kubeProxyVersion,
      'machineID': instance.machineId,
      'operatingSystem': instance.operatingSystem,
      'osImage': instance.osImage,
      'systemUUID': instance.systemUuid,
    };

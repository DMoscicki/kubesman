// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'iscsipersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Iscsipersistentvolumesource _$IscsipersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Iscsipersistentvolumesource(
      chapAuthDiscovery: json['chapAuthDiscovery'] as bool?,
      chapAuthSession: json['chapAuthSession'] as bool?,
      fsType: json['fsType'] as String?,
      initiatorName: json['initiatorName'] as String?,
      iqn: json['iqn'] as String?,
      iscsiInterface: json['iscsiInterface'] as String?,
      lun: (json['lun'] as num?)?.toInt(),
      portals: (json['portals'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      targetPortal: json['targetPortal'] as String?,
    );

Map<String, dynamic> _$IscsipersistentvolumesourceToJson(
        Iscsipersistentvolumesource instance) =>
    <String, dynamic>{
      'chapAuthDiscovery': instance.chapAuthDiscovery,
      'chapAuthSession': instance.chapAuthSession,
      'fsType': instance.fsType,
      'initiatorName': instance.initiatorName,
      'iqn': instance.iqn,
      'iscsiInterface': instance.iscsiInterface,
      'lun': instance.lun,
      'portals': instance.portals,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'targetPortal': instance.targetPortal,
    };

IoK8SApiCoreV1SecretReference _$IoK8SApiCoreV1SecretReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretReference(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretReferenceToJson(
        IoK8SApiCoreV1SecretReference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volume _$VolumeFromJson(Map<String, dynamic> json) => Volume(
      awsElasticBlockStore: json['awsElasticBlockStore'] == null
          ? null
          : IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource.fromJson(
              json['awsElasticBlockStore'] as Map<String, dynamic>),
      azureDisk: json['azureDisk'] == null
          ? null
          : IoK8SApiCoreV1AzureDiskVolumeSource.fromJson(
              json['azureDisk'] as Map<String, dynamic>),
      azureFile: json['azureFile'] == null
          ? null
          : IoK8SApiCoreV1AzureFileVolumeSource.fromJson(
              json['azureFile'] as Map<String, dynamic>),
      cephfs: json['cephfs'] == null
          ? null
          : IoK8SApiCoreV1CephFsVolumeSource.fromJson(
              json['cephfs'] as Map<String, dynamic>),
      cinder: json['cinder'] == null
          ? null
          : IoK8SApiCoreV1CinderVolumeSource.fromJson(
              json['cinder'] as Map<String, dynamic>),
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapVolumeSource.fromJson(
              json['configMap'] as Map<String, dynamic>),
      csi: json['csi'] == null
          ? null
          : IoK8SApiCoreV1CsiVolumeSource.fromJson(
              json['csi'] as Map<String, dynamic>),
      downwardApi: json['downwardAPI'] == null
          ? null
          : IoK8SApiCoreV1DownwardApiVolumeSource.fromJson(
              json['downwardAPI'] as Map<String, dynamic>),
      emptyDir: json['emptyDir'] == null
          ? null
          : IoK8SApiCoreV1EmptyDirVolumeSource.fromJson(
              json['emptyDir'] as Map<String, dynamic>),
      ephemeral: json['ephemeral'] == null
          ? null
          : IoK8SApiCoreV1EphemeralVolumeSource.fromJson(
              json['ephemeral'] as Map<String, dynamic>),
      fc: json['fc'] == null
          ? null
          : IoK8SApiCoreV1FcVolumeSource.fromJson(
              json['fc'] as Map<String, dynamic>),
      flexVolume: json['flexVolume'] == null
          ? null
          : IoK8SApiCoreV1FlexVolumeSource.fromJson(
              json['flexVolume'] as Map<String, dynamic>),
      flocker: json['flocker'] == null
          ? null
          : IoK8SApiCoreV1FlockerVolumeSource.fromJson(
              json['flocker'] as Map<String, dynamic>),
      gcePersistentDisk: json['gcePersistentDisk'] == null
          ? null
          : IoK8SApiCoreV1GcePersistentDiskVolumeSource.fromJson(
              json['gcePersistentDisk'] as Map<String, dynamic>),
      gitRepo: json['gitRepo'] == null
          ? null
          : IoK8SApiCoreV1GitRepoVolumeSource.fromJson(
              json['gitRepo'] as Map<String, dynamic>),
      glusterfs: json['glusterfs'] == null
          ? null
          : IoK8SApiCoreV1GlusterfsVolumeSource.fromJson(
              json['glusterfs'] as Map<String, dynamic>),
      hostPath: json['hostPath'] == null
          ? null
          : IoK8SApiCoreV1HostPathVolumeSource.fromJson(
              json['hostPath'] as Map<String, dynamic>),
      iscsi: json['iscsi'] == null
          ? null
          : IoK8SApiCoreV1IscsiVolumeSource.fromJson(
              json['iscsi'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nfs: json['nfs'] == null
          ? null
          : IoK8SApiCoreV1NfsVolumeSource.fromJson(
              json['nfs'] as Map<String, dynamic>),
      persistentVolumeClaim: json['persistentVolumeClaim'] == null
          ? null
          : IoK8SApiCoreV1PersistentVolumeClaimVolumeSource.fromJson(
              json['persistentVolumeClaim'] as Map<String, dynamic>),
      photonPersistentDisk: json['photonPersistentDisk'] == null
          ? null
          : IoK8SApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(
              json['photonPersistentDisk'] as Map<String, dynamic>),
      portworxVolume: json['portworxVolume'] == null
          ? null
          : IoK8SApiCoreV1PortworxVolumeSource.fromJson(
              json['portworxVolume'] as Map<String, dynamic>),
      projected: json['projected'] == null
          ? null
          : IoK8SApiCoreV1ProjectedVolumeSource.fromJson(
              json['projected'] as Map<String, dynamic>),
      quobyte: json['quobyte'] == null
          ? null
          : IoK8SApiCoreV1QuobyteVolumeSource.fromJson(
              json['quobyte'] as Map<String, dynamic>),
      rbd: json['rbd'] == null
          ? null
          : IoK8SApiCoreV1RbdVolumeSource.fromJson(
              json['rbd'] as Map<String, dynamic>),
      scaleIo: json['scaleIO'] == null
          ? null
          : IoK8SApiCoreV1ScaleIoVolumeSource.fromJson(
              json['scaleIO'] as Map<String, dynamic>),
      secret: json['secret'] == null
          ? null
          : IoK8SApiCoreV1SecretVolumeSource.fromJson(
              json['secret'] as Map<String, dynamic>),
      storageos: json['storageos'] == null
          ? null
          : IoK8SApiCoreV1StorageOsVolumeSource.fromJson(
              json['storageos'] as Map<String, dynamic>),
      vsphereVolume: json['vsphereVolume'] == null
          ? null
          : IoK8SApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(
              json['vsphereVolume'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VolumeToJson(Volume instance) => <String, dynamic>{
      'awsElasticBlockStore': instance.awsElasticBlockStore,
      'azureDisk': instance.azureDisk,
      'azureFile': instance.azureFile,
      'cephfs': instance.cephfs,
      'cinder': instance.cinder,
      'configMap': instance.configMap,
      'csi': instance.csi,
      'downwardAPI': instance.downwardApi,
      'emptyDir': instance.emptyDir,
      'ephemeral': instance.ephemeral,
      'fc': instance.fc,
      'flexVolume': instance.flexVolume,
      'flocker': instance.flocker,
      'gcePersistentDisk': instance.gcePersistentDisk,
      'gitRepo': instance.gitRepo,
      'glusterfs': instance.glusterfs,
      'hostPath': instance.hostPath,
      'iscsi': instance.iscsi,
      'name': instance.name,
      'nfs': instance.nfs,
      'persistentVolumeClaim': instance.persistentVolumeClaim,
      'photonPersistentDisk': instance.photonPersistentDisk,
      'portworxVolume': instance.portworxVolume,
      'projected': instance.projected,
      'quobyte': instance.quobyte,
      'rbd': instance.rbd,
      'scaleIO': instance.scaleIo,
      'secret': instance.secret,
      'storageos': instance.storageos,
      'vsphereVolume': instance.vsphereVolume,
    };

IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource
    _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource(
          fsType: json['fsType'] as String?,
          partition: (json['partition'] as num?)?.toInt(),
          readOnly: json['readOnly'] as bool?,
          volumeId: json['volumeID'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceToJson(
        IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'partition': instance.partition,
      'readOnly': instance.readOnly,
      'volumeID': instance.volumeId,
    };

IoK8SApiCoreV1AzureDiskVolumeSource
    _$IoK8SApiCoreV1AzureDiskVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1AzureDiskVolumeSource(
          cachingMode: json['cachingMode'] as String?,
          diskName: json['diskName'] as String,
          diskUri: json['diskURI'] as String,
          fsType: json['fsType'] as String?,
          kind: json['kind'] as String?,
          readOnly: json['readOnly'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1AzureDiskVolumeSourceToJson(
        IoK8SApiCoreV1AzureDiskVolumeSource instance) =>
    <String, dynamic>{
      'cachingMode': instance.cachingMode,
      'diskName': instance.diskName,
      'diskURI': instance.diskUri,
      'fsType': instance.fsType,
      'kind': instance.kind,
      'readOnly': instance.readOnly,
    };

IoK8SApiCoreV1AzureFileVolumeSource
    _$IoK8SApiCoreV1AzureFileVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1AzureFileVolumeSource(
          readOnly: json['readOnly'] as bool?,
          secretName: json['secretName'] as String,
          shareName: json['shareName'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1AzureFileVolumeSourceToJson(
        IoK8SApiCoreV1AzureFileVolumeSource instance) =>
    <String, dynamic>{
      'readOnly': instance.readOnly,
      'secretName': instance.secretName,
      'shareName': instance.shareName,
    };

IoK8SApiCoreV1CephFsVolumeSource _$IoK8SApiCoreV1CephFsVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1CephFsVolumeSource(
      monitors:
          (json['monitors'] as List<dynamic>).map((e) => e as String).toList(),
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretFile: json['secretFile'] as String?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1CephFsVolumeSourceToJson(
        IoK8SApiCoreV1CephFsVolumeSource instance) =>
    <String, dynamic>{
      'monitors': instance.monitors,
      'path': instance.path,
      'readOnly': instance.readOnly,
      'secretFile': instance.secretFile,
      'secretRef': instance.secretRef,
      'user': instance.user,
    };

IoK8SApiCoreV1LocalObjectReference _$IoK8SApiCoreV1LocalObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LocalObjectReference(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1LocalObjectReferenceToJson(
        IoK8SApiCoreV1LocalObjectReference instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1CinderVolumeSource _$IoK8SApiCoreV1CinderVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1CinderVolumeSource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      volumeId: json['volumeID'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1CinderVolumeSourceToJson(
        IoK8SApiCoreV1CinderVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeID': instance.volumeId,
    };

IoK8SApiCoreV1ConfigMapVolumeSource
    _$IoK8SApiCoreV1ConfigMapVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ConfigMapVolumeSource(
          defaultMode: (json['defaultMode'] as num?)?.toInt(),
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          optional: json['optional'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapVolumeSourceToJson(
        IoK8SApiCoreV1ConfigMapVolumeSource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'items': instance.items,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1KeyToPath _$IoK8SApiCoreV1KeyToPathFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1KeyToPath(
      key: json['key'] as String,
      mode: (json['mode'] as num?)?.toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1KeyToPathToJson(
        IoK8SApiCoreV1KeyToPath instance) =>
    <String, dynamic>{
      'key': instance.key,
      'mode': instance.mode,
      'path': instance.path,
    };

IoK8SApiCoreV1CsiVolumeSource _$IoK8SApiCoreV1CsiVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1CsiVolumeSource(
      driver: json['driver'] as String,
      fsType: json['fsType'] as String?,
      nodePublishSecretRef: json['nodePublishSecretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['nodePublishSecretRef'] as Map<String, dynamic>),
      readOnly: json['readOnly'] as bool?,
      volumeAttributes:
          (json['volumeAttributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$IoK8SApiCoreV1CsiVolumeSourceToJson(
        IoK8SApiCoreV1CsiVolumeSource instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'fsType': instance.fsType,
      'nodePublishSecretRef': instance.nodePublishSecretRef,
      'readOnly': instance.readOnly,
      'volumeAttributes': instance.volumeAttributes,
    };

IoK8SApiCoreV1DownwardApiVolumeSource
    _$IoK8SApiCoreV1DownwardApiVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiVolumeSource(
          defaultMode: (json['defaultMode'] as num?)?.toInt(),
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiVolumeSourceToJson(
        IoK8SApiCoreV1DownwardApiVolumeSource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'items': instance.items,
    };

IoK8SApiCoreV1DownwardApiVolumeFile
    _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiVolumeFile(
          fieldRef: json['fieldRef'] == null
              ? null
              : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
                  json['fieldRef'] as Map<String, dynamic>),
          mode: (json['mode'] as num?)?.toInt(),
          path: json['path'] as String,
          resourceFieldRef: json['resourceFieldRef'] == null
              ? null
              : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
                  json['resourceFieldRef'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(
        IoK8SApiCoreV1DownwardApiVolumeFile instance) =>
    <String, dynamic>{
      'fieldRef': instance.fieldRef,
      'mode': instance.mode,
      'path': instance.path,
      'resourceFieldRef': instance.resourceFieldRef,
    };

IoK8SApiCoreV1ObjectFieldSelector _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectFieldSelector(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectFieldSelectorToJson(
        IoK8SApiCoreV1ObjectFieldSelector instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
    };

IoK8SApiCoreV1ResourceFieldSelector
    _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ResourceFieldSelector(
          containerName: json['containerName'] as String?,
          divisor: json['divisor'],
          resource: json['resource'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceFieldSelectorToJson(
        IoK8SApiCoreV1ResourceFieldSelector instance) =>
    <String, dynamic>{
      'containerName': instance.containerName,
      'divisor': instance.divisor,
      'resource': instance.resource,
    };

IoK8SApiCoreV1EmptyDirVolumeSource _$IoK8SApiCoreV1EmptyDirVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EmptyDirVolumeSource(
      medium: json['medium'] as String?,
      sizeLimit: json['sizeLimit'],
    );

Map<String, dynamic> _$IoK8SApiCoreV1EmptyDirVolumeSourceToJson(
        IoK8SApiCoreV1EmptyDirVolumeSource instance) =>
    <String, dynamic>{
      'medium': instance.medium,
      'sizeLimit': instance.sizeLimit,
    };

IoK8SApiCoreV1EphemeralVolumeSource
    _$IoK8SApiCoreV1EphemeralVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1EphemeralVolumeSource(
          volumeClaimTemplate: json['volumeClaimTemplate'] == null
              ? null
              : IoK8SApiCoreV1PersistentVolumeClaimTemplate.fromJson(
                  json['volumeClaimTemplate'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1EphemeralVolumeSourceToJson(
        IoK8SApiCoreV1EphemeralVolumeSource instance) =>
    <String, dynamic>{
      'volumeClaimTemplate': instance.volumeClaimTemplate,
    };

IoK8SApiCoreV1PersistentVolumeClaimTemplate
    _$IoK8SApiCoreV1PersistentVolumeClaimTemplateFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimTemplate(
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: IoK8SApiCoreV1PersistentVolumeClaimSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimTemplateToJson(
        IoK8SApiCoreV1PersistentVolumeClaimTemplate instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'spec': instance.spec,
    };

IoK8SApimachineryPkgApisMetaV1ObjectMeta
    _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ObjectMeta(
          annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          creationTimestamp: json['creationTimestamp'] == null
              ? null
              : DateTime.parse(json['creationTimestamp'] as String),
          deletionGracePeriodSeconds:
              (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
          deletionTimestamp: json['deletionTimestamp'] == null
              ? null
              : DateTime.parse(json['deletionTimestamp'] as String),
          finalizers: (json['finalizers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          generateName: json['generateName'] as String?,
          generation: (json['generation'] as num?)?.toInt(),
          labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          managedFields: (json['managedFields'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          ownerReferences: (json['ownerReferences'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ObjectMeta instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry
    _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry(
          apiVersion: json['apiVersion'] as String?,
          fieldsType: json['fieldsType'] as String?,
          fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
          manager: json['manager'] as String?,
          operation: json['operation'] as String?,
          subresource: json['subresource'] as String?,
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

IoK8SApimachineryPkgApisMetaV1OwnerReference
    _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1OwnerReference(
          apiVersion: json['apiVersion'] as String,
          blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
          controller: json['controller'] as bool?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(
        IoK8SApimachineryPkgApisMetaV1OwnerReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiCoreV1PersistentVolumeClaimSpec
    _$IoK8SApiCoreV1PersistentVolumeClaimSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimSpec(
          accessModes: (json['accessModes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          dataSource: json['dataSource'] == null
              ? null
              : IoK8SApiCoreV1TypedLocalObjectReference.fromJson(
                  json['dataSource'] as Map<String, dynamic>),
          dataSourceRef: json['dataSourceRef'] == null
              ? null
              : IoK8SApiCoreV1TypedObjectReference.fromJson(
                  json['dataSourceRef'] as Map<String, dynamic>),
          resources: json['resources'] == null
              ? null
              : IoK8SApiCoreV1VolumeResourceRequirements.fromJson(
                  json['resources'] as Map<String, dynamic>),
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
          storageClassName: json['storageClassName'] as String?,
          volumeAttributesClassName:
              json['volumeAttributesClassName'] as String?,
          volumeMode: json['volumeMode'] as String?,
          volumeName: json['volumeName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimSpecToJson(
        IoK8SApiCoreV1PersistentVolumeClaimSpec instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'dataSource': instance.dataSource,
      'dataSourceRef': instance.dataSourceRef,
      'resources': instance.resources,
      'selector': instance.selector,
      'storageClassName': instance.storageClassName,
      'volumeAttributesClassName': instance.volumeAttributesClassName,
      'volumeMode': instance.volumeMode,
      'volumeName': instance.volumeName,
    };

IoK8SApiCoreV1TypedLocalObjectReference
    _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TypedLocalObjectReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(
        IoK8SApiCoreV1TypedLocalObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiCoreV1TypedObjectReference _$IoK8SApiCoreV1TypedObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1TypedObjectReference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String,
      name: json['name'] as String,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TypedObjectReferenceToJson(
        IoK8SApiCoreV1TypedObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
    };

IoK8SApiCoreV1VolumeResourceRequirements
    _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1VolumeResourceRequirements(
          limits: json['limits'] as Map<String, dynamic>?,
          requests: json['requests'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(
        IoK8SApiCoreV1VolumeResourceRequirements instance) =>
    <String, dynamic>{
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };

IoK8SApiCoreV1FcVolumeSource _$IoK8SApiCoreV1FcVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1FcVolumeSource(
      fsType: json['fsType'] as String?,
      lun: (json['lun'] as num?)?.toInt(),
      readOnly: json['readOnly'] as bool?,
      targetWwNs: (json['targetWWNs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      wwids:
          (json['wwids'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1FcVolumeSourceToJson(
        IoK8SApiCoreV1FcVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'lun': instance.lun,
      'readOnly': instance.readOnly,
      'targetWWNs': instance.targetWwNs,
      'wwids': instance.wwids,
    };

IoK8SApiCoreV1FlexVolumeSource _$IoK8SApiCoreV1FlexVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1FlexVolumeSource(
      driver: json['driver'] as String,
      fsType: json['fsType'] as String?,
      options: (json['options'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1FlexVolumeSourceToJson(
        IoK8SApiCoreV1FlexVolumeSource instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'fsType': instance.fsType,
      'options': instance.options,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
    };

IoK8SApiCoreV1FlockerVolumeSource _$IoK8SApiCoreV1FlockerVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1FlockerVolumeSource(
      datasetName: json['datasetName'] as String?,
      datasetUuid: json['datasetUUID'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1FlockerVolumeSourceToJson(
        IoK8SApiCoreV1FlockerVolumeSource instance) =>
    <String, dynamic>{
      'datasetName': instance.datasetName,
      'datasetUUID': instance.datasetUuid,
    };

IoK8SApiCoreV1GcePersistentDiskVolumeSource
    _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1GcePersistentDiskVolumeSource(
          fsType: json['fsType'] as String?,
          partition: (json['partition'] as num?)?.toInt(),
          pdName: json['pdName'] as String,
          readOnly: json['readOnly'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceToJson(
        IoK8SApiCoreV1GcePersistentDiskVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'partition': instance.partition,
      'pdName': instance.pdName,
      'readOnly': instance.readOnly,
    };

IoK8SApiCoreV1GitRepoVolumeSource _$IoK8SApiCoreV1GitRepoVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1GitRepoVolumeSource(
      directory: json['directory'] as String?,
      repository: json['repository'] as String,
      revision: json['revision'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1GitRepoVolumeSourceToJson(
        IoK8SApiCoreV1GitRepoVolumeSource instance) =>
    <String, dynamic>{
      'directory': instance.directory,
      'repository': instance.repository,
      'revision': instance.revision,
    };

IoK8SApiCoreV1GlusterfsVolumeSource
    _$IoK8SApiCoreV1GlusterfsVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1GlusterfsVolumeSource(
          endpoints: json['endpoints'] as String,
          path: json['path'] as String,
          readOnly: json['readOnly'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1GlusterfsVolumeSourceToJson(
        IoK8SApiCoreV1GlusterfsVolumeSource instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'path': instance.path,
      'readOnly': instance.readOnly,
    };

IoK8SApiCoreV1HostPathVolumeSource _$IoK8SApiCoreV1HostPathVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HostPathVolumeSource(
      path: json['path'] as String,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HostPathVolumeSourceToJson(
        IoK8SApiCoreV1HostPathVolumeSource instance) =>
    <String, dynamic>{
      'path': instance.path,
      'type': instance.type,
    };

IoK8SApiCoreV1IscsiVolumeSource _$IoK8SApiCoreV1IscsiVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1IscsiVolumeSource(
      chapAuthDiscovery: json['chapAuthDiscovery'] as bool?,
      chapAuthSession: json['chapAuthSession'] as bool?,
      fsType: json['fsType'] as String?,
      initiatorName: json['initiatorName'] as String?,
      iqn: json['iqn'] as String,
      iscsiInterface: json['iscsiInterface'] as String?,
      lun: (json['lun'] as num).toInt(),
      portals:
          (json['portals'] as List<dynamic>?)?.map((e) => e as String).toList(),
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      targetPortal: json['targetPortal'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1IscsiVolumeSourceToJson(
        IoK8SApiCoreV1IscsiVolumeSource instance) =>
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

IoK8SApiCoreV1NfsVolumeSource _$IoK8SApiCoreV1NfsVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NfsVolumeSource(
      path: json['path'] as String,
      readOnly: json['readOnly'] as bool?,
      server: json['server'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NfsVolumeSourceToJson(
        IoK8SApiCoreV1NfsVolumeSource instance) =>
    <String, dynamic>{
      'path': instance.path,
      'readOnly': instance.readOnly,
      'server': instance.server,
    };

IoK8SApiCoreV1PersistentVolumeClaimVolumeSource
    _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimVolumeSource(
          claimName: json['claimName'] as String,
          readOnly: json['readOnly'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceToJson(
        IoK8SApiCoreV1PersistentVolumeClaimVolumeSource instance) =>
    <String, dynamic>{
      'claimName': instance.claimName,
      'readOnly': instance.readOnly,
    };

IoK8SApiCoreV1PhotonPersistentDiskVolumeSource
    _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PhotonPersistentDiskVolumeSource(
          fsType: json['fsType'] as String?,
          pdId: json['pdID'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceToJson(
        IoK8SApiCoreV1PhotonPersistentDiskVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'pdID': instance.pdId,
    };

IoK8SApiCoreV1PortworxVolumeSource _$IoK8SApiCoreV1PortworxVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PortworxVolumeSource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      volumeId: json['volumeID'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PortworxVolumeSourceToJson(
        IoK8SApiCoreV1PortworxVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'volumeID': instance.volumeId,
    };

IoK8SApiCoreV1ProjectedVolumeSource
    _$IoK8SApiCoreV1ProjectedVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ProjectedVolumeSource(
          defaultMode: (json['defaultMode'] as num?)?.toInt(),
          sources: (json['sources'] as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1VolumeProjection.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ProjectedVolumeSourceToJson(
        IoK8SApiCoreV1ProjectedVolumeSource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'sources': instance.sources,
    };

IoK8SApiCoreV1VolumeProjection _$IoK8SApiCoreV1VolumeProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeProjection(
      clusterTrustBundle: json['clusterTrustBundle'] == null
          ? null
          : IoK8SApiCoreV1ClusterTrustBundleProjection.fromJson(
              json['clusterTrustBundle'] as Map<String, dynamic>),
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapProjection.fromJson(
              json['configMap'] as Map<String, dynamic>),
      downwardApi: json['downwardAPI'] == null
          ? null
          : IoK8SApiCoreV1DownwardApiProjection.fromJson(
              json['downwardAPI'] as Map<String, dynamic>),
      secret: json['secret'] == null
          ? null
          : IoK8SApiCoreV1SecretProjection.fromJson(
              json['secret'] as Map<String, dynamic>),
      serviceAccountToken: json['serviceAccountToken'] == null
          ? null
          : IoK8SApiCoreV1ServiceAccountTokenProjection.fromJson(
              json['serviceAccountToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeProjectionToJson(
        IoK8SApiCoreV1VolumeProjection instance) =>
    <String, dynamic>{
      'clusterTrustBundle': instance.clusterTrustBundle,
      'configMap': instance.configMap,
      'downwardAPI': instance.downwardApi,
      'secret': instance.secret,
      'serviceAccountToken': instance.serviceAccountToken,
    };

IoK8SApiCoreV1ClusterTrustBundleProjection
    _$IoK8SApiCoreV1ClusterTrustBundleProjectionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ClusterTrustBundleProjection(
          labelSelector: json['labelSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['labelSelector'] as Map<String, dynamic>),
          name: json['name'] as String?,
          optional: json['optional'] as bool?,
          path: json['path'] as String,
          signerName: json['signerName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ClusterTrustBundleProjectionToJson(
        IoK8SApiCoreV1ClusterTrustBundleProjection instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'name': instance.name,
      'optional': instance.optional,
      'path': instance.path,
      'signerName': instance.signerName,
    };

IoK8SApiCoreV1ConfigMapProjection _$IoK8SApiCoreV1ConfigMapProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapProjection(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapProjectionToJson(
        IoK8SApiCoreV1ConfigMapProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1DownwardApiProjection
    _$IoK8SApiCoreV1DownwardApiProjectionFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiProjection(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiProjectionToJson(
        IoK8SApiCoreV1DownwardApiProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

IoK8SApiCoreV1SecretProjection _$IoK8SApiCoreV1SecretProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretProjection(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretProjectionToJson(
        IoK8SApiCoreV1SecretProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1ServiceAccountTokenProjection
    _$IoK8SApiCoreV1ServiceAccountTokenProjectionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ServiceAccountTokenProjection(
          audience: json['audience'] as String?,
          expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
          path: json['path'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ServiceAccountTokenProjectionToJson(
        IoK8SApiCoreV1ServiceAccountTokenProjection instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'expirationSeconds': instance.expirationSeconds,
      'path': instance.path,
    };

IoK8SApiCoreV1QuobyteVolumeSource _$IoK8SApiCoreV1QuobyteVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1QuobyteVolumeSource(
      group: json['group'] as String?,
      readOnly: json['readOnly'] as bool?,
      registry: json['registry'] as String,
      tenant: json['tenant'] as String?,
      user: json['user'] as String?,
      volume: json['volume'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1QuobyteVolumeSourceToJson(
        IoK8SApiCoreV1QuobyteVolumeSource instance) =>
    <String, dynamic>{
      'group': instance.group,
      'readOnly': instance.readOnly,
      'registry': instance.registry,
      'tenant': instance.tenant,
      'user': instance.user,
      'volume': instance.volume,
    };

IoK8SApiCoreV1RbdVolumeSource _$IoK8SApiCoreV1RbdVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1RbdVolumeSource(
      fsType: json['fsType'] as String?,
      image: json['image'] as String,
      keyring: json['keyring'] as String?,
      monitors:
          (json['monitors'] as List<dynamic>).map((e) => e as String).toList(),
      pool: json['pool'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1RbdVolumeSourceToJson(
        IoK8SApiCoreV1RbdVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'image': instance.image,
      'keyring': instance.keyring,
      'monitors': instance.monitors,
      'pool': instance.pool,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'user': instance.user,
    };

IoK8SApiCoreV1ScaleIoVolumeSource _$IoK8SApiCoreV1ScaleIoVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ScaleIoVolumeSource(
      fsType: json['fsType'] as String?,
      gateway: json['gateway'] as String,
      protectionDomain: json['protectionDomain'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: IoK8SApiCoreV1LocalObjectReference.fromJson(
          json['secretRef'] as Map<String, dynamic>),
      sslEnabled: json['sslEnabled'] as bool?,
      storageMode: json['storageMode'] as String?,
      storagePool: json['storagePool'] as String?,
      system: json['system'] as String,
      volumeName: json['volumeName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ScaleIoVolumeSourceToJson(
        IoK8SApiCoreV1ScaleIoVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'gateway': instance.gateway,
      'protectionDomain': instance.protectionDomain,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'sslEnabled': instance.sslEnabled,
      'storageMode': instance.storageMode,
      'storagePool': instance.storagePool,
      'system': instance.system,
      'volumeName': instance.volumeName,
    };

IoK8SApiCoreV1SecretVolumeSource _$IoK8SApiCoreV1SecretVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretVolumeSource(
      defaultMode: (json['defaultMode'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      optional: json['optional'] as bool?,
      secretName: json['secretName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretVolumeSourceToJson(
        IoK8SApiCoreV1SecretVolumeSource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'items': instance.items,
      'optional': instance.optional,
      'secretName': instance.secretName,
    };

IoK8SApiCoreV1StorageOsVolumeSource
    _$IoK8SApiCoreV1StorageOsVolumeSourceFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1StorageOsVolumeSource(
          fsType: json['fsType'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1LocalObjectReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          volumeName: json['volumeName'] as String?,
          volumeNamespace: json['volumeNamespace'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1StorageOsVolumeSourceToJson(
        IoK8SApiCoreV1StorageOsVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeName': instance.volumeName,
      'volumeNamespace': instance.volumeNamespace,
    };

IoK8SApiCoreV1VsphereVirtualDiskVolumeSource
    _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1VsphereVirtualDiskVolumeSource(
          fsType: json['fsType'] as String?,
          storagePolicyId: json['storagePolicyID'] as String?,
          storagePolicyName: json['storagePolicyName'] as String?,
          volumePath: json['volumePath'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceToJson(
        IoK8SApiCoreV1VsphereVirtualDiskVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'storagePolicyID': instance.storagePolicyId,
      'storagePolicyName': instance.storagePolicyName,
      'volumePath': instance.volumePath,
    };

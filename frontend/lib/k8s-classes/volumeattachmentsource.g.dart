// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumeattachmentsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volumeattachmentsource _$VolumeattachmentsourceFromJson(
        Map<String, dynamic> json) =>
    Volumeattachmentsource(
      inlineVolumeSpec: json['inlineVolumeSpec'] == null
          ? null
          : IoK8SApiCoreV1PersistentVolumeSpec.fromJson(
              json['inlineVolumeSpec'] as Map<String, dynamic>),
      persistentVolumeName: json['persistentVolumeName'] as String?,
    );

Map<String, dynamic> _$VolumeattachmentsourceToJson(
        Volumeattachmentsource instance) =>
    <String, dynamic>{
      'inlineVolumeSpec': instance.inlineVolumeSpec,
      'persistentVolumeName': instance.persistentVolumeName,
    };

IoK8SApiCoreV1PersistentVolumeSpec _$IoK8SApiCoreV1PersistentVolumeSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PersistentVolumeSpec(
      accessModes: (json['accessModes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
          : IoK8SApiCoreV1AzureFilePersistentVolumeSource.fromJson(
              json['azureFile'] as Map<String, dynamic>),
      capacity: json['capacity'] as Map<String, dynamic>?,
      cephfs: json['cephfs'] == null
          ? null
          : IoK8SApiCoreV1CephFsPersistentVolumeSource.fromJson(
              json['cephfs'] as Map<String, dynamic>),
      cinder: json['cinder'] == null
          ? null
          : IoK8SApiCoreV1CinderPersistentVolumeSource.fromJson(
              json['cinder'] as Map<String, dynamic>),
      claimRef: json['claimRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['claimRef'] as Map<String, dynamic>),
      csi: json['csi'] == null
          ? null
          : IoK8SApiCoreV1CsiPersistentVolumeSource.fromJson(
              json['csi'] as Map<String, dynamic>),
      fc: json['fc'] == null
          ? null
          : IoK8SApiCoreV1FcVolumeSource.fromJson(
              json['fc'] as Map<String, dynamic>),
      flexVolume: json['flexVolume'] == null
          ? null
          : IoK8SApiCoreV1FlexPersistentVolumeSource.fromJson(
              json['flexVolume'] as Map<String, dynamic>),
      flocker: json['flocker'] == null
          ? null
          : IoK8SApiCoreV1FlockerVolumeSource.fromJson(
              json['flocker'] as Map<String, dynamic>),
      gcePersistentDisk: json['gcePersistentDisk'] == null
          ? null
          : IoK8SApiCoreV1GcePersistentDiskVolumeSource.fromJson(
              json['gcePersistentDisk'] as Map<String, dynamic>),
      glusterfs: json['glusterfs'] == null
          ? null
          : IoK8SApiCoreV1GlusterfsPersistentVolumeSource.fromJson(
              json['glusterfs'] as Map<String, dynamic>),
      hostPath: json['hostPath'] == null
          ? null
          : IoK8SApiCoreV1HostPathVolumeSource.fromJson(
              json['hostPath'] as Map<String, dynamic>),
      iscsi: json['iscsi'] == null
          ? null
          : IoK8SApiCoreV1IscsiPersistentVolumeSource.fromJson(
              json['iscsi'] as Map<String, dynamic>),
      local: json['local'] == null
          ? null
          : IoK8SApiCoreV1LocalVolumeSource.fromJson(
              json['local'] as Map<String, dynamic>),
      mountOptions: (json['mountOptions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      nfs: json['nfs'] == null
          ? null
          : IoK8SApiCoreV1NfsVolumeSource.fromJson(
              json['nfs'] as Map<String, dynamic>),
      nodeAffinity: json['nodeAffinity'] == null
          ? null
          : IoK8SApiCoreV1VolumeNodeAffinity.fromJson(
              json['nodeAffinity'] as Map<String, dynamic>),
      persistentVolumeReclaimPolicy:
          json['persistentVolumeReclaimPolicy'] as String?,
      photonPersistentDisk: json['photonPersistentDisk'] == null
          ? null
          : IoK8SApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(
              json['photonPersistentDisk'] as Map<String, dynamic>),
      portworxVolume: json['portworxVolume'] == null
          ? null
          : IoK8SApiCoreV1PortworxVolumeSource.fromJson(
              json['portworxVolume'] as Map<String, dynamic>),
      quobyte: json['quobyte'] == null
          ? null
          : IoK8SApiCoreV1QuobyteVolumeSource.fromJson(
              json['quobyte'] as Map<String, dynamic>),
      rbd: json['rbd'] == null
          ? null
          : IoK8SApiCoreV1RbdPersistentVolumeSource.fromJson(
              json['rbd'] as Map<String, dynamic>),
      scaleIo: json['scaleIO'] == null
          ? null
          : IoK8SApiCoreV1ScaleIoPersistentVolumeSource.fromJson(
              json['scaleIO'] as Map<String, dynamic>),
      storageClassName: json['storageClassName'] as String?,
      storageos: json['storageos'] == null
          ? null
          : IoK8SApiCoreV1StorageOsPersistentVolumeSource.fromJson(
              json['storageos'] as Map<String, dynamic>),
      volumeAttributesClassName: json['volumeAttributesClassName'] as String?,
      volumeMode: json['volumeMode'] as String?,
      vsphereVolume: json['vsphereVolume'] == null
          ? null
          : IoK8SApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(
              json['vsphereVolume'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeSpecToJson(
        IoK8SApiCoreV1PersistentVolumeSpec instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'awsElasticBlockStore': instance.awsElasticBlockStore,
      'azureDisk': instance.azureDisk,
      'azureFile': instance.azureFile,
      'capacity': instance.capacity,
      'cephfs': instance.cephfs,
      'cinder': instance.cinder,
      'claimRef': instance.claimRef,
      'csi': instance.csi,
      'fc': instance.fc,
      'flexVolume': instance.flexVolume,
      'flocker': instance.flocker,
      'gcePersistentDisk': instance.gcePersistentDisk,
      'glusterfs': instance.glusterfs,
      'hostPath': instance.hostPath,
      'iscsi': instance.iscsi,
      'local': instance.local,
      'mountOptions': instance.mountOptions,
      'nfs': instance.nfs,
      'nodeAffinity': instance.nodeAffinity,
      'persistentVolumeReclaimPolicy': instance.persistentVolumeReclaimPolicy,
      'photonPersistentDisk': instance.photonPersistentDisk,
      'portworxVolume': instance.portworxVolume,
      'quobyte': instance.quobyte,
      'rbd': instance.rbd,
      'scaleIO': instance.scaleIo,
      'storageClassName': instance.storageClassName,
      'storageos': instance.storageos,
      'volumeAttributesClassName': instance.volumeAttributesClassName,
      'volumeMode': instance.volumeMode,
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

IoK8SApiCoreV1AzureFilePersistentVolumeSource
    _$IoK8SApiCoreV1AzureFilePersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1AzureFilePersistentVolumeSource(
          readOnly: json['readOnly'] as bool?,
          secretName: json['secretName'] as String,
          secretNamespace: json['secretNamespace'] as String?,
          shareName: json['shareName'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1AzureFilePersistentVolumeSourceToJson(
        IoK8SApiCoreV1AzureFilePersistentVolumeSource instance) =>
    <String, dynamic>{
      'readOnly': instance.readOnly,
      'secretName': instance.secretName,
      'secretNamespace': instance.secretNamespace,
      'shareName': instance.shareName,
    };

IoK8SApiCoreV1CephFsPersistentVolumeSource
    _$IoK8SApiCoreV1CephFsPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1CephFsPersistentVolumeSource(
          monitors: (json['monitors'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          path: json['path'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretFile: json['secretFile'] as String?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          user: json['user'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1CephFsPersistentVolumeSourceToJson(
        IoK8SApiCoreV1CephFsPersistentVolumeSource instance) =>
    <String, dynamic>{
      'monitors': instance.monitors,
      'path': instance.path,
      'readOnly': instance.readOnly,
      'secretFile': instance.secretFile,
      'secretRef': instance.secretRef,
      'user': instance.user,
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

IoK8SApiCoreV1CinderPersistentVolumeSource
    _$IoK8SApiCoreV1CinderPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1CinderPersistentVolumeSource(
          fsType: json['fsType'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          volumeId: json['volumeID'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1CinderPersistentVolumeSourceToJson(
        IoK8SApiCoreV1CinderPersistentVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeID': instance.volumeId,
    };

IoK8SApiCoreV1ObjectReference _$IoK8SApiCoreV1ObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectReference(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resourceVersion: json['resourceVersion'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectReferenceToJson(
        IoK8SApiCoreV1ObjectReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };

IoK8SApiCoreV1CsiPersistentVolumeSource
    _$IoK8SApiCoreV1CsiPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1CsiPersistentVolumeSource(
          controllerExpandSecretRef: json['controllerExpandSecretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['controllerExpandSecretRef'] as Map<String, dynamic>),
          controllerPublishSecretRef: json['controllerPublishSecretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['controllerPublishSecretRef'] as Map<String, dynamic>),
          driver: json['driver'] as String,
          fsType: json['fsType'] as String?,
          nodeExpandSecretRef: json['nodeExpandSecretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['nodeExpandSecretRef'] as Map<String, dynamic>),
          nodePublishSecretRef: json['nodePublishSecretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['nodePublishSecretRef'] as Map<String, dynamic>),
          nodeStageSecretRef: json['nodeStageSecretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['nodeStageSecretRef'] as Map<String, dynamic>),
          readOnly: json['readOnly'] as bool?,
          volumeAttributes:
              (json['volumeAttributes'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          volumeHandle: json['volumeHandle'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1CsiPersistentVolumeSourceToJson(
        IoK8SApiCoreV1CsiPersistentVolumeSource instance) =>
    <String, dynamic>{
      'controllerExpandSecretRef': instance.controllerExpandSecretRef,
      'controllerPublishSecretRef': instance.controllerPublishSecretRef,
      'driver': instance.driver,
      'fsType': instance.fsType,
      'nodeExpandSecretRef': instance.nodeExpandSecretRef,
      'nodePublishSecretRef': instance.nodePublishSecretRef,
      'nodeStageSecretRef': instance.nodeStageSecretRef,
      'readOnly': instance.readOnly,
      'volumeAttributes': instance.volumeAttributes,
      'volumeHandle': instance.volumeHandle,
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

IoK8SApiCoreV1FlexPersistentVolumeSource
    _$IoK8SApiCoreV1FlexPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1FlexPersistentVolumeSource(
          driver: json['driver'] as String,
          fsType: json['fsType'] as String?,
          options: (json['options'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1FlexPersistentVolumeSourceToJson(
        IoK8SApiCoreV1FlexPersistentVolumeSource instance) =>
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

IoK8SApiCoreV1GlusterfsPersistentVolumeSource
    _$IoK8SApiCoreV1GlusterfsPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1GlusterfsPersistentVolumeSource(
          endpoints: json['endpoints'] as String,
          endpointsNamespace: json['endpointsNamespace'] as String?,
          path: json['path'] as String,
          readOnly: json['readOnly'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1GlusterfsPersistentVolumeSourceToJson(
        IoK8SApiCoreV1GlusterfsPersistentVolumeSource instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'endpointsNamespace': instance.endpointsNamespace,
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

IoK8SApiCoreV1IscsiPersistentVolumeSource
    _$IoK8SApiCoreV1IscsiPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1IscsiPersistentVolumeSource(
          chapAuthDiscovery: json['chapAuthDiscovery'] as bool?,
          chapAuthSession: json['chapAuthSession'] as bool?,
          fsType: json['fsType'] as String?,
          initiatorName: json['initiatorName'] as String?,
          iqn: json['iqn'] as String,
          iscsiInterface: json['iscsiInterface'] as String?,
          lun: (json['lun'] as num).toInt(),
          portals: (json['portals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          targetPortal: json['targetPortal'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1IscsiPersistentVolumeSourceToJson(
        IoK8SApiCoreV1IscsiPersistentVolumeSource instance) =>
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

IoK8SApiCoreV1LocalVolumeSource _$IoK8SApiCoreV1LocalVolumeSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LocalVolumeSource(
      fsType: json['fsType'] as String?,
      path: json['path'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1LocalVolumeSourceToJson(
        IoK8SApiCoreV1LocalVolumeSource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'path': instance.path,
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

IoK8SApiCoreV1VolumeNodeAffinity _$IoK8SApiCoreV1VolumeNodeAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeNodeAffinity(
      required: json['required'] == null
          ? null
          : IoK8SApiCoreV1NodeSelector.fromJson(
              json['required'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeNodeAffinityToJson(
        IoK8SApiCoreV1VolumeNodeAffinity instance) =>
    <String, dynamic>{
      'required': instance.required,
    };

IoK8SApiCoreV1NodeSelector _$IoK8SApiCoreV1NodeSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelector(
      nodeSelectorTerms: (json['nodeSelectorTerms'] as List<dynamic>)
          .map((e) => IoK8SApiCoreV1NodeSelectorTerm.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorToJson(
        IoK8SApiCoreV1NodeSelector instance) =>
    <String, dynamic>{
      'nodeSelectorTerms': instance.nodeSelectorTerms,
    };

IoK8SApiCoreV1NodeSelectorTerm _$IoK8SApiCoreV1NodeSelectorTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelectorTerm(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      matchFields: (json['matchFields'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorTermToJson(
        IoK8SApiCoreV1NodeSelectorTerm instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchFields': instance.matchFields,
    };

IoK8SApiCoreV1NodeSelectorRequirement
    _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1NodeSelectorRequirement(
          key: json['key'] as String,
          ioK8SApiCoreV1NodeSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorRequirementToJson(
        IoK8SApiCoreV1NodeSelectorRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1NodeSelectorRequirementOperator,
      'values': instance.values,
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

IoK8SApiCoreV1RbdPersistentVolumeSource
    _$IoK8SApiCoreV1RbdPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1RbdPersistentVolumeSource(
          fsType: json['fsType'] as String?,
          image: json['image'] as String,
          keyring: json['keyring'] as String?,
          monitors: (json['monitors'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          pool: json['pool'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1SecretReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          user: json['user'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1RbdPersistentVolumeSourceToJson(
        IoK8SApiCoreV1RbdPersistentVolumeSource instance) =>
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

IoK8SApiCoreV1ScaleIoPersistentVolumeSource
    _$IoK8SApiCoreV1ScaleIoPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ScaleIoPersistentVolumeSource(
          fsType: json['fsType'] as String?,
          gateway: json['gateway'] as String,
          protectionDomain: json['protectionDomain'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretRef: IoK8SApiCoreV1SecretReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
          sslEnabled: json['sslEnabled'] as bool?,
          storageMode: json['storageMode'] as String?,
          storagePool: json['storagePool'] as String?,
          system: json['system'] as String,
          volumeName: json['volumeName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ScaleIoPersistentVolumeSourceToJson(
        IoK8SApiCoreV1ScaleIoPersistentVolumeSource instance) =>
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

IoK8SApiCoreV1StorageOsPersistentVolumeSource
    _$IoK8SApiCoreV1StorageOsPersistentVolumeSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1StorageOsPersistentVolumeSource(
          fsType: json['fsType'] as String?,
          readOnly: json['readOnly'] as bool?,
          secretRef: json['secretRef'] == null
              ? null
              : IoK8SApiCoreV1ObjectReference.fromJson(
                  json['secretRef'] as Map<String, dynamic>),
          volumeName: json['volumeName'] as String?,
          volumeNamespace: json['volumeNamespace'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1StorageOsPersistentVolumeSourceToJson(
        IoK8SApiCoreV1StorageOsPersistentVolumeSource instance) =>
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

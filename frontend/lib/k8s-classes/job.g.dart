// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Job _$JobFromJson(Map<String, dynamic> json) => Job(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiBatchV1JobSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiBatchV1JobStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobToJson(Job instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.JOB: 'Job',
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

IoK8SApiBatchV1JobSpec _$IoK8SApiBatchV1JobSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1JobSpec(
      activeDeadlineSeconds: (json['activeDeadlineSeconds'] as num?)?.toInt(),
      backoffLimit: (json['backoffLimit'] as num?)?.toInt(),
      backoffLimitPerIndex: (json['backoffLimitPerIndex'] as num?)?.toInt(),
      completionMode: json['completionMode'] as String?,
      completions: (json['completions'] as num?)?.toInt(),
      managedBy: json['managedBy'] as String?,
      manualSelector: json['manualSelector'] as bool?,
      maxFailedIndexes: (json['maxFailedIndexes'] as num?)?.toInt(),
      parallelism: (json['parallelism'] as num?)?.toInt(),
      podFailurePolicy: json['podFailurePolicy'] == null
          ? null
          : IoK8SApiBatchV1PodFailurePolicy.fromJson(
              json['podFailurePolicy'] as Map<String, dynamic>),
      podReplacementPolicy: json['podReplacementPolicy'] as String?,
      selector: json['selector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['selector'] as Map<String, dynamic>),
      successPolicy: json['successPolicy'] == null
          ? null
          : IoK8SApiBatchV1SuccessPolicy.fromJson(
              json['successPolicy'] as Map<String, dynamic>),
      suspend: json['suspend'] as bool?,
      template: IoK8SApiCoreV1PodTemplateSpec.fromJson(
          json['template'] as Map<String, dynamic>),
      ttlSecondsAfterFinished:
          (json['ttlSecondsAfterFinished'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiBatchV1JobSpecToJson(
        IoK8SApiBatchV1JobSpec instance) =>
    <String, dynamic>{
      'activeDeadlineSeconds': instance.activeDeadlineSeconds,
      'backoffLimit': instance.backoffLimit,
      'backoffLimitPerIndex': instance.backoffLimitPerIndex,
      'completionMode': instance.completionMode,
      'completions': instance.completions,
      'managedBy': instance.managedBy,
      'manualSelector': instance.manualSelector,
      'maxFailedIndexes': instance.maxFailedIndexes,
      'parallelism': instance.parallelism,
      'podFailurePolicy': instance.podFailurePolicy,
      'podReplacementPolicy': instance.podReplacementPolicy,
      'selector': instance.selector,
      'successPolicy': instance.successPolicy,
      'suspend': instance.suspend,
      'template': instance.template,
      'ttlSecondsAfterFinished': instance.ttlSecondsAfterFinished,
    };

IoK8SApiBatchV1PodFailurePolicy _$IoK8SApiBatchV1PodFailurePolicyFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1PodFailurePolicy(
      rules: (json['rules'] as List<dynamic>)
          .map((e) => IoK8SApiBatchV1PodFailurePolicyRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiBatchV1PodFailurePolicyToJson(
        IoK8SApiBatchV1PodFailurePolicy instance) =>
    <String, dynamic>{
      'rules': instance.rules,
    };

IoK8SApiBatchV1PodFailurePolicyRule
    _$IoK8SApiBatchV1PodFailurePolicyRuleFromJson(Map<String, dynamic> json) =>
        IoK8SApiBatchV1PodFailurePolicyRule(
          action: json['action'] as String,
          onExitCodes: json['onExitCodes'] == null
              ? null
              : IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement.fromJson(
                  json['onExitCodes'] as Map<String, dynamic>),
          onPodConditions: (json['onPodConditions'] as List<dynamic>?)
              ?.map((e) => IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiBatchV1PodFailurePolicyRuleToJson(
        IoK8SApiBatchV1PodFailurePolicyRule instance) =>
    <String, dynamic>{
      'action': instance.action,
      'onExitCodes': instance.onExitCodes,
      'onPodConditions': instance.onPodConditions,
    };

IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement
    _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement(
          containerName: json['containerName'] as String?,
          ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementToJson(
            IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement instance) =>
        <String, dynamic>{
          'containerName': instance.containerName,
          'operator': instance
              .ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator,
          'values': instance.values,
        };

IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern
    _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern(
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternToJson(
            IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern instance) =>
        <String, dynamic>{
          'status': instance.status,
          'type': instance.type,
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

IoK8SApiBatchV1SuccessPolicy _$IoK8SApiBatchV1SuccessPolicyFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1SuccessPolicy(
      rules: (json['rules'] as List<dynamic>)
          .map((e) => IoK8SApiBatchV1SuccessPolicyRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiBatchV1SuccessPolicyToJson(
        IoK8SApiBatchV1SuccessPolicy instance) =>
    <String, dynamic>{
      'rules': instance.rules,
    };

IoK8SApiBatchV1SuccessPolicyRule _$IoK8SApiBatchV1SuccessPolicyRuleFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1SuccessPolicyRule(
      succeededCount: (json['succeededCount'] as num?)?.toInt(),
      succeededIndexes: json['succeededIndexes'] as String?,
    );

Map<String, dynamic> _$IoK8SApiBatchV1SuccessPolicyRuleToJson(
        IoK8SApiBatchV1SuccessPolicyRule instance) =>
    <String, dynamic>{
      'succeededCount': instance.succeededCount,
      'succeededIndexes': instance.succeededIndexes,
    };

IoK8SApiCoreV1PodTemplateSpec _$IoK8SApiCoreV1PodTemplateSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodTemplateSpec(
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiCoreV1PodSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodTemplateSpecToJson(
        IoK8SApiCoreV1PodTemplateSpec instance) =>
    <String, dynamic>{
      'metadata': instance.metadata,
      'spec': instance.spec,
    };

IoK8SApiCoreV1PodSpec _$IoK8SApiCoreV1PodSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodSpec(
      activeDeadlineSeconds: (json['activeDeadlineSeconds'] as num?)?.toInt(),
      affinity: json['affinity'] == null
          ? null
          : IoK8SApiCoreV1Affinity.fromJson(
              json['affinity'] as Map<String, dynamic>),
      automountServiceAccountToken:
          json['automountServiceAccountToken'] as bool?,
      containers: (json['containers'] as List<dynamic>)
          .map((e) =>
              IoK8SApiCoreV1Container.fromJson(e as Map<String, dynamic>))
          .toList(),
      dnsConfig: json['dnsConfig'] == null
          ? null
          : IoK8SApiCoreV1PodDnsConfig.fromJson(
              json['dnsConfig'] as Map<String, dynamic>),
      dnsPolicy: json['dnsPolicy'] as String?,
      enableServiceLinks: json['enableServiceLinks'] as bool?,
      ephemeralContainers: (json['ephemeralContainers'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1EphemeralContainer.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      hostAliases: (json['hostAliases'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1HostAlias.fromJson(e as Map<String, dynamic>))
          .toList(),
      hostIpc: json['hostIPC'] as bool?,
      hostname: json['hostname'] as String?,
      hostNetwork: json['hostNetwork'] as bool?,
      hostPid: json['hostPID'] as bool?,
      hostUsers: json['hostUsers'] as bool?,
      imagePullSecrets: (json['imagePullSecrets'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1LocalObjectReference.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      initContainers: (json['initContainers'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1Container.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeName: json['nodeName'] as String?,
      nodeSelector: (json['nodeSelector'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      os: json['os'] == null
          ? null
          : IoK8SApiCoreV1PodOs.fromJson(json['os'] as Map<String, dynamic>),
      overhead: json['overhead'] as Map<String, dynamic>?,
      preemptionPolicy: json['preemptionPolicy'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      priorityClassName: json['priorityClassName'] as String?,
      readinessGates: (json['readinessGates'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodReadinessGate.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resourceClaims: (json['resourceClaims'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodResourceClaim.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      restartPolicy: json['restartPolicy'] as String?,
      runtimeClassName: json['runtimeClassName'] as String?,
      schedulerName: json['schedulerName'] as String?,
      schedulingGates: (json['schedulingGates'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodSchedulingGate.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      securityContext: json['securityContext'] == null
          ? null
          : IoK8SApiCoreV1PodSecurityContext.fromJson(
              json['securityContext'] as Map<String, dynamic>),
      serviceAccount: json['serviceAccount'] as String?,
      serviceAccountName: json['serviceAccountName'] as String?,
      setHostnameAsFqdn: json['setHostnameAsFQDN'] as bool?,
      shareProcessNamespace: json['shareProcessNamespace'] as bool?,
      subdomain: json['subdomain'] as String?,
      terminationGracePeriodSeconds:
          (json['terminationGracePeriodSeconds'] as num?)?.toInt(),
      tolerations: (json['tolerations'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1Toleration.fromJson(e as Map<String, dynamic>))
          .toList(),
      topologySpreadConstraints:
          (json['topologySpreadConstraints'] as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1TopologySpreadConstraint.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      volumes: (json['volumes'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1Volume.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodSpecToJson(
        IoK8SApiCoreV1PodSpec instance) =>
    <String, dynamic>{
      'activeDeadlineSeconds': instance.activeDeadlineSeconds,
      'affinity': instance.affinity,
      'automountServiceAccountToken': instance.automountServiceAccountToken,
      'containers': instance.containers,
      'dnsConfig': instance.dnsConfig,
      'dnsPolicy': instance.dnsPolicy,
      'enableServiceLinks': instance.enableServiceLinks,
      'ephemeralContainers': instance.ephemeralContainers,
      'hostAliases': instance.hostAliases,
      'hostIPC': instance.hostIpc,
      'hostname': instance.hostname,
      'hostNetwork': instance.hostNetwork,
      'hostPID': instance.hostPid,
      'hostUsers': instance.hostUsers,
      'imagePullSecrets': instance.imagePullSecrets,
      'initContainers': instance.initContainers,
      'nodeName': instance.nodeName,
      'nodeSelector': instance.nodeSelector,
      'os': instance.os,
      'overhead': instance.overhead,
      'preemptionPolicy': instance.preemptionPolicy,
      'priority': instance.priority,
      'priorityClassName': instance.priorityClassName,
      'readinessGates': instance.readinessGates,
      'resourceClaims': instance.resourceClaims,
      'restartPolicy': instance.restartPolicy,
      'runtimeClassName': instance.runtimeClassName,
      'schedulerName': instance.schedulerName,
      'schedulingGates': instance.schedulingGates,
      'securityContext': instance.securityContext,
      'serviceAccount': instance.serviceAccount,
      'serviceAccountName': instance.serviceAccountName,
      'setHostnameAsFQDN': instance.setHostnameAsFqdn,
      'shareProcessNamespace': instance.shareProcessNamespace,
      'subdomain': instance.subdomain,
      'terminationGracePeriodSeconds': instance.terminationGracePeriodSeconds,
      'tolerations': instance.tolerations,
      'topologySpreadConstraints': instance.topologySpreadConstraints,
      'volumes': instance.volumes,
    };

IoK8SApiCoreV1Affinity _$IoK8SApiCoreV1AffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Affinity(
      nodeAffinity: json['nodeAffinity'] == null
          ? null
          : IoK8SApiCoreV1NodeAffinity.fromJson(
              json['nodeAffinity'] as Map<String, dynamic>),
      podAffinity: json['podAffinity'] == null
          ? null
          : IoK8SApiCoreV1PodAffinity.fromJson(
              json['podAffinity'] as Map<String, dynamic>),
      podAntiAffinity: json['podAntiAffinity'] == null
          ? null
          : IoK8SApiCoreV1PodAntiAffinity.fromJson(
              json['podAntiAffinity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1AffinityToJson(
        IoK8SApiCoreV1Affinity instance) =>
    <String, dynamic>{
      'nodeAffinity': instance.nodeAffinity,
      'podAffinity': instance.podAffinity,
      'podAntiAffinity': instance.podAntiAffinity,
    };

IoK8SApiCoreV1NodeAffinity _$IoK8SApiCoreV1NodeAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          (json['preferredDuringSchedulingIgnoredDuringExecution']
                  as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1PreferredSchedulingTerm.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      requiredDuringSchedulingIgnoredDuringExecution:
          json['requiredDuringSchedulingIgnoredDuringExecution'] == null
              ? null
              : IoK8SApiCoreV1NodeSelector.fromJson(
                  json['requiredDuringSchedulingIgnoredDuringExecution']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeAffinityToJson(
        IoK8SApiCoreV1NodeAffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };

IoK8SApiCoreV1PreferredSchedulingTerm
    _$IoK8SApiCoreV1PreferredSchedulingTermFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PreferredSchedulingTerm(
          preference: IoK8SApiCoreV1NodeSelectorTerm.fromJson(
              json['preference'] as Map<String, dynamic>),
          weight: (json['weight'] as num).toInt(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1PreferredSchedulingTermToJson(
        IoK8SApiCoreV1PreferredSchedulingTerm instance) =>
    <String, dynamic>{
      'preference': instance.preference,
      'weight': instance.weight,
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

IoK8SApiCoreV1PodAffinity _$IoK8SApiCoreV1PodAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          (json['preferredDuringSchedulingIgnoredDuringExecution']
                  as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1WeightedPodAffinityTerm.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      requiredDuringSchedulingIgnoredDuringExecution: (json[
                  'requiredDuringSchedulingIgnoredDuringExecution']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PodAffinityTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodAffinityToJson(
        IoK8SApiCoreV1PodAffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };

IoK8SApiCoreV1WeightedPodAffinityTerm
    _$IoK8SApiCoreV1WeightedPodAffinityTermFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1WeightedPodAffinityTerm(
          podAffinityTerm: IoK8SApiCoreV1PodAffinityTerm.fromJson(
              json['podAffinityTerm'] as Map<String, dynamic>),
          weight: (json['weight'] as num).toInt(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1WeightedPodAffinityTermToJson(
        IoK8SApiCoreV1WeightedPodAffinityTerm instance) =>
    <String, dynamic>{
      'podAffinityTerm': instance.podAffinityTerm,
      'weight': instance.weight,
    };

IoK8SApiCoreV1PodAffinityTerm _$IoK8SApiCoreV1PodAffinityTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAffinityTerm(
      labelSelector: json['labelSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['labelSelector'] as Map<String, dynamic>),
      matchLabelKeys: (json['matchLabelKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mismatchLabelKeys: (json['mismatchLabelKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      namespaces: (json['namespaces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      namespaceSelector: json['namespaceSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['namespaceSelector'] as Map<String, dynamic>),
      topologyKey: json['topologyKey'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodAffinityTermToJson(
        IoK8SApiCoreV1PodAffinityTerm instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'matchLabelKeys': instance.matchLabelKeys,
      'mismatchLabelKeys': instance.mismatchLabelKeys,
      'namespaces': instance.namespaces,
      'namespaceSelector': instance.namespaceSelector,
      'topologyKey': instance.topologyKey,
    };

IoK8SApiCoreV1PodAntiAffinity _$IoK8SApiCoreV1PodAntiAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAntiAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          (json['preferredDuringSchedulingIgnoredDuringExecution']
                  as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1WeightedPodAffinityTerm.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      requiredDuringSchedulingIgnoredDuringExecution: (json[
                  'requiredDuringSchedulingIgnoredDuringExecution']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PodAffinityTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodAntiAffinityToJson(
        IoK8SApiCoreV1PodAntiAffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };

IoK8SApiCoreV1Container _$IoK8SApiCoreV1ContainerFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Container(
      args: (json['args'] as List<dynamic>?)?.map((e) => e as String).toList(),
      command:
          (json['command'] as List<dynamic>?)?.map((e) => e as String).toList(),
      env: (json['env'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1EnvVar.fromJson(e as Map<String, dynamic>))
          .toList(),
      envFrom: (json['envFrom'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EnvFromSource.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      imagePullPolicy: json['imagePullPolicy'] as String?,
      lifecycle: json['lifecycle'] == null
          ? null
          : IoK8SApiCoreV1Lifecycle.fromJson(
              json['lifecycle'] as Map<String, dynamic>),
      livenessProbe: json['livenessProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['livenessProbe'] as Map<String, dynamic>),
      name: json['name'] as String,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerPort.fromJson(e as Map<String, dynamic>))
          .toList(),
      readinessProbe: json['readinessProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['readinessProbe'] as Map<String, dynamic>),
      resizePolicy: (json['resizePolicy'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ContainerResizePolicy.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resources: json['resources'] == null
          ? null
          : IoK8SApiCoreV1ResourceRequirements.fromJson(
              json['resources'] as Map<String, dynamic>),
      restartPolicy: json['restartPolicy'] as String?,
      securityContext: json['securityContext'] == null
          ? null
          : IoK8SApiCoreV1SecurityContext.fromJson(
              json['securityContext'] as Map<String, dynamic>),
      startupProbe: json['startupProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['startupProbe'] as Map<String, dynamic>),
      stdin: json['stdin'] as bool?,
      stdinOnce: json['stdinOnce'] as bool?,
      terminationMessagePath: json['terminationMessagePath'] as String?,
      terminationMessagePolicy: json['terminationMessagePolicy'] as String?,
      tty: json['tty'] as bool?,
      volumeDevices: (json['volumeDevices'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1VolumeDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      volumeMounts: (json['volumeMounts'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1VolumeMount.fromJson(e as Map<String, dynamic>))
          .toList(),
      workingDir: json['workingDir'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerToJson(
        IoK8SApiCoreV1Container instance) =>
    <String, dynamic>{
      'args': instance.args,
      'command': instance.command,
      'env': instance.env,
      'envFrom': instance.envFrom,
      'image': instance.image,
      'imagePullPolicy': instance.imagePullPolicy,
      'lifecycle': instance.lifecycle,
      'livenessProbe': instance.livenessProbe,
      'name': instance.name,
      'ports': instance.ports,
      'readinessProbe': instance.readinessProbe,
      'resizePolicy': instance.resizePolicy,
      'resources': instance.resources,
      'restartPolicy': instance.restartPolicy,
      'securityContext': instance.securityContext,
      'startupProbe': instance.startupProbe,
      'stdin': instance.stdin,
      'stdinOnce': instance.stdinOnce,
      'terminationMessagePath': instance.terminationMessagePath,
      'terminationMessagePolicy': instance.terminationMessagePolicy,
      'tty': instance.tty,
      'volumeDevices': instance.volumeDevices,
      'volumeMounts': instance.volumeMounts,
      'workingDir': instance.workingDir,
    };

IoK8SApiCoreV1EnvVar _$IoK8SApiCoreV1EnvVarFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EnvVar(
      name: json['name'] as String,
      value: json['value'] as String?,
      valueFrom: json['valueFrom'] == null
          ? null
          : IoK8SApiCoreV1EnvVarSource.fromJson(
              json['valueFrom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EnvVarToJson(
        IoK8SApiCoreV1EnvVar instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'valueFrom': instance.valueFrom,
    };

IoK8SApiCoreV1EnvVarSource _$IoK8SApiCoreV1EnvVarSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EnvVarSource(
      configMapKeyRef: json['configMapKeyRef'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapKeySelector.fromJson(
              json['configMapKeyRef'] as Map<String, dynamic>),
      fieldRef: json['fieldRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
              json['fieldRef'] as Map<String, dynamic>),
      resourceFieldRef: json['resourceFieldRef'] == null
          ? null
          : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
              json['resourceFieldRef'] as Map<String, dynamic>),
      secretKeyRef: json['secretKeyRef'] == null
          ? null
          : IoK8SApiCoreV1SecretKeySelector.fromJson(
              json['secretKeyRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EnvVarSourceToJson(
        IoK8SApiCoreV1EnvVarSource instance) =>
    <String, dynamic>{
      'configMapKeyRef': instance.configMapKeyRef,
      'fieldRef': instance.fieldRef,
      'resourceFieldRef': instance.resourceFieldRef,
      'secretKeyRef': instance.secretKeyRef,
    };

IoK8SApiCoreV1ConfigMapKeySelector _$IoK8SApiCoreV1ConfigMapKeySelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapKeySelector(
      key: json['key'] as String,
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapKeySelectorToJson(
        IoK8SApiCoreV1ConfigMapKeySelector instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'optional': instance.optional,
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

IoK8SApiCoreV1SecretKeySelector _$IoK8SApiCoreV1SecretKeySelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretKeySelector(
      key: json['key'] as String,
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretKeySelectorToJson(
        IoK8SApiCoreV1SecretKeySelector instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1EnvFromSource _$IoK8SApiCoreV1EnvFromSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EnvFromSource(
      configMapRef: json['configMapRef'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapEnvSource.fromJson(
              json['configMapRef'] as Map<String, dynamic>),
      prefix: json['prefix'] as String?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretEnvSource.fromJson(
              json['secretRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EnvFromSourceToJson(
        IoK8SApiCoreV1EnvFromSource instance) =>
    <String, dynamic>{
      'configMapRef': instance.configMapRef,
      'prefix': instance.prefix,
      'secretRef': instance.secretRef,
    };

IoK8SApiCoreV1ConfigMapEnvSource _$IoK8SApiCoreV1ConfigMapEnvSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapEnvSource(
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapEnvSourceToJson(
        IoK8SApiCoreV1ConfigMapEnvSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1SecretEnvSource _$IoK8SApiCoreV1SecretEnvSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretEnvSource(
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretEnvSourceToJson(
        IoK8SApiCoreV1SecretEnvSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1Lifecycle _$IoK8SApiCoreV1LifecycleFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Lifecycle(
      postStart: json['postStart'] == null
          ? null
          : IoK8SApiCoreV1LifecycleHandler.fromJson(
              json['postStart'] as Map<String, dynamic>),
      preStop: json['preStop'] == null
          ? null
          : IoK8SApiCoreV1LifecycleHandler.fromJson(
              json['preStop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LifecycleToJson(
        IoK8SApiCoreV1Lifecycle instance) =>
    <String, dynamic>{
      'postStart': instance.postStart,
      'preStop': instance.preStop,
    };

IoK8SApiCoreV1LifecycleHandler _$IoK8SApiCoreV1LifecycleHandlerFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LifecycleHandler(
      exec: json['exec'] == null
          ? null
          : IoK8SApiCoreV1ExecAction.fromJson(
              json['exec'] as Map<String, dynamic>),
      httpGet: json['httpGet'] == null
          ? null
          : IoK8SApiCoreV1HttpGetAction.fromJson(
              json['httpGet'] as Map<String, dynamic>),
      sleep: json['sleep'] == null
          ? null
          : IoK8SApiCoreV1SleepAction.fromJson(
              json['sleep'] as Map<String, dynamic>),
      tcpSocket: json['tcpSocket'] == null
          ? null
          : IoK8SApiCoreV1TcpSocketAction.fromJson(
              json['tcpSocket'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LifecycleHandlerToJson(
        IoK8SApiCoreV1LifecycleHandler instance) =>
    <String, dynamic>{
      'exec': instance.exec,
      'httpGet': instance.httpGet,
      'sleep': instance.sleep,
      'tcpSocket': instance.tcpSocket,
    };

IoK8SApiCoreV1ExecAction _$IoK8SApiCoreV1ExecActionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ExecAction(
      command:
          (json['command'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ExecActionToJson(
        IoK8SApiCoreV1ExecAction instance) =>
    <String, dynamic>{
      'command': instance.command,
    };

IoK8SApiCoreV1HttpGetAction _$IoK8SApiCoreV1HttpGetActionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HttpGetAction(
      host: json['host'] as String?,
      httpHeaders: (json['httpHeaders'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1HttpHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      port: json['port'],
      scheme: json['scheme'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HttpGetActionToJson(
        IoK8SApiCoreV1HttpGetAction instance) =>
    <String, dynamic>{
      'host': instance.host,
      'httpHeaders': instance.httpHeaders,
      'path': instance.path,
      'port': instance.port,
      'scheme': instance.scheme,
    };

IoK8SApiCoreV1HttpHeader _$IoK8SApiCoreV1HttpHeaderFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HttpHeader(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HttpHeaderToJson(
        IoK8SApiCoreV1HttpHeader instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

IoK8SApiCoreV1SleepAction _$IoK8SApiCoreV1SleepActionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SleepAction(
      seconds: (json['seconds'] as num).toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1SleepActionToJson(
        IoK8SApiCoreV1SleepAction instance) =>
    <String, dynamic>{
      'seconds': instance.seconds,
    };

IoK8SApiCoreV1TcpSocketAction _$IoK8SApiCoreV1TcpSocketActionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1TcpSocketAction(
      host: json['host'] as String?,
      port: json['port'],
    );

Map<String, dynamic> _$IoK8SApiCoreV1TcpSocketActionToJson(
        IoK8SApiCoreV1TcpSocketAction instance) =>
    <String, dynamic>{
      'host': instance.host,
      'port': instance.port,
    };

IoK8SApiCoreV1Probe _$IoK8SApiCoreV1ProbeFromJson(Map<String, dynamic> json) =>
    IoK8SApiCoreV1Probe(
      exec: json['exec'] == null
          ? null
          : IoK8SApiCoreV1ExecAction.fromJson(
              json['exec'] as Map<String, dynamic>),
      failureThreshold: (json['failureThreshold'] as num?)?.toInt(),
      grpc: json['grpc'] == null
          ? null
          : IoK8SApiCoreV1GrpcAction.fromJson(
              json['grpc'] as Map<String, dynamic>),
      httpGet: json['httpGet'] == null
          ? null
          : IoK8SApiCoreV1HttpGetAction.fromJson(
              json['httpGet'] as Map<String, dynamic>),
      initialDelaySeconds: (json['initialDelaySeconds'] as num?)?.toInt(),
      periodSeconds: (json['periodSeconds'] as num?)?.toInt(),
      successThreshold: (json['successThreshold'] as num?)?.toInt(),
      tcpSocket: json['tcpSocket'] == null
          ? null
          : IoK8SApiCoreV1TcpSocketAction.fromJson(
              json['tcpSocket'] as Map<String, dynamic>),
      terminationGracePeriodSeconds:
          (json['terminationGracePeriodSeconds'] as num?)?.toInt(),
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ProbeToJson(
        IoK8SApiCoreV1Probe instance) =>
    <String, dynamic>{
      'exec': instance.exec,
      'failureThreshold': instance.failureThreshold,
      'grpc': instance.grpc,
      'httpGet': instance.httpGet,
      'initialDelaySeconds': instance.initialDelaySeconds,
      'periodSeconds': instance.periodSeconds,
      'successThreshold': instance.successThreshold,
      'tcpSocket': instance.tcpSocket,
      'terminationGracePeriodSeconds': instance.terminationGracePeriodSeconds,
      'timeoutSeconds': instance.timeoutSeconds,
    };

IoK8SApiCoreV1GrpcAction _$IoK8SApiCoreV1GrpcActionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1GrpcAction(
      port: (json['port'] as num).toInt(),
      service: json['service'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1GrpcActionToJson(
        IoK8SApiCoreV1GrpcAction instance) =>
    <String, dynamic>{
      'port': instance.port,
      'service': instance.service,
    };

IoK8SApiCoreV1ContainerPort _$IoK8SApiCoreV1ContainerPortFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ContainerPort(
      containerPort: (json['containerPort'] as num).toInt(),
      hostIp: json['hostIP'] as String?,
      hostPort: (json['hostPort'] as num?)?.toInt(),
      name: json['name'] as String?,
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerPortToJson(
        IoK8SApiCoreV1ContainerPort instance) =>
    <String, dynamic>{
      'containerPort': instance.containerPort,
      'hostIP': instance.hostIp,
      'hostPort': instance.hostPort,
      'name': instance.name,
      'protocol': instance.protocol,
    };

IoK8SApiCoreV1ContainerResizePolicy
    _$IoK8SApiCoreV1ContainerResizePolicyFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerResizePolicy(
          resourceName: json['resourceName'] as String,
          restartPolicy: json['restartPolicy'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerResizePolicyToJson(
        IoK8SApiCoreV1ContainerResizePolicy instance) =>
    <String, dynamic>{
      'resourceName': instance.resourceName,
      'restartPolicy': instance.restartPolicy,
    };

IoK8SApiCoreV1ResourceRequirements _$IoK8SApiCoreV1ResourceRequirementsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceRequirements(
      claims: (json['claims'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ResourceClaim.fromJson(e as Map<String, dynamic>))
          .toList(),
      limits: json['limits'] as Map<String, dynamic>?,
      requests: json['requests'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceRequirementsToJson(
        IoK8SApiCoreV1ResourceRequirements instance) =>
    <String, dynamic>{
      'claims': instance.claims,
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApiCoreV1ResourceClaim _$IoK8SApiCoreV1ResourceClaimFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceClaim(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceClaimToJson(
        IoK8SApiCoreV1ResourceClaim instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1SecurityContext _$IoK8SApiCoreV1SecurityContextFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecurityContext(
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

Map<String, dynamic> _$IoK8SApiCoreV1SecurityContextToJson(
        IoK8SApiCoreV1SecurityContext instance) =>
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

IoK8SApiCoreV1VolumeDevice _$IoK8SApiCoreV1VolumeDeviceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeDevice(
      devicePath: json['devicePath'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeDeviceToJson(
        IoK8SApiCoreV1VolumeDevice instance) =>
    <String, dynamic>{
      'devicePath': instance.devicePath,
      'name': instance.name,
    };

IoK8SApiCoreV1VolumeMount _$IoK8SApiCoreV1VolumeMountFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeMount(
      mountPath: json['mountPath'] as String,
      mountPropagation: json['mountPropagation'] as String?,
      name: json['name'] as String,
      readOnly: json['readOnly'] as bool?,
      recursiveReadOnly: json['recursiveReadOnly'] as String?,
      subPath: json['subPath'] as String?,
      subPathExpr: json['subPathExpr'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeMountToJson(
        IoK8SApiCoreV1VolumeMount instance) =>
    <String, dynamic>{
      'mountPath': instance.mountPath,
      'mountPropagation': instance.mountPropagation,
      'name': instance.name,
      'readOnly': instance.readOnly,
      'recursiveReadOnly': instance.recursiveReadOnly,
      'subPath': instance.subPath,
      'subPathExpr': instance.subPathExpr,
    };

IoK8SApiCoreV1PodDnsConfig _$IoK8SApiCoreV1PodDnsConfigFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodDnsConfig(
      nameservers: (json['nameservers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodDnsConfigOption.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searches: (json['searches'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodDnsConfigToJson(
        IoK8SApiCoreV1PodDnsConfig instance) =>
    <String, dynamic>{
      'nameservers': instance.nameservers,
      'options': instance.options,
      'searches': instance.searches,
    };

IoK8SApiCoreV1PodDnsConfigOption _$IoK8SApiCoreV1PodDnsConfigOptionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodDnsConfigOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodDnsConfigOptionToJson(
        IoK8SApiCoreV1PodDnsConfigOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

IoK8SApiCoreV1EphemeralContainer _$IoK8SApiCoreV1EphemeralContainerFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EphemeralContainer(
      args: (json['args'] as List<dynamic>?)?.map((e) => e as String).toList(),
      command:
          (json['command'] as List<dynamic>?)?.map((e) => e as String).toList(),
      env: (json['env'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1EnvVar.fromJson(e as Map<String, dynamic>))
          .toList(),
      envFrom: (json['envFrom'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EnvFromSource.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
      imagePullPolicy: json['imagePullPolicy'] as String?,
      lifecycle: json['lifecycle'] == null
          ? null
          : IoK8SApiCoreV1Lifecycle.fromJson(
              json['lifecycle'] as Map<String, dynamic>),
      livenessProbe: json['livenessProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['livenessProbe'] as Map<String, dynamic>),
      name: json['name'] as String,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerPort.fromJson(e as Map<String, dynamic>))
          .toList(),
      readinessProbe: json['readinessProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['readinessProbe'] as Map<String, dynamic>),
      resizePolicy: (json['resizePolicy'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ContainerResizePolicy.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resources: json['resources'] == null
          ? null
          : IoK8SApiCoreV1ResourceRequirements.fromJson(
              json['resources'] as Map<String, dynamic>),
      restartPolicy: json['restartPolicy'] as String?,
      securityContext: json['securityContext'] == null
          ? null
          : IoK8SApiCoreV1SecurityContext.fromJson(
              json['securityContext'] as Map<String, dynamic>),
      startupProbe: json['startupProbe'] == null
          ? null
          : IoK8SApiCoreV1Probe.fromJson(
              json['startupProbe'] as Map<String, dynamic>),
      stdin: json['stdin'] as bool?,
      stdinOnce: json['stdinOnce'] as bool?,
      targetContainerName: json['targetContainerName'] as String?,
      terminationMessagePath: json['terminationMessagePath'] as String?,
      terminationMessagePolicy: json['terminationMessagePolicy'] as String?,
      tty: json['tty'] as bool?,
      volumeDevices: (json['volumeDevices'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1VolumeDevice.fromJson(e as Map<String, dynamic>))
          .toList(),
      volumeMounts: (json['volumeMounts'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1VolumeMount.fromJson(e as Map<String, dynamic>))
          .toList(),
      workingDir: json['workingDir'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1EphemeralContainerToJson(
        IoK8SApiCoreV1EphemeralContainer instance) =>
    <String, dynamic>{
      'args': instance.args,
      'command': instance.command,
      'env': instance.env,
      'envFrom': instance.envFrom,
      'image': instance.image,
      'imagePullPolicy': instance.imagePullPolicy,
      'lifecycle': instance.lifecycle,
      'livenessProbe': instance.livenessProbe,
      'name': instance.name,
      'ports': instance.ports,
      'readinessProbe': instance.readinessProbe,
      'resizePolicy': instance.resizePolicy,
      'resources': instance.resources,
      'restartPolicy': instance.restartPolicy,
      'securityContext': instance.securityContext,
      'startupProbe': instance.startupProbe,
      'stdin': instance.stdin,
      'stdinOnce': instance.stdinOnce,
      'targetContainerName': instance.targetContainerName,
      'terminationMessagePath': instance.terminationMessagePath,
      'terminationMessagePolicy': instance.terminationMessagePolicy,
      'tty': instance.tty,
      'volumeDevices': instance.volumeDevices,
      'volumeMounts': instance.volumeMounts,
      'workingDir': instance.workingDir,
    };

IoK8SApiCoreV1HostAlias _$IoK8SApiCoreV1HostAliasFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HostAlias(
      hostnames: (json['hostnames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ip: json['ip'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HostAliasToJson(
        IoK8SApiCoreV1HostAlias instance) =>
    <String, dynamic>{
      'hostnames': instance.hostnames,
      'ip': instance.ip,
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

IoK8SApiCoreV1PodOs _$IoK8SApiCoreV1PodOsFromJson(Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodOs(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodOsToJson(
        IoK8SApiCoreV1PodOs instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1PodReadinessGate _$IoK8SApiCoreV1PodReadinessGateFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodReadinessGate(
      conditionType: json['conditionType'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodReadinessGateToJson(
        IoK8SApiCoreV1PodReadinessGate instance) =>
    <String, dynamic>{
      'conditionType': instance.conditionType,
    };

IoK8SApiCoreV1PodResourceClaim _$IoK8SApiCoreV1PodResourceClaimFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodResourceClaim(
      name: json['name'] as String,
      source: json['source'] == null
          ? null
          : IoK8SApiCoreV1ClaimSource.fromJson(
              json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodResourceClaimToJson(
        IoK8SApiCoreV1PodResourceClaim instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
    };

IoK8SApiCoreV1ClaimSource _$IoK8SApiCoreV1ClaimSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ClaimSource(
      resourceClaimName: json['resourceClaimName'] as String?,
      resourceClaimTemplateName: json['resourceClaimTemplateName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ClaimSourceToJson(
        IoK8SApiCoreV1ClaimSource instance) =>
    <String, dynamic>{
      'resourceClaimName': instance.resourceClaimName,
      'resourceClaimTemplateName': instance.resourceClaimTemplateName,
    };

IoK8SApiCoreV1PodSchedulingGate _$IoK8SApiCoreV1PodSchedulingGateFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodSchedulingGate(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodSchedulingGateToJson(
        IoK8SApiCoreV1PodSchedulingGate instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1PodSecurityContext _$IoK8SApiCoreV1PodSecurityContextFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodSecurityContext(
      appArmorProfile: json['appArmorProfile'] == null
          ? null
          : IoK8SApiCoreV1AppArmorProfile.fromJson(
              json['appArmorProfile'] as Map<String, dynamic>),
      fsGroup: (json['fsGroup'] as num?)?.toInt(),
      fsGroupChangePolicy: json['fsGroupChangePolicy'] as String?,
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
      supplementalGroups: (json['supplementalGroups'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      sysctls: (json['sysctls'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1Sysctl.fromJson(e as Map<String, dynamic>))
          .toList(),
      windowsOptions: json['windowsOptions'] == null
          ? null
          : IoK8SApiCoreV1WindowsSecurityContextOptions.fromJson(
              json['windowsOptions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodSecurityContextToJson(
        IoK8SApiCoreV1PodSecurityContext instance) =>
    <String, dynamic>{
      'appArmorProfile': instance.appArmorProfile,
      'fsGroup': instance.fsGroup,
      'fsGroupChangePolicy': instance.fsGroupChangePolicy,
      'runAsGroup': instance.runAsGroup,
      'runAsNonRoot': instance.runAsNonRoot,
      'runAsUser': instance.runAsUser,
      'seccompProfile': instance.seccompProfile,
      'seLinuxOptions': instance.seLinuxOptions,
      'supplementalGroups': instance.supplementalGroups,
      'sysctls': instance.sysctls,
      'windowsOptions': instance.windowsOptions,
    };

IoK8SApiCoreV1Sysctl _$IoK8SApiCoreV1SysctlFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Sysctl(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SysctlToJson(
        IoK8SApiCoreV1Sysctl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };

IoK8SApiCoreV1Toleration _$IoK8SApiCoreV1TolerationFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Toleration(
      effect: json['effect'] as String?,
      key: json['key'] as String?,
      ioK8SApiCoreV1TolerationOperator: json['operator'] as String?,
      tolerationSeconds: (json['tolerationSeconds'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TolerationToJson(
        IoK8SApiCoreV1Toleration instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1TolerationOperator,
      'tolerationSeconds': instance.tolerationSeconds,
      'value': instance.value,
    };

IoK8SApiCoreV1TopologySpreadConstraint
    _$IoK8SApiCoreV1TopologySpreadConstraintFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TopologySpreadConstraint(
          labelSelector: json['labelSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['labelSelector'] as Map<String, dynamic>),
          matchLabelKeys: (json['matchLabelKeys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          maxSkew: (json['maxSkew'] as num).toInt(),
          minDomains: (json['minDomains'] as num?)?.toInt(),
          nodeAffinityPolicy: json['nodeAffinityPolicy'] as String?,
          nodeTaintsPolicy: json['nodeTaintsPolicy'] as String?,
          topologyKey: json['topologyKey'] as String,
          whenUnsatisfiable: json['whenUnsatisfiable'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TopologySpreadConstraintToJson(
        IoK8SApiCoreV1TopologySpreadConstraint instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'matchLabelKeys': instance.matchLabelKeys,
      'maxSkew': instance.maxSkew,
      'minDomains': instance.minDomains,
      'nodeAffinityPolicy': instance.nodeAffinityPolicy,
      'nodeTaintsPolicy': instance.nodeTaintsPolicy,
      'topologyKey': instance.topologyKey,
      'whenUnsatisfiable': instance.whenUnsatisfiable,
    };

IoK8SApiCoreV1Volume _$IoK8SApiCoreV1VolumeFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Volume(
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
      name: json['name'] as String,
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

Map<String, dynamic> _$IoK8SApiCoreV1VolumeToJson(
        IoK8SApiCoreV1Volume instance) =>
    <String, dynamic>{
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

IoK8SApiBatchV1JobStatus _$IoK8SApiBatchV1JobStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1JobStatus(
      active: (json['active'] as num?)?.toInt(),
      completedIndexes: json['completedIndexes'] as String?,
      completionTime: json['completionTime'] == null
          ? null
          : DateTime.parse(json['completionTime'] as String),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiBatchV1JobCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      failed: (json['failed'] as num?)?.toInt(),
      failedIndexes: json['failedIndexes'] as String?,
      ready: (json['ready'] as num?)?.toInt(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      succeeded: (json['succeeded'] as num?)?.toInt(),
      terminating: (json['terminating'] as num?)?.toInt(),
      uncountedTerminatedPods: json['uncountedTerminatedPods'] == null
          ? null
          : IoK8SApiBatchV1UncountedTerminatedPods.fromJson(
              json['uncountedTerminatedPods'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiBatchV1JobStatusToJson(
        IoK8SApiBatchV1JobStatus instance) =>
    <String, dynamic>{
      'active': instance.active,
      'completedIndexes': instance.completedIndexes,
      'completionTime': instance.completionTime?.toIso8601String(),
      'conditions': instance.conditions,
      'failed': instance.failed,
      'failedIndexes': instance.failedIndexes,
      'ready': instance.ready,
      'startTime': instance.startTime?.toIso8601String(),
      'succeeded': instance.succeeded,
      'terminating': instance.terminating,
      'uncountedTerminatedPods': instance.uncountedTerminatedPods,
    };

IoK8SApiBatchV1JobCondition _$IoK8SApiBatchV1JobConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1JobCondition(
      lastProbeTime: json['lastProbeTime'] == null
          ? null
          : DateTime.parse(json['lastProbeTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiBatchV1JobConditionToJson(
        IoK8SApiBatchV1JobCondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiBatchV1UncountedTerminatedPods
    _$IoK8SApiBatchV1UncountedTerminatedPodsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1UncountedTerminatedPods(
          failed: (json['failed'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          succeeded: (json['succeeded'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiBatchV1UncountedTerminatedPodsToJson(
        IoK8SApiBatchV1UncountedTerminatedPods instance) =>
    <String, dynamic>{
      'failed': instance.failed,
      'succeeded': instance.succeeded,
    };

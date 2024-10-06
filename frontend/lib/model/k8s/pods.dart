class PodList {
  String apiVersion;
  String kind;
  AnswerMetadata metadata;
  List<PodItem> items;

  PodList({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.items,
  });
}

class PodItem {
  String apiVersion;
  String kind;
  ItemMetadata metadata;
  Spec spec;
  Status status;

  PodItem({
    required this.apiVersion,
    required this.kind,
    required this.metadata,
    required this.spec,
    required this.status,
  });
}

class ItemMetadata {
  DateTime creationTimestamp;
  String generateName;
  Labels labels;
  List<ManagedField> managedFields;
  String name;
  String namespace;
  List<OwnerReference> ownerReferences;
  String resourceVersion;
  String uid;

  ItemMetadata({
    required this.creationTimestamp,
    required this.generateName,
    required this.labels,
    required this.managedFields,
    required this.name,
    required this.namespace,
    required this.ownerReferences,
    required this.resourceVersion,
    required this.uid,
  });
}

class Labels {
  String k8SApp;
  String podTemplateHash;

  Labels({
    required this.k8SApp,
    required this.podTemplateHash,
  });
}

class ManagedField {
  String apiVersion;
  String fieldsType;
  FieldsV1 fieldsV1;
  String manager;
  String operation;
  DateTime time;
  String? subresource;

  ManagedField({
    required this.apiVersion,
    required this.fieldsType,
    required this.fieldsV1,
    required this.manager,
    required this.operation,
    required this.time,
    this.subresource,
  });
}

class FieldsV1 {
  FMetadata? fMetadata;
  FSpec? fSpec;
  FStatus? fStatus;

  FieldsV1({
    this.fMetadata,
    this.fSpec,
    this.fStatus,
  });
}

class FMetadata {
  SecurityContext fGenerateName;
  FLabels fLabels;
  FOwnerReferences fOwnerReferences;

  FMetadata({
    required this.fGenerateName,
    required this.fLabels,
    required this.fOwnerReferences,
  });
}

class SecurityContext {
  SecurityContext();
}

class FLabels {
  SecurityContext empty;
  SecurityContext fK8SApp;
  SecurityContext fPodTemplateHash;

  FLabels({
    required this.empty,
    required this.fK8SApp,
    required this.fPodTemplateHash,
  });
}

class FOwnerReferences {
  SecurityContext empty;
  SecurityContext kUidA9F1Bf883B204C69BafbBfbf51D64Fb0;

  FOwnerReferences({
    required this.empty,
    required this.kUidA9F1Bf883B204C69BafbBfbf51D64Fb0,
  });
}

class FSpec {
  FAffinity fAffinity;
  FContainers fContainers;
  SecurityContext fDnsPolicy;
  SecurityContext fEnableServiceLinks;
  SecurityContext fNodeSelector;
  SecurityContext fPriorityClassName;
  SecurityContext fRestartPolicy;
  SecurityContext fSchedulerName;
  SecurityContext fSecurityContext;
  SecurityContext fServiceAccount;
  SecurityContext fServiceAccountName;
  SecurityContext fTerminationGracePeriodSeconds;
  SecurityContext fTolerations;
  FVolumes fVolumes;

  FSpec({
    required this.fAffinity,
    required this.fContainers,
    required this.fDnsPolicy,
    required this.fEnableServiceLinks,
    required this.fNodeSelector,
    required this.fPriorityClassName,
    required this.fRestartPolicy,
    required this.fSchedulerName,
    required this.fSecurityContext,
    required this.fServiceAccount,
    required this.fServiceAccountName,
    required this.fTerminationGracePeriodSeconds,
    required this.fTolerations,
    required this.fVolumes,
  });
}

class FAffinity {
  SecurityContext empty;
  FPodAntiAffinity fPodAntiAffinity;

  FAffinity({
    required this.empty,
    required this.fPodAntiAffinity,
  });
}

class FPodAntiAffinity {
  SecurityContext empty;
  SecurityContext fPreferredDuringSchedulingIgnoredDuringExecution;

  FPodAntiAffinity({
    required this.empty,
    required this.fPreferredDuringSchedulingIgnoredDuringExecution,
  });
}

class FContainers {
  KNameCoredns kNameCoredns;

  FContainers({
    required this.kNameCoredns,
  });
}

class KNameCoredns {
  SecurityContext empty;
  SecurityContext fArgs;
  SecurityContext fImage;
  SecurityContext fImagePullPolicy;
  FLivenessProbeClass fLivenessProbe;
  SecurityContext fName;
  FPorts fPorts;
  FLivenessProbeClass fReadinessProbe;
  FResources fResources;
  FSecurityContext fSecurityContext;
  SecurityContext fTerminationMessagePath;
  SecurityContext fTerminationMessagePolicy;
  FVolumeMounts fVolumeMounts;

  KNameCoredns({
    required this.empty,
    required this.fArgs,
    required this.fImage,
    required this.fImagePullPolicy,
    required this.fLivenessProbe,
    required this.fName,
    required this.fPorts,
    required this.fReadinessProbe,
    required this.fResources,
    required this.fSecurityContext,
    required this.fTerminationMessagePath,
    required this.fTerminationMessagePolicy,
    required this.fVolumeMounts,
  });
}

class FLivenessProbeClass {
  SecurityContext empty;
  SecurityContext fFailureThreshold;
  FHttpGet fHttpGet;
  SecurityContext? fInitialDelaySeconds;
  SecurityContext fPeriodSeconds;
  SecurityContext fSuccessThreshold;
  SecurityContext fTimeoutSeconds;

  FLivenessProbeClass({
    required this.empty,
    required this.fFailureThreshold,
    required this.fHttpGet,
    this.fInitialDelaySeconds,
    required this.fPeriodSeconds,
    required this.fSuccessThreshold,
    required this.fTimeoutSeconds,
  });
}

class FHttpGet {
  SecurityContext empty;
  SecurityContext fPath;
  SecurityContext fPort;
  SecurityContext fScheme;

  FHttpGet({
    required this.empty,
    required this.fPath,
    required this.fPort,
    required this.fScheme,
  });
}

class FPorts {
  SecurityContext empty;
  KContainerPort kContainerPort53ProtocolTcp;
  KContainerPort kContainerPort53ProtocolUdp;
  KContainerPort kContainerPort9153ProtocolTcp;

  FPorts({
    required this.empty,
    required this.kContainerPort53ProtocolTcp,
    required this.kContainerPort53ProtocolUdp,
    required this.kContainerPort9153ProtocolTcp,
  });
}

class KContainerPort {
  SecurityContext empty;
  SecurityContext fContainerPort;
  SecurityContext fName;
  SecurityContext fProtocol;

  KContainerPort({
    required this.empty,
    required this.fContainerPort,
    required this.fName,
    required this.fProtocol,
  });
}

class FResources {
  SecurityContext empty;
  FLimits fLimits;
  FRequests fRequests;

  FResources({
    required this.empty,
    required this.fLimits,
    required this.fRequests,
  });
}

class FLimits {
  SecurityContext empty;
  SecurityContext fMemory;

  FLimits({
    required this.empty,
    required this.fMemory,
  });
}

class FRequests {
  SecurityContext empty;
  SecurityContext fCpu;
  SecurityContext fMemory;

  FRequests({
    required this.empty,
    required this.fCpu,
    required this.fMemory,
  });
}

class FSecurityContext {
  SecurityContext empty;
  SecurityContext fAllowPrivilegeEscalation;
  FCapabilities fCapabilities;
  SecurityContext fReadOnlyRootFilesystem;

  FSecurityContext({
    required this.empty,
    required this.fAllowPrivilegeEscalation,
    required this.fCapabilities,
    required this.fReadOnlyRootFilesystem,
  });
}

class FCapabilities {
  SecurityContext empty;
  SecurityContext fAdd;
  SecurityContext fDrop;

  FCapabilities({
    required this.empty,
    required this.fAdd,
    required this.fDrop,
  });
}

class FVolumeMounts {
  SecurityContext empty;
  KMountPathEtcCoredns kMountPathEtcCoredns;

  FVolumeMounts({
    required this.empty,
    required this.kMountPathEtcCoredns,
  });
}

class KMountPathEtcCoredns {
  SecurityContext empty;
  SecurityContext fMountPath;
  SecurityContext fName;
  SecurityContext fReadOnly;

  KMountPathEtcCoredns({
    required this.empty,
    required this.fMountPath,
    required this.fName,
    required this.fReadOnly,
  });
}

class FVolumes {
  SecurityContext empty;
  KNameConfigVolume kNameConfigVolume;

  FVolumes({
    required this.empty,
    required this.kNameConfigVolume,
  });
}

class KNameConfigVolume {
  SecurityContext empty;
  FConfigMap fConfigMap;
  SecurityContext fName;

  KNameConfigVolume({
    required this.empty,
    required this.fConfigMap,
    required this.fName,
  });
}

class FConfigMap {
  SecurityContext empty;
  SecurityContext fDefaultMode;
  SecurityContext fItems;
  SecurityContext fName;

  FConfigMap({
    required this.empty,
    required this.fDefaultMode,
    required this.fItems,
    required this.fName,
  });
}

class FStatus {
  Map<String, FCondition> fConditions;
  SecurityContext fContainerStatuses;
  SecurityContext fHostIp;
  SecurityContext fHostIPs;
  SecurityContext fPhase;
  SecurityContext fPodIp;
  FPodIPs fPodIPs;
  SecurityContext fStartTime;

  FStatus({
    required this.fConditions,
    required this.fContainerStatuses,
    required this.fHostIp,
    required this.fHostIPs,
    required this.fPhase,
    required this.fPodIp,
    required this.fPodIPs,
    required this.fStartTime,
  });
}

class FCondition {
  SecurityContext empty;
  SecurityContext fLastProbeTime;
  SecurityContext fLastTransitionTime;
  SecurityContext fStatus;
  SecurityContext fType;

  FCondition({
    required this.empty,
    required this.fLastProbeTime,
    required this.fLastTransitionTime,
    required this.fStatus,
    required this.fType,
  });
}

class FPodIPs {
  SecurityContext empty;
  KIp101035 kIp101035;

  FPodIPs({
    required this.empty,
    required this.kIp101035,
  });
}

class KIp101035 {
  SecurityContext empty;
  SecurityContext fIp;

  KIp101035({
    required this.empty,
    required this.fIp,
  });
}

class OwnerReference {
  String apiVersion;
  bool blockOwnerDeletion;
  bool controller;
  String kind;
  String name;
  String uid;

  OwnerReference({
    required this.apiVersion,
    required this.blockOwnerDeletion,
    required this.controller,
    required this.kind,
    required this.name,
    required this.uid,
  });
}

class Spec {
  Affinity affinity;
  List<Container> containers;
  String dnsPolicy;
  bool enableServiceLinks;
  String nodeName;
  NodeSelector nodeSelector;
  String preemptionPolicy;
  int priority;
  String priorityClassName;
  String restartPolicy;
  String schedulerName;
  SecurityContext securityContext;
  String serviceAccount;
  String serviceAccountName;
  int terminationGracePeriodSeconds;
  List<Toleration> tolerations;
  List<Volume> volumes;

  Spec({
    required this.affinity,
    required this.containers,
    required this.dnsPolicy,
    required this.enableServiceLinks,
    required this.nodeName,
    required this.nodeSelector,
    required this.preemptionPolicy,
    required this.priority,
    required this.priorityClassName,
    required this.restartPolicy,
    required this.schedulerName,
    required this.securityContext,
    required this.serviceAccount,
    required this.serviceAccountName,
    required this.terminationGracePeriodSeconds,
    required this.tolerations,
    required this.volumes,
  });
}

class Affinity {
  PodAntiAffinity podAntiAffinity;

  Affinity({
    required this.podAntiAffinity,
  });
}

class PodAntiAffinity {
  List<PreferredDuringSchedulingIgnoredDuringExecution>
      preferredDuringSchedulingIgnoredDuringExecution;

  PodAntiAffinity({
    required this.preferredDuringSchedulingIgnoredDuringExecution,
  });
}

class PreferredDuringSchedulingIgnoredDuringExecution {
  PodAffinityTerm podAffinityTerm;
  int weight;

  PreferredDuringSchedulingIgnoredDuringExecution({
    required this.podAffinityTerm,
    required this.weight,
  });
}

class PodAffinityTerm {
  LabelSelector labelSelector;
  String topologyKey;

  PodAffinityTerm({
    required this.labelSelector,
    required this.topologyKey,
  });
}

class LabelSelector {
  List<MatchExpression> matchExpressions;

  LabelSelector({
    required this.matchExpressions,
  });
}

class MatchExpression {
  String key;
  String matchExpressionOperator;
  List<String> values;

  MatchExpression({
    required this.key,
    required this.matchExpressionOperator,
    required this.values,
  });
}

class Container {
  List<String> args;
  String image;
  String imagePullPolicy;
  LivenessProbeClass livenessProbe;
  String name;
  List<Port> ports;
  LivenessProbeClass readinessProbe;
  Resources resources;
  ContainerSecurityContext securityContext;
  String terminationMessagePath;
  String terminationMessagePolicy;
  List<VolumeMount> volumeMounts;

  Container({
    required this.args,
    required this.image,
    required this.imagePullPolicy,
    required this.livenessProbe,
    required this.name,
    required this.ports,
    required this.readinessProbe,
    required this.resources,
    required this.securityContext,
    required this.terminationMessagePath,
    required this.terminationMessagePolicy,
    required this.volumeMounts,
  });
}

class LivenessProbeClass {
  int failureThreshold;
  HttpGet httpGet;
  int? initialDelaySeconds;
  int periodSeconds;
  int successThreshold;
  int timeoutSeconds;

  LivenessProbeClass({
    required this.failureThreshold,
    required this.httpGet,
    this.initialDelaySeconds,
    required this.periodSeconds,
    required this.successThreshold,
    required this.timeoutSeconds,
  });
}

class HttpGet {
  String path;
  int port;
  String scheme;

  HttpGet({
    required this.path,
    required this.port,
    required this.scheme,
  });
}

class Port {
  int containerPort;
  String name;
  String protocol;

  Port({
    required this.containerPort,
    required this.name,
    required this.protocol,
  });
}

class Resources {
  Limits limits;
  Requests requests;

  Resources({
    required this.limits,
    required this.requests,
  });
}

class Limits {
  String memory;

  Limits({
    required this.memory,
  });
}

class Requests {
  String cpu;
  String memory;

  Requests({
    required this.cpu,
    required this.memory,
  });
}

class ContainerSecurityContext {
  bool allowPrivilegeEscalation;
  Capabilities capabilities;
  bool readOnlyRootFilesystem;

  ContainerSecurityContext({
    required this.allowPrivilegeEscalation,
    required this.capabilities,
    required this.readOnlyRootFilesystem,
  });
}

class Capabilities {
  List<String> add;
  List<String> drop;

  Capabilities({
    required this.add,
    required this.drop,
  });
}

class VolumeMount {
  String mountPath;
  String name;
  bool readOnly;

  VolumeMount({
    required this.mountPath,
    required this.name,
    required this.readOnly,
  });
}

class NodeSelector {
  String kubernetesIoOs;

  NodeSelector({
    required this.kubernetesIoOs,
  });
}

class Toleration {
  String key;
  String? tolerationOperator;
  String? effect;
  int? tolerationSeconds;

  Toleration({
    required this.key,
    this.tolerationOperator,
    this.effect,
    this.tolerationSeconds,
  });
}

class Volume {
  VolumeConfigMap? configMap;
  String name;
  Projected? projected;

  Volume({
    this.configMap,
    required this.name,
    this.projected,
  });
}

class VolumeConfigMap {
  int defaultMode;
  List<ConfigMapItem> items;
  String name;

  VolumeConfigMap({
    required this.defaultMode,
    required this.items,
    required this.name,
  });
}

class ConfigMapItem {
  String key;
  String path;

  ConfigMapItem({
    required this.key,
    required this.path,
  });
}

class Projected {
  int defaultMode;
  List<Source> sources;

  Projected({
    required this.defaultMode,
    required this.sources,
  });
}

class Source {
  ServiceAccountToken? serviceAccountToken;
  SourceConfigMap? configMap;
  DownwardApi? downwardApi;

  Source({
    this.serviceAccountToken,
    this.configMap,
    this.downwardApi,
  });
}

class SourceConfigMap {
  List<ConfigMapItem> items;
  String name;

  SourceConfigMap({
    required this.items,
    required this.name,
  });
}

class DownwardApi {
  List<DownwardApiItem> items;

  DownwardApi({
    required this.items,
  });
}

class DownwardApiItem {
  FieldRef fieldRef;
  String path;

  DownwardApiItem({
    required this.fieldRef,
    required this.path,
  });
}

class FieldRef {
  String apiVersion;
  String fieldPath;

  FieldRef({
    required this.apiVersion,
    required this.fieldPath,
  });
}

class ServiceAccountToken {
  int expirationSeconds;
  String path;

  ServiceAccountToken({
    required this.expirationSeconds,
    required this.path,
  });
}

class Status {
  List<Condition> conditions;
  List<ContainerStatus> containerStatuses;
  String hostIp;
  List<Ip> hostIPs;
  String phase;
  String podIp;
  List<Ip> podIPs;
  String qosClass;
  DateTime startTime;

  Status({
    required this.conditions,
    required this.containerStatuses,
    required this.hostIp,
    required this.hostIPs,
    required this.phase,
    required this.podIp,
    required this.podIPs,
    required this.qosClass,
    required this.startTime,
  });
}

class Condition {
  DateTime lastTransitionTime;
  String status;
  String type;

  Condition({
    required this.lastTransitionTime,
    required this.status,
    required this.type,
  });
}

class ContainerStatus {
  String containerId;
  String image;
  String imageId;
  LastState lastState;
  String name;
  bool ready;
  int restartCount;
  bool started;
  State state;

  ContainerStatus({
    required this.containerId,
    required this.image,
    required this.imageId,
    required this.lastState,
    required this.name,
    required this.ready,
    required this.restartCount,
    required this.started,
    required this.state,
  });
}

class LastState {
  Terminated terminated;

  LastState({
    required this.terminated,
  });
}

class Terminated {
  String containerId;
  int exitCode;
  DateTime finishedAt;
  String reason;
  DateTime startedAt;

  Terminated({
    required this.containerId,
    required this.exitCode,
    required this.finishedAt,
    required this.reason,
    required this.startedAt,
  });
}

class State {
  Running running;

  State({
    required this.running,
  });
}

class Running {
  DateTime startedAt;

  Running({
    required this.startedAt,
  });
}

class Ip {
  String ip;

  Ip({
    required this.ip,
  });
}

class AnswerMetadata {
  String resourceVersion;

  AnswerMetadata({
    required this.resourceVersion,
  });
}

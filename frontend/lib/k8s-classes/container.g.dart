// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Container _$ContainerFromJson(Map<String, dynamic> json) => Container(
      args: (json['args'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      command: (json['command'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
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
      name: json['name'] as String?,
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

Map<String, dynamic> _$ContainerToJson(Container instance) => <String, dynamic>{
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

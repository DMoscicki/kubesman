// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'probe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Probe _$ProbeFromJson(Map<String, dynamic> json) => Probe(
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

Map<String, dynamic> _$ProbeToJson(Probe instance) => <String, dynamic>{
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

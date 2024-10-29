// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lifecycle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Lifecycle _$LifecycleFromJson(Map<String, dynamic> json) => Lifecycle(
      postStart: json['postStart'] == null
          ? null
          : IoK8SApiCoreV1LifecycleHandler.fromJson(
              json['postStart'] as Map<String, dynamic>),
      preStop: json['preStop'] == null
          ? null
          : IoK8SApiCoreV1LifecycleHandler.fromJson(
              json['preStop'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LifecycleToJson(Lifecycle instance) => <String, dynamic>{
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

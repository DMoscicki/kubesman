// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'windowssecuritycontextoptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Windowssecuritycontextoptions _$WindowssecuritycontextoptionsFromJson(
        Map<String, dynamic> json) =>
    Windowssecuritycontextoptions(
      gmsaCredentialSpec: json['gmsaCredentialSpec'] as String?,
      gmsaCredentialSpecName: json['gmsaCredentialSpecName'] as String?,
      hostProcess: json['hostProcess'] as bool?,
      runAsUserName: json['runAsUserName'] as String?,
    );

Map<String, dynamic> _$WindowssecuritycontextoptionsToJson(
        Windowssecuritycontextoptions instance) =>
    <String, dynamic>{
      'gmsaCredentialSpec': instance.gmsaCredentialSpec,
      'gmsaCredentialSpecName': instance.gmsaCredentialSpecName,
      'hostProcess': instance.hostProcess,
      'runAsUserName': instance.runAsUserName,
    };

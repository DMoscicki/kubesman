// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vspherevirtualdiskvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vspherevirtualdiskvolumesource _$VspherevirtualdiskvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Vspherevirtualdiskvolumesource(
      fsType: json['fsType'] as String?,
      storagePolicyId: json['storagePolicyID'] as String?,
      storagePolicyName: json['storagePolicyName'] as String?,
      volumePath: json['volumePath'] as String?,
    );

Map<String, dynamic> _$VspherevirtualdiskvolumesourceToJson(
        Vspherevirtualdiskvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'storagePolicyID': instance.storagePolicyId,
      'storagePolicyName': instance.storagePolicyName,
      'volumePath': instance.volumePath,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'noderuntimehandler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Noderuntimehandler _$NoderuntimehandlerFromJson(Map<String, dynamic> json) =>
    Noderuntimehandler(
      features: json['features'] == null
          ? null
          : IoK8SApiCoreV1NodeRuntimeHandlerFeatures.fromJson(
              json['features'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$NoderuntimehandlerToJson(Noderuntimehandler instance) =>
    <String, dynamic>{
      'features': instance.features,
      'name': instance.name,
    };

IoK8SApiCoreV1NodeRuntimeHandlerFeatures
    _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1NodeRuntimeHandlerFeatures(
          recursiveReadOnlyMounts: json['recursiveReadOnlyMounts'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesToJson(
        IoK8SApiCoreV1NodeRuntimeHandlerFeatures instance) =>
    <String, dynamic>{
      'recursiveReadOnlyMounts': instance.recursiveReadOnlyMounts,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namespacespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namespacespec _$NamespacespecFromJson(Map<String, dynamic> json) =>
    Namespacespec(
      finalizers: (json['finalizers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$NamespacespecToJson(Namespacespec instance) =>
    <String, dynamic>{
      'finalizers': instance.finalizers,
    };

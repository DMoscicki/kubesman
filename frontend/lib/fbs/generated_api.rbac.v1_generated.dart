// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable

library api.rbac.v1;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

import './generated_apimachinery.pkg.apis.meta.v1.label_selector__generated.dart' as apimachinery_pkg_apis_meta_v1_label_selector_;
import './generated_apimachinery.pkg.apis.meta.v1.object_meta__generated.dart' as apimachinery_pkg_apis_meta_v1_object_meta_;
import './generated_apimachinery.pkg.apis.meta.v1_generated.dart' as apimachinery_pkg_apis_meta_v1;
import './generated_apimachinery.pkg.runtime_generated.dart' as apimachinery_pkg_runtime;

class AggregationRule {
  AggregationRule._(this._bc, this._bcOffset);
  factory AggregationRule(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<AggregationRule> reader = _AggregationRuleReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<apimachinery_pkg_apis_meta_v1.LabelSelector>? get clusterRoleSelectors => const fb.ListReader<apimachinery_pkg_apis_meta_v1.LabelSelector>(apimachinery_pkg_apis_meta_v1.LabelSelector.reader).vTableGetNullable(_bc, _bcOffset, 4);

  @override
  String toString() {
    return 'AggregationRule{clusterRoleSelectors: ${clusterRoleSelectors}}';
  }
}

class _AggregationRuleReader extends fb.TableReader<AggregationRule> {
  const _AggregationRuleReader();

  @override
  AggregationRule createObject(fb.BufferContext bc, int offset) => 
    AggregationRule._(bc, offset);
}

class AggregationRuleBuilder {
  AggregationRuleBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(1);
  }

  int addClusterRoleSelectorsOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class AggregationRuleObjectBuilder extends fb.ObjectBuilder {
  final List<apimachinery_pkg_apis_meta_v1.LabelSelectorObjectBuilder>? _clusterRoleSelectors;

  AggregationRuleObjectBuilder({
    List<apimachinery_pkg_apis_meta_v1.LabelSelectorObjectBuilder>? clusterRoleSelectors,
  })
      : _clusterRoleSelectors = clusterRoleSelectors;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? clusterRoleSelectorsOffset = _clusterRoleSelectors == null ? null
        : fbBuilder.writeList(_clusterRoleSelectors!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(1);
    fbBuilder.addOffset(0, clusterRoleSelectorsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class ClusterRole {
  ClusterRole._(this._bc, this._bcOffset);
  factory ClusterRole(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ClusterRole> reader = _ClusterRoleReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<PolicyRule>? get rules => const fb.ListReader<PolicyRule>(PolicyRule.reader).vTableGetNullable(_bc, _bcOffset, 6);
  AggregationRule? get aggregationRule => AggregationRule.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'ClusterRole{metadata: ${metadata}, rules: ${rules}, aggregationRule: ${aggregationRule}}';
  }
}

class _ClusterRoleReader extends fb.TableReader<ClusterRole> {
  const _ClusterRoleReader();

  @override
  ClusterRole createObject(fb.BufferContext bc, int offset) => 
    ClusterRole._(bc, offset);
}

class ClusterRoleBuilder {
  ClusterRoleBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addRulesOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addAggregationRuleOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class ClusterRoleObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final List<PolicyRuleObjectBuilder>? _rules;
  final AggregationRuleObjectBuilder? _aggregationRule;

  ClusterRoleObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    List<PolicyRuleObjectBuilder>? rules,
    AggregationRuleObjectBuilder? aggregationRule,
  })
      : _metadata = metadata,
        _rules = rules,
        _aggregationRule = aggregationRule;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? rulesOffset = _rules == null ? null
        : fbBuilder.writeList(_rules!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? aggregationRuleOffset = _aggregationRule?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, rulesOffset);
    fbBuilder.addOffset(2, aggregationRuleOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class ClusterRoleBinding {
  ClusterRoleBinding._(this._bc, this._bcOffset);
  factory ClusterRoleBinding(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ClusterRoleBinding> reader = _ClusterRoleBindingReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<Subject>? get subjects => const fb.ListReader<Subject>(Subject.reader).vTableGetNullable(_bc, _bcOffset, 6);
  RoleRef? get roleRef => RoleRef.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'ClusterRoleBinding{metadata: ${metadata}, subjects: ${subjects}, roleRef: ${roleRef}}';
  }
}

class _ClusterRoleBindingReader extends fb.TableReader<ClusterRoleBinding> {
  const _ClusterRoleBindingReader();

  @override
  ClusterRoleBinding createObject(fb.BufferContext bc, int offset) => 
    ClusterRoleBinding._(bc, offset);
}

class ClusterRoleBindingBuilder {
  ClusterRoleBindingBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addSubjectsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addRoleRefOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class ClusterRoleBindingObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final List<SubjectObjectBuilder>? _subjects;
  final RoleRefObjectBuilder? _roleRef;

  ClusterRoleBindingObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    List<SubjectObjectBuilder>? subjects,
    RoleRefObjectBuilder? roleRef,
  })
      : _metadata = metadata,
        _subjects = subjects,
        _roleRef = roleRef;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? subjectsOffset = _subjects == null ? null
        : fbBuilder.writeList(_subjects!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? roleRefOffset = _roleRef?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, subjectsOffset);
    fbBuilder.addOffset(2, roleRefOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class ClusterRoleBindingList {
  ClusterRoleBindingList._(this._bc, this._bcOffset);
  factory ClusterRoleBindingList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ClusterRoleBindingList> reader = _ClusterRoleBindingListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<ClusterRoleBinding>? get items => const fb.ListReader<ClusterRoleBinding>(ClusterRoleBinding.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'ClusterRoleBindingList{metadata: ${metadata}, items: ${items}}';
  }
}

class _ClusterRoleBindingListReader extends fb.TableReader<ClusterRoleBindingList> {
  const _ClusterRoleBindingListReader();

  @override
  ClusterRoleBindingList createObject(fb.BufferContext bc, int offset) => 
    ClusterRoleBindingList._(bc, offset);
}

class ClusterRoleBindingListBuilder {
  ClusterRoleBindingListBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addItemsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class ClusterRoleBindingListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<ClusterRoleBindingObjectBuilder>? _items;

  ClusterRoleBindingListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<ClusterRoleBindingObjectBuilder>? items,
  })
      : _metadata = metadata,
        _items = items;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? itemsOffset = _items == null ? null
        : fbBuilder.writeList(_items!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, itemsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class ClusterRoleList {
  ClusterRoleList._(this._bc, this._bcOffset);
  factory ClusterRoleList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<ClusterRoleList> reader = _ClusterRoleListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<ClusterRole>? get items => const fb.ListReader<ClusterRole>(ClusterRole.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'ClusterRoleList{metadata: ${metadata}, items: ${items}}';
  }
}

class _ClusterRoleListReader extends fb.TableReader<ClusterRoleList> {
  const _ClusterRoleListReader();

  @override
  ClusterRoleList createObject(fb.BufferContext bc, int offset) => 
    ClusterRoleList._(bc, offset);
}

class ClusterRoleListBuilder {
  ClusterRoleListBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addItemsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class ClusterRoleListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<ClusterRoleObjectBuilder>? _items;

  ClusterRoleListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<ClusterRoleObjectBuilder>? items,
  })
      : _metadata = metadata,
        _items = items;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? itemsOffset = _items == null ? null
        : fbBuilder.writeList(_items!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, itemsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class PolicyRule {
  PolicyRule._(this._bc, this._bcOffset);
  factory PolicyRule(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<PolicyRule> reader = _PolicyRuleReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  List<String>? get verbs => const fb.ListReader<String>(fb.StringReader()).vTableGetNullable(_bc, _bcOffset, 4);
  List<String>? get apiGroups => const fb.ListReader<String>(fb.StringReader()).vTableGetNullable(_bc, _bcOffset, 6);
  List<String>? get resources => const fb.ListReader<String>(fb.StringReader()).vTableGetNullable(_bc, _bcOffset, 8);
  List<String>? get resourceNames => const fb.ListReader<String>(fb.StringReader()).vTableGetNullable(_bc, _bcOffset, 10);
  List<String>? get nonResourceUrls => const fb.ListReader<String>(fb.StringReader()).vTableGetNullable(_bc, _bcOffset, 12);

  @override
  String toString() {
    return 'PolicyRule{verbs: ${verbs}, apiGroups: ${apiGroups}, resources: ${resources}, resourceNames: ${resourceNames}, nonResourceUrls: ${nonResourceUrls}}';
  }
}

class _PolicyRuleReader extends fb.TableReader<PolicyRule> {
  const _PolicyRuleReader();

  @override
  PolicyRule createObject(fb.BufferContext bc, int offset) => 
    PolicyRule._(bc, offset);
}

class PolicyRuleBuilder {
  PolicyRuleBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(5);
  }

  int addVerbsOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addApiGroupsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addResourcesOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addResourceNamesOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }
  int addNonResourceUrlsOffset(int? offset) {
    fbBuilder.addOffset(4, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class PolicyRuleObjectBuilder extends fb.ObjectBuilder {
  final List<String>? _verbs;
  final List<String>? _apiGroups;
  final List<String>? _resources;
  final List<String>? _resourceNames;
  final List<String>? _nonResourceUrls;

  PolicyRuleObjectBuilder({
    List<String>? verbs,
    List<String>? apiGroups,
    List<String>? resources,
    List<String>? resourceNames,
    List<String>? nonResourceUrls,
  })
      : _verbs = verbs,
        _apiGroups = apiGroups,
        _resources = resources,
        _resourceNames = resourceNames,
        _nonResourceUrls = nonResourceUrls;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? verbsOffset = _verbs == null ? null
        : fbBuilder.writeList(_verbs!.map(fbBuilder.writeString).toList());
    final int? apiGroupsOffset = _apiGroups == null ? null
        : fbBuilder.writeList(_apiGroups!.map(fbBuilder.writeString).toList());
    final int? resourcesOffset = _resources == null ? null
        : fbBuilder.writeList(_resources!.map(fbBuilder.writeString).toList());
    final int? resourceNamesOffset = _resourceNames == null ? null
        : fbBuilder.writeList(_resourceNames!.map(fbBuilder.writeString).toList());
    final int? nonResourceUrlsOffset = _nonResourceUrls == null ? null
        : fbBuilder.writeList(_nonResourceUrls!.map(fbBuilder.writeString).toList());
    fbBuilder.startTable(5);
    fbBuilder.addOffset(0, verbsOffset);
    fbBuilder.addOffset(1, apiGroupsOffset);
    fbBuilder.addOffset(2, resourcesOffset);
    fbBuilder.addOffset(3, resourceNamesOffset);
    fbBuilder.addOffset(4, nonResourceUrlsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class Role {
  Role._(this._bc, this._bcOffset);
  factory Role(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Role> reader = _RoleReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<PolicyRule>? get rules => const fb.ListReader<PolicyRule>(PolicyRule.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'Role{metadata: ${metadata}, rules: ${rules}}';
  }
}

class _RoleReader extends fb.TableReader<Role> {
  const _RoleReader();

  @override
  Role createObject(fb.BufferContext bc, int offset) => 
    Role._(bc, offset);
}

class RoleBuilder {
  RoleBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addRulesOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RoleObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final List<PolicyRuleObjectBuilder>? _rules;

  RoleObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    List<PolicyRuleObjectBuilder>? rules,
  })
      : _metadata = metadata,
        _rules = rules;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? rulesOffset = _rules == null ? null
        : fbBuilder.writeList(_rules!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, rulesOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class RoleBinding {
  RoleBinding._(this._bc, this._bcOffset);
  factory RoleBinding(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RoleBinding> reader = _RoleBindingReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ObjectMeta? get metadata => apimachinery_pkg_apis_meta_v1.ObjectMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<Subject>? get subjects => const fb.ListReader<Subject>(Subject.reader).vTableGetNullable(_bc, _bcOffset, 6);
  RoleRef? get roleRef => RoleRef.reader.vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'RoleBinding{metadata: ${metadata}, subjects: ${subjects}, roleRef: ${roleRef}}';
  }
}

class _RoleBindingReader extends fb.TableReader<RoleBinding> {
  const _RoleBindingReader();

  @override
  RoleBinding createObject(fb.BufferContext bc, int offset) => 
    RoleBinding._(bc, offset);
}

class RoleBindingBuilder {
  RoleBindingBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addSubjectsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addRoleRefOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RoleBindingObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? _metadata;
  final List<SubjectObjectBuilder>? _subjects;
  final RoleRefObjectBuilder? _roleRef;

  RoleBindingObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ObjectMetaObjectBuilder? metadata,
    List<SubjectObjectBuilder>? subjects,
    RoleRefObjectBuilder? roleRef,
  })
      : _metadata = metadata,
        _subjects = subjects,
        _roleRef = roleRef;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? subjectsOffset = _subjects == null ? null
        : fbBuilder.writeList(_subjects!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    final int? roleRefOffset = _roleRef?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, subjectsOffset);
    fbBuilder.addOffset(2, roleRefOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class RoleBindingList {
  RoleBindingList._(this._bc, this._bcOffset);
  factory RoleBindingList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RoleBindingList> reader = _RoleBindingListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<RoleBinding>? get items => const fb.ListReader<RoleBinding>(RoleBinding.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'RoleBindingList{metadata: ${metadata}, items: ${items}}';
  }
}

class _RoleBindingListReader extends fb.TableReader<RoleBindingList> {
  const _RoleBindingListReader();

  @override
  RoleBindingList createObject(fb.BufferContext bc, int offset) => 
    RoleBindingList._(bc, offset);
}

class RoleBindingListBuilder {
  RoleBindingListBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addItemsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RoleBindingListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<RoleBindingObjectBuilder>? _items;

  RoleBindingListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<RoleBindingObjectBuilder>? items,
  })
      : _metadata = metadata,
        _items = items;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? itemsOffset = _items == null ? null
        : fbBuilder.writeList(_items!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, itemsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class RoleList {
  RoleList._(this._bc, this._bcOffset);
  factory RoleList(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RoleList> reader = _RoleListReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  apimachinery_pkg_apis_meta_v1.ListMeta? get metadata => apimachinery_pkg_apis_meta_v1.ListMeta.reader.vTableGetNullable(_bc, _bcOffset, 4);
  List<Role>? get items => const fb.ListReader<Role>(Role.reader).vTableGetNullable(_bc, _bcOffset, 6);

  @override
  String toString() {
    return 'RoleList{metadata: ${metadata}, items: ${items}}';
  }
}

class _RoleListReader extends fb.TableReader<RoleList> {
  const _RoleListReader();

  @override
  RoleList createObject(fb.BufferContext bc, int offset) => 
    RoleList._(bc, offset);
}

class RoleListBuilder {
  RoleListBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addMetadataOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addItemsOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RoleListObjectBuilder extends fb.ObjectBuilder {
  final apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? _metadata;
  final List<RoleObjectBuilder>? _items;

  RoleListObjectBuilder({
    apimachinery_pkg_apis_meta_v1.ListMetaObjectBuilder? metadata,
    List<RoleObjectBuilder>? items,
  })
      : _metadata = metadata,
        _items = items;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? metadataOffset = _metadata?.getOrCreateOffset(fbBuilder);
    final int? itemsOffset = _items == null ? null
        : fbBuilder.writeList(_items!.map((b) => b.getOrCreateOffset(fbBuilder)).toList());
    fbBuilder.startTable(2);
    fbBuilder.addOffset(0, metadataOffset);
    fbBuilder.addOffset(1, itemsOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class RoleRef {
  RoleRef._(this._bc, this._bcOffset);
  factory RoleRef(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<RoleRef> reader = _RoleRefReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get apiGroup => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get kind => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  String? get name => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 8);

  @override
  String toString() {
    return 'RoleRef{apiGroup: ${apiGroup}, kind: ${kind}, name: ${name}}';
  }
}

class _RoleRefReader extends fb.TableReader<RoleRef> {
  const _RoleRefReader();

  @override
  RoleRef createObject(fb.BufferContext bc, int offset) => 
    RoleRef._(bc, offset);
}

class RoleRefBuilder {
  RoleRefBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(3);
  }

  int addApiGroupOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addKindOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addNameOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class RoleRefObjectBuilder extends fb.ObjectBuilder {
  final String? _apiGroup;
  final String? _kind;
  final String? _name;

  RoleRefObjectBuilder({
    String? apiGroup,
    String? kind,
    String? name,
  })
      : _apiGroup = apiGroup,
        _kind = kind,
        _name = name;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? apiGroupOffset = _apiGroup == null ? null
        : fbBuilder.writeString(_apiGroup!);
    final int? kindOffset = _kind == null ? null
        : fbBuilder.writeString(_kind!);
    final int? nameOffset = _name == null ? null
        : fbBuilder.writeString(_name!);
    fbBuilder.startTable(3);
    fbBuilder.addOffset(0, apiGroupOffset);
    fbBuilder.addOffset(1, kindOffset);
    fbBuilder.addOffset(2, nameOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
class Subject {
  Subject._(this._bc, this._bcOffset);
  factory Subject(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Subject> reader = _SubjectReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  String? get kind => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 4);
  String? get apiGroup => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 6);
  String? get name => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 8);
  String? get namespace => const fb.StringReader().vTableGetNullable(_bc, _bcOffset, 10);

  @override
  String toString() {
    return 'Subject{kind: ${kind}, apiGroup: ${apiGroup}, name: ${name}, namespace: ${namespace}}';
  }
}

class _SubjectReader extends fb.TableReader<Subject> {
  const _SubjectReader();

  @override
  Subject createObject(fb.BufferContext bc, int offset) => 
    Subject._(bc, offset);
}

class SubjectBuilder {
  SubjectBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(4);
  }

  int addKindOffset(int? offset) {
    fbBuilder.addOffset(0, offset);
    return fbBuilder.offset;
  }
  int addApiGroupOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }
  int addNameOffset(int? offset) {
    fbBuilder.addOffset(2, offset);
    return fbBuilder.offset;
  }
  int addNamespaceOffset(int? offset) {
    fbBuilder.addOffset(3, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class SubjectObjectBuilder extends fb.ObjectBuilder {
  final String? _kind;
  final String? _apiGroup;
  final String? _name;
  final String? _namespace;

  SubjectObjectBuilder({
    String? kind,
    String? apiGroup,
    String? name,
    String? namespace,
  })
      : _kind = kind,
        _apiGroup = apiGroup,
        _name = name,
        _namespace = namespace;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? kindOffset = _kind == null ? null
        : fbBuilder.writeString(_kind!);
    final int? apiGroupOffset = _apiGroup == null ? null
        : fbBuilder.writeString(_apiGroup!);
    final int? nameOffset = _name == null ? null
        : fbBuilder.writeString(_name!);
    final int? namespaceOffset = _namespace == null ? null
        : fbBuilder.writeString(_namespace!);
    fbBuilder.startTable(4);
    fbBuilder.addOffset(0, kindOffset);
    fbBuilder.addOffset(1, apiGroupOffset);
    fbBuilder.addOffset(2, nameOffset);
    fbBuilder.addOffset(3, namespaceOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}

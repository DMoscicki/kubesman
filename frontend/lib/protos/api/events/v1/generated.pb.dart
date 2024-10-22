//
//  Generated code. Do not modify.
//  source: api/events/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../core/v1/generated.pb.dart' as $1;

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
/// Events have a limited retention time and triggers and messages may evolve
/// with time.  Event consumers should not rely on the timing of an event
/// with a given Reason reflecting a consistent underlying trigger, or the
/// continued existence of events with that Reason.  Events should be
/// treated as informative, best-effort, supplemental data.
class Event extends $pb.GeneratedMessage {
  factory Event({
    $0.ObjectMeta? metadata,
    $0.MicroTime? eventTime,
    EventSeries? series,
    $core.String? reportingController,
    $core.String? reportingInstance,
    $core.String? action,
    $core.String? reason,
    $1.ObjectReference? regarding,
    $1.ObjectReference? related,
    $core.String? note,
    $core.String? type,
    $1.EventSource? deprecatedSource,
    $0.Time? deprecatedFirstTimestamp,
    $0.Time? deprecatedLastTimestamp,
    $core.int? deprecatedCount,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (eventTime != null) {
      $result.eventTime = eventTime;
    }
    if (series != null) {
      $result.series = series;
    }
    if (reportingController != null) {
      $result.reportingController = reportingController;
    }
    if (reportingInstance != null) {
      $result.reportingInstance = reportingInstance;
    }
    if (action != null) {
      $result.action = action;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (regarding != null) {
      $result.regarding = regarding;
    }
    if (related != null) {
      $result.related = related;
    }
    if (note != null) {
      $result.note = note;
    }
    if (type != null) {
      $result.type = type;
    }
    if (deprecatedSource != null) {
      $result.deprecatedSource = deprecatedSource;
    }
    if (deprecatedFirstTimestamp != null) {
      $result.deprecatedFirstTimestamp = deprecatedFirstTimestamp;
    }
    if (deprecatedLastTimestamp != null) {
      $result.deprecatedLastTimestamp = deprecatedLastTimestamp;
    }
    if (deprecatedCount != null) {
      $result.deprecatedCount = deprecatedCount;
    }
    return $result;
  }
  Event._() : super();
  factory Event.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Event.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Event', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.events.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<$0.MicroTime>(2, _omitFieldNames ? '' : 'eventTime', protoName: 'eventTime', subBuilder: $0.MicroTime.create)
    ..aOM<EventSeries>(3, _omitFieldNames ? '' : 'series', subBuilder: EventSeries.create)
    ..aOS(4, _omitFieldNames ? '' : 'reportingController', protoName: 'reportingController')
    ..aOS(5, _omitFieldNames ? '' : 'reportingInstance', protoName: 'reportingInstance')
    ..aOS(6, _omitFieldNames ? '' : 'action')
    ..aOS(7, _omitFieldNames ? '' : 'reason')
    ..aOM<$1.ObjectReference>(8, _omitFieldNames ? '' : 'regarding', subBuilder: $1.ObjectReference.create)
    ..aOM<$1.ObjectReference>(9, _omitFieldNames ? '' : 'related', subBuilder: $1.ObjectReference.create)
    ..aOS(10, _omitFieldNames ? '' : 'note')
    ..aOS(11, _omitFieldNames ? '' : 'type')
    ..aOM<$1.EventSource>(12, _omitFieldNames ? '' : 'deprecatedSource', protoName: 'deprecatedSource', subBuilder: $1.EventSource.create)
    ..aOM<$0.Time>(13, _omitFieldNames ? '' : 'deprecatedFirstTimestamp', protoName: 'deprecatedFirstTimestamp', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(14, _omitFieldNames ? '' : 'deprecatedLastTimestamp', protoName: 'deprecatedLastTimestamp', subBuilder: $0.Time.create)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'deprecatedCount', $pb.PbFieldType.O3, protoName: 'deprecatedCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Event clone() => Event()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Event copyWith(void Function(Event) updates) => super.copyWith((message) => updates(message as Event)) as Event;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Event create() => Event._();
  Event createEmptyInstance() => create();
  static $pb.PbList<Event> createRepeated() => $pb.PbList<Event>();
  @$core.pragma('dart2js:noInline')
  static Event getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Event>(create);
  static Event? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// eventTime is the time when this Event was first observed. It is required.
  @$pb.TagNumber(2)
  $0.MicroTime get eventTime => $_getN(1);
  @$pb.TagNumber(2)
  set eventTime($0.MicroTime v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.MicroTime ensureEventTime() => $_ensure(1);

  /// series is data about the Event series this event represents or nil if it's a singleton Event.
  /// +optional
  @$pb.TagNumber(3)
  EventSeries get series => $_getN(2);
  @$pb.TagNumber(3)
  set series(EventSeries v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSeries() => $_has(2);
  @$pb.TagNumber(3)
  void clearSeries() => clearField(3);
  @$pb.TagNumber(3)
  EventSeries ensureSeries() => $_ensure(2);

  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  /// This field cannot be empty for new Events.
  @$pb.TagNumber(4)
  $core.String get reportingController => $_getSZ(3);
  @$pb.TagNumber(4)
  set reportingController($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReportingController() => $_has(3);
  @$pb.TagNumber(4)
  void clearReportingController() => clearField(4);

  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`.
  /// This field cannot be empty for new Events and it can have at most 128 characters.
  @$pb.TagNumber(5)
  $core.String get reportingInstance => $_getSZ(4);
  @$pb.TagNumber(5)
  set reportingInstance($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReportingInstance() => $_has(4);
  @$pb.TagNumber(5)
  void clearReportingInstance() => clearField(5);

  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable.
  /// This field cannot be empty for new Events and it can have at most 128 characters.
  @$pb.TagNumber(6)
  $core.String get action => $_getSZ(5);
  @$pb.TagNumber(6)
  set action($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAction() => $_has(5);
  @$pb.TagNumber(6)
  void clearAction() => clearField(6);

  /// reason is why the action was taken. It is human-readable.
  /// This field cannot be empty for new Events and it can have at most 128 characters.
  @$pb.TagNumber(7)
  $core.String get reason => $_getSZ(6);
  @$pb.TagNumber(7)
  set reason($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReason() => $_has(6);
  @$pb.TagNumber(7)
  void clearReason() => clearField(7);

  /// regarding contains the object this Event is about. In most cases it's an Object reporting controller
  /// implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because
  /// it acts on some changes in a ReplicaSet object.
  /// +optional
  @$pb.TagNumber(8)
  $1.ObjectReference get regarding => $_getN(7);
  @$pb.TagNumber(8)
  set regarding($1.ObjectReference v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRegarding() => $_has(7);
  @$pb.TagNumber(8)
  void clearRegarding() => clearField(8);
  @$pb.TagNumber(8)
  $1.ObjectReference ensureRegarding() => $_ensure(7);

  /// related is the optional secondary object for more complex actions. E.g. when regarding object triggers
  /// a creation or deletion of related object.
  /// +optional
  @$pb.TagNumber(9)
  $1.ObjectReference get related => $_getN(8);
  @$pb.TagNumber(9)
  set related($1.ObjectReference v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasRelated() => $_has(8);
  @$pb.TagNumber(9)
  void clearRelated() => clearField(9);
  @$pb.TagNumber(9)
  $1.ObjectReference ensureRelated() => $_ensure(8);

  /// note is a human-readable description of the status of this operation.
  /// Maximal length of the note is 1kB, but libraries should be prepared to
  /// handle values up to 64kB.
  /// +optional
  @$pb.TagNumber(10)
  $core.String get note => $_getSZ(9);
  @$pb.TagNumber(10)
  set note($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasNote() => $_has(9);
  @$pb.TagNumber(10)
  void clearNote() => clearField(10);

  /// type is the type of this event (Normal, Warning), new types could be added in the future.
  /// It is machine-readable.
  /// This field cannot be empty for new Events.
  @$pb.TagNumber(11)
  $core.String get type => $_getSZ(10);
  @$pb.TagNumber(11)
  set type($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasType() => $_has(10);
  @$pb.TagNumber(11)
  void clearType() => clearField(11);

  /// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// +optional
  @$pb.TagNumber(12)
  $1.EventSource get deprecatedSource => $_getN(11);
  @$pb.TagNumber(12)
  set deprecatedSource($1.EventSource v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasDeprecatedSource() => $_has(11);
  @$pb.TagNumber(12)
  void clearDeprecatedSource() => clearField(12);
  @$pb.TagNumber(12)
  $1.EventSource ensureDeprecatedSource() => $_ensure(11);

  /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// +optional
  @$pb.TagNumber(13)
  $0.Time get deprecatedFirstTimestamp => $_getN(12);
  @$pb.TagNumber(13)
  set deprecatedFirstTimestamp($0.Time v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasDeprecatedFirstTimestamp() => $_has(12);
  @$pb.TagNumber(13)
  void clearDeprecatedFirstTimestamp() => clearField(13);
  @$pb.TagNumber(13)
  $0.Time ensureDeprecatedFirstTimestamp() => $_ensure(12);

  /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// +optional
  @$pb.TagNumber(14)
  $0.Time get deprecatedLastTimestamp => $_getN(13);
  @$pb.TagNumber(14)
  set deprecatedLastTimestamp($0.Time v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasDeprecatedLastTimestamp() => $_has(13);
  @$pb.TagNumber(14)
  void clearDeprecatedLastTimestamp() => clearField(14);
  @$pb.TagNumber(14)
  $0.Time ensureDeprecatedLastTimestamp() => $_ensure(13);

  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  /// +optional
  @$pb.TagNumber(15)
  $core.int get deprecatedCount => $_getIZ(14);
  @$pb.TagNumber(15)
  set deprecatedCount($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasDeprecatedCount() => $_has(14);
  @$pb.TagNumber(15)
  void clearDeprecatedCount() => clearField(15);
}

/// EventList is a list of Event objects.
class EventList extends $pb.GeneratedMessage {
  factory EventList({
    $0.ListMeta? metadata,
    $core.Iterable<Event>? items,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  EventList._() : super();
  factory EventList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.events.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Event>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Event.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventList clone() => EventList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventList copyWith(void Function(EventList) updates) => super.copyWith((message) => updates(message as EventList)) as EventList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventList create() => EventList._();
  EventList createEmptyInstance() => create();
  static $pb.PbList<EventList> createRepeated() => $pb.PbList<EventList>();
  @$core.pragma('dart2js:noInline')
  static EventList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventList>(create);
  static EventList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ListMeta ensureMetadata() => $_ensure(0);

  /// items is a list of schema objects.
  @$pb.TagNumber(2)
  $core.List<Event> get items => $_getList(1);
}

/// EventSeries contain information on series of events, i.e. thing that was/is happening
/// continuously for some time. How often to update the EventSeries is up to the event reporters.
/// The default event reporter in "k8s.io/client-go/tools/events/event_broadcaster.go" shows
/// how this struct is updated on heartbeats and can guide customized reporter implementations.
class EventSeries extends $pb.GeneratedMessage {
  factory EventSeries({
    $core.int? count,
    $0.MicroTime? lastObservedTime,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (lastObservedTime != null) {
      $result.lastObservedTime = lastObservedTime;
    }
    return $result;
  }
  EventSeries._() : super();
  factory EventSeries.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventSeries.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventSeries', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.events.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..aOM<$0.MicroTime>(2, _omitFieldNames ? '' : 'lastObservedTime', protoName: 'lastObservedTime', subBuilder: $0.MicroTime.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventSeries clone() => EventSeries()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventSeries copyWith(void Function(EventSeries) updates) => super.copyWith((message) => updates(message as EventSeries)) as EventSeries;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventSeries create() => EventSeries._();
  EventSeries createEmptyInstance() => create();
  static $pb.PbList<EventSeries> createRepeated() => $pb.PbList<EventSeries>();
  @$core.pragma('dart2js:noInline')
  static EventSeries getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventSeries>(create);
  static EventSeries? _defaultInstance;

  /// count is the number of occurrences in this series up to the last heartbeat time.
  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  /// lastObservedTime is the time when last Event from the series was seen before last heartbeat.
  @$pb.TagNumber(2)
  $0.MicroTime get lastObservedTime => $_getN(1);
  @$pb.TagNumber(2)
  set lastObservedTime($0.MicroTime v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastObservedTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastObservedTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.MicroTime ensureLastObservedTime() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

// automatically generated by the FlatBuffers compiler, do not modify
// @generated
extern crate alloc;
extern crate flatbuffers;
use alloc::boxed::Box;
use alloc::string::{String, ToString};
use alloc::vec::Vec;
use core::mem;
use core::cmp::Ordering;
extern crate serde;
use self::serde::ser::{Serialize, Serializer, SerializeStruct};
use self::flatbuffers::{EndianScalar, Follow};
use super::*;
pub enum ObjectMetricSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ObjectMetricSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ObjectMetricSource<'a> {
  type Inner = ObjectMetricSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ObjectMetricSource<'a> {
  pub const VT_DESCRIBEDOBJECT: flatbuffers::VOffsetT = 4;
  pub const VT_TARGET: flatbuffers::VOffsetT = 6;
  pub const VT_METRIC: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ObjectMetricSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ObjectMetricSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<ObjectMetricSource<'bldr>> {
    let mut builder = ObjectMetricSourceBuilder::new(_fbb);
    if let Some(x) = args.metric { builder.add_metric(x); }
    if let Some(x) = args.target { builder.add_target(x); }
    if let Some(x) = args.describedObject { builder.add_describedObject(x); }
    builder.finish()
  }


  #[inline]
  pub fn describedObject(&self) -> CrossVersionObjectReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<CrossVersionObjectReference>>(ObjectMetricSource::VT_DESCRIBEDOBJECT, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn target(&self) -> MetricTarget<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<MetricTarget>>(ObjectMetricSource::VT_TARGET, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn metric(&self) -> MetricIdentifier<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<MetricIdentifier>>(ObjectMetricSource::VT_METRIC, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for ObjectMetricSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<CrossVersionObjectReference>>("describedObject", Self::VT_DESCRIBEDOBJECT, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<MetricTarget>>("target", Self::VT_TARGET, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<MetricIdentifier>>("metric", Self::VT_METRIC, false)?
     .finish();
    Ok(())
  }
}
pub struct ObjectMetricSourceArgs<'a> {
    pub describedObject: Option<flatbuffers::WIPOffset<CrossVersionObjectReference<'a>>>,
    pub target: Option<flatbuffers::WIPOffset<MetricTarget<'a>>>,
    pub metric: Option<flatbuffers::WIPOffset<MetricIdentifier<'a>>>,
}
impl<'a> Default for ObjectMetricSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    ObjectMetricSourceArgs {
      describedObject: None,
      target: None,
      metric: None,
    }
  }
}

impl Serialize for ObjectMetricSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ObjectMetricSource", 3)?;
      s.serialize_field("describedObject", &self.describedObject())?;
      s.serialize_field("target", &self.target())?;
      s.serialize_field("metric", &self.metric())?;
    s.end()
  }
}

pub struct ObjectMetricSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ObjectMetricSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_describedObject(&mut self, describedObject: flatbuffers::WIPOffset<CrossVersionObjectReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<CrossVersionObjectReference>>(ObjectMetricSource::VT_DESCRIBEDOBJECT, describedObject);
  }
  #[inline]
  pub fn add_target(&mut self, target: flatbuffers::WIPOffset<MetricTarget<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<MetricTarget>>(ObjectMetricSource::VT_TARGET, target);
  }
  #[inline]
  pub fn add_metric(&mut self, metric: flatbuffers::WIPOffset<MetricIdentifier<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<MetricIdentifier>>(ObjectMetricSource::VT_METRIC, metric);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ObjectMetricSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ObjectMetricSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ObjectMetricSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ObjectMetricSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ObjectMetricSource");
      ds.field("describedObject", &self.describedObject());
      ds.field("target", &self.target());
      ds.field("metric", &self.metric());
      ds.finish()
  }
}

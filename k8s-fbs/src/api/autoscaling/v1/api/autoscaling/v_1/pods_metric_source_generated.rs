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
pub enum PodsMetricSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodsMetricSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodsMetricSource<'a> {
  type Inner = PodsMetricSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodsMetricSource<'a> {
  pub const VT_METRICNAME: flatbuffers::VOffsetT = 4;
  pub const VT_TARGETAVERAGEVALUE: flatbuffers::VOffsetT = 6;
  pub const VT_SELECTOR: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodsMetricSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodsMetricSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<PodsMetricSource<'bldr>> {
    let mut builder = PodsMetricSourceBuilder::new(_fbb);
    if let Some(x) = args.selector { builder.add_selector(x); }
    if let Some(x) = args.targetAverageValue { builder.add_targetAverageValue(x); }
    if let Some(x) = args.metricName { builder.add_metricName(x); }
    builder.finish()
  }


  #[inline]
  pub fn metricName(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PodsMetricSource::VT_METRICNAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn targetAverageValue(&self) -> super::super::super::apimachinery::pkg::api::resource::Quantity<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::api::resource::Quantity>>(PodsMetricSource::VT_TARGETAVERAGEVALUE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn selector(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector>>(PodsMetricSource::VT_SELECTOR, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodsMetricSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("metricName", Self::VT_METRICNAME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::api::resource::Quantity>>("targetAverageValue", Self::VT_TARGETAVERAGEVALUE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector>>("selector", Self::VT_SELECTOR, false)?
     .finish();
    Ok(())
  }
}
pub struct PodsMetricSourceArgs<'a> {
    pub metricName: Option<flatbuffers::WIPOffset<&'a str>>,
    pub targetAverageValue: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::api::resource::Quantity<'a>>>,
    pub selector: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector<'a>>>,
}
impl<'a> Default for PodsMetricSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodsMetricSourceArgs {
      metricName: None,
      targetAverageValue: None,
      selector: None,
    }
  }
}

impl Serialize for PodsMetricSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodsMetricSource", 3)?;
      s.serialize_field("metricName", &self.metricName())?;
      s.serialize_field("targetAverageValue", &self.targetAverageValue())?;
      s.serialize_field("selector", &self.selector())?;
    s.end()
  }
}

pub struct PodsMetricSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodsMetricSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metricName(&mut self, metricName: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodsMetricSource::VT_METRICNAME, metricName);
  }
  #[inline]
  pub fn add_targetAverageValue(&mut self, targetAverageValue: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::api::resource::Quantity<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::api::resource::Quantity>>(PodsMetricSource::VT_TARGETAVERAGEVALUE, targetAverageValue);
  }
  #[inline]
  pub fn add_selector(&mut self, selector: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::LabelSelector>>(PodsMetricSource::VT_SELECTOR, selector);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodsMetricSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodsMetricSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodsMetricSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodsMetricSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodsMetricSource");
      ds.field("metricName", &self.metricName());
      ds.field("targetAverageValue", &self.targetAverageValue());
      ds.field("selector", &self.selector());
      ds.finish()
  }
}

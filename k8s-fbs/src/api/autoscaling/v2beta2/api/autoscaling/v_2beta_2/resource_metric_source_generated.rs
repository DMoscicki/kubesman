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
pub enum ResourceMetricSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ResourceMetricSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ResourceMetricSource<'a> {
  type Inner = ResourceMetricSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ResourceMetricSource<'a> {
  pub const VT_NAME: flatbuffers::VOffsetT = 4;
  pub const VT_TARGET: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ResourceMetricSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ResourceMetricSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<ResourceMetricSource<'bldr>> {
    let mut builder = ResourceMetricSourceBuilder::new(_fbb);
    if let Some(x) = args.target { builder.add_target(x); }
    if let Some(x) = args.name { builder.add_name(x); }
    builder.finish()
  }


  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ResourceMetricSource::VT_NAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn target(&self) -> MetricTarget<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<MetricTarget>>(ResourceMetricSource::VT_TARGET, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for ResourceMetricSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<MetricTarget>>("target", Self::VT_TARGET, false)?
     .finish();
    Ok(())
  }
}
pub struct ResourceMetricSourceArgs<'a> {
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
    pub target: Option<flatbuffers::WIPOffset<MetricTarget<'a>>>,
}
impl<'a> Default for ResourceMetricSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    ResourceMetricSourceArgs {
      name: None,
      target: None,
    }
  }
}

impl Serialize for ResourceMetricSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ResourceMetricSource", 2)?;
      s.serialize_field("name", &self.name())?;
      s.serialize_field("target", &self.target())?;
    s.end()
  }
}

pub struct ResourceMetricSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ResourceMetricSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ResourceMetricSource::VT_NAME, name);
  }
  #[inline]
  pub fn add_target(&mut self, target: flatbuffers::WIPOffset<MetricTarget<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<MetricTarget>>(ResourceMetricSource::VT_TARGET, target);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ResourceMetricSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ResourceMetricSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ResourceMetricSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ResourceMetricSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ResourceMetricSource");
      ds.field("name", &self.name());
      ds.field("target", &self.target());
      ds.finish()
  }
}

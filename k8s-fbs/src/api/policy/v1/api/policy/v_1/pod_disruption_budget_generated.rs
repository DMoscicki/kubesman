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
pub enum PodDisruptionBudgetOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodDisruptionBudget<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodDisruptionBudget<'a> {
  type Inner = PodDisruptionBudget<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodDisruptionBudget<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SPEC: flatbuffers::VOffsetT = 6;
  pub const VT_STATUS: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodDisruptionBudget { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodDisruptionBudgetArgs<'args>
  ) -> flatbuffers::WIPOffset<PodDisruptionBudget<'bldr>> {
    let mut builder = PodDisruptionBudgetBuilder::new(_fbb);
    if let Some(x) = args.status { builder.add_status(x); }
    if let Some(x) = args.spec { builder.add_spec(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(PodDisruptionBudget::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn spec(&self) -> PodDisruptionBudgetSpec<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<PodDisruptionBudgetSpec>>(PodDisruptionBudget::VT_SPEC, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn status(&self) -> PodDisruptionBudgetStatus<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<PodDisruptionBudgetStatus>>(PodDisruptionBudget::VT_STATUS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodDisruptionBudget<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<PodDisruptionBudgetSpec>>("spec", Self::VT_SPEC, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<PodDisruptionBudgetStatus>>("status", Self::VT_STATUS, false)?
     .finish();
    Ok(())
  }
}
pub struct PodDisruptionBudgetArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub spec: Option<flatbuffers::WIPOffset<PodDisruptionBudgetSpec<'a>>>,
    pub status: Option<flatbuffers::WIPOffset<PodDisruptionBudgetStatus<'a>>>,
}
impl<'a> Default for PodDisruptionBudgetArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodDisruptionBudgetArgs {
      metadata: None,
      spec: None,
      status: None,
    }
  }
}

impl Serialize for PodDisruptionBudget<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodDisruptionBudget", 3)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("spec", &self.spec())?;
      s.serialize_field("status", &self.status())?;
    s.end()
  }
}

pub struct PodDisruptionBudgetBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodDisruptionBudgetBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(PodDisruptionBudget::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_spec(&mut self, spec: flatbuffers::WIPOffset<PodDisruptionBudgetSpec<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<PodDisruptionBudgetSpec>>(PodDisruptionBudget::VT_SPEC, spec);
  }
  #[inline]
  pub fn add_status(&mut self, status: flatbuffers::WIPOffset<PodDisruptionBudgetStatus<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<PodDisruptionBudgetStatus>>(PodDisruptionBudget::VT_STATUS, status);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodDisruptionBudgetBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodDisruptionBudgetBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodDisruptionBudget<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodDisruptionBudget<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodDisruptionBudget");
      ds.field("metadata", &self.metadata());
      ds.field("spec", &self.spec());
      ds.field("status", &self.status());
      ds.finish()
  }
}

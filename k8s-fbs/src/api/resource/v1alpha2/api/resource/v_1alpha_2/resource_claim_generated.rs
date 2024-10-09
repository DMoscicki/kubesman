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
pub enum ResourceClaimOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ResourceClaim<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ResourceClaim<'a> {
  type Inner = ResourceClaim<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ResourceClaim<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SPEC: flatbuffers::VOffsetT = 6;
  pub const VT_STATUS: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ResourceClaim { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ResourceClaimArgs<'args>
  ) -> flatbuffers::WIPOffset<ResourceClaim<'bldr>> {
    let mut builder = ResourceClaimBuilder::new(_fbb);
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
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ResourceClaim::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn spec(&self) -> ResourceClaimSpec<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ResourceClaimSpec>>(ResourceClaim::VT_SPEC, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn status(&self) -> ResourceClaimStatus<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ResourceClaimStatus>>(ResourceClaim::VT_STATUS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for ResourceClaim<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<ResourceClaimSpec>>("spec", Self::VT_SPEC, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<ResourceClaimStatus>>("status", Self::VT_STATUS, false)?
     .finish();
    Ok(())
  }
}
pub struct ResourceClaimArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub spec: Option<flatbuffers::WIPOffset<ResourceClaimSpec<'a>>>,
    pub status: Option<flatbuffers::WIPOffset<ResourceClaimStatus<'a>>>,
}
impl<'a> Default for ResourceClaimArgs<'a> {
  #[inline]
  fn default() -> Self {
    ResourceClaimArgs {
      metadata: None,
      spec: None,
      status: None,
    }
  }
}

impl Serialize for ResourceClaim<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ResourceClaim", 3)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("spec", &self.spec())?;
      s.serialize_field("status", &self.status())?;
    s.end()
  }
}

pub struct ResourceClaimBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ResourceClaimBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ResourceClaim::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_spec(&mut self, spec: flatbuffers::WIPOffset<ResourceClaimSpec<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ResourceClaimSpec>>(ResourceClaim::VT_SPEC, spec);
  }
  #[inline]
  pub fn add_status(&mut self, status: flatbuffers::WIPOffset<ResourceClaimStatus<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ResourceClaimStatus>>(ResourceClaim::VT_STATUS, status);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ResourceClaimBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ResourceClaimBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ResourceClaim<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ResourceClaim<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ResourceClaim");
      ds.field("metadata", &self.metadata());
      ds.field("spec", &self.spec());
      ds.field("status", &self.status());
      ds.finish()
  }
}

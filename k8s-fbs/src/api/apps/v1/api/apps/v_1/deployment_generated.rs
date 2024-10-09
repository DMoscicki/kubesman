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
pub enum DeploymentOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct Deployment<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for Deployment<'a> {
  type Inner = Deployment<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> Deployment<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SPEC: flatbuffers::VOffsetT = 6;
  pub const VT_STATUS: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    Deployment { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args DeploymentArgs<'args>
  ) -> flatbuffers::WIPOffset<Deployment<'bldr>> {
    let mut builder = DeploymentBuilder::new(_fbb);
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
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(Deployment::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn spec(&self) -> DeploymentSpec<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<DeploymentSpec>>(Deployment::VT_SPEC, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn status(&self) -> DeploymentStatus<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<DeploymentStatus>>(Deployment::VT_STATUS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for Deployment<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<DeploymentSpec>>("spec", Self::VT_SPEC, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<DeploymentStatus>>("status", Self::VT_STATUS, false)?
     .finish();
    Ok(())
  }
}
pub struct DeploymentArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub spec: Option<flatbuffers::WIPOffset<DeploymentSpec<'a>>>,
    pub status: Option<flatbuffers::WIPOffset<DeploymentStatus<'a>>>,
}
impl<'a> Default for DeploymentArgs<'a> {
  #[inline]
  fn default() -> Self {
    DeploymentArgs {
      metadata: None,
      spec: None,
      status: None,
    }
  }
}

impl Serialize for Deployment<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("Deployment", 3)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("spec", &self.spec())?;
      s.serialize_field("status", &self.status())?;
    s.end()
  }
}

pub struct DeploymentBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> DeploymentBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(Deployment::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_spec(&mut self, spec: flatbuffers::WIPOffset<DeploymentSpec<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<DeploymentSpec>>(Deployment::VT_SPEC, spec);
  }
  #[inline]
  pub fn add_status(&mut self, status: flatbuffers::WIPOffset<DeploymentStatus<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<DeploymentStatus>>(Deployment::VT_STATUS, status);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> DeploymentBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    DeploymentBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<Deployment<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for Deployment<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("Deployment");
      ds.field("metadata", &self.metadata());
      ds.field("spec", &self.spec());
      ds.field("status", &self.status());
      ds.finish()
  }
}

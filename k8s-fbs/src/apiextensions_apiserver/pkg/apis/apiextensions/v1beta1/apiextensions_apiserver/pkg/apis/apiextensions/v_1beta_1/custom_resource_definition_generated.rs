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
pub enum CustomResourceDefinitionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct CustomResourceDefinition<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for CustomResourceDefinition<'a> {
  type Inner = CustomResourceDefinition<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> CustomResourceDefinition<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SPEC: flatbuffers::VOffsetT = 6;
  pub const VT_STATUS: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    CustomResourceDefinition { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args CustomResourceDefinitionArgs<'args>
  ) -> flatbuffers::WIPOffset<CustomResourceDefinition<'bldr>> {
    let mut builder = CustomResourceDefinitionBuilder::new(_fbb);
    if let Some(x) = args.status { builder.add_status(x); }
    if let Some(x) = args.spec { builder.add_spec(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(CustomResourceDefinition::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn spec(&self) -> CustomResourceDefinitionSpec<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<CustomResourceDefinitionSpec>>(CustomResourceDefinition::VT_SPEC, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn status(&self) -> CustomResourceDefinitionStatus<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<CustomResourceDefinitionStatus>>(CustomResourceDefinition::VT_STATUS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for CustomResourceDefinition<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<CustomResourceDefinitionSpec>>("spec", Self::VT_SPEC, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<CustomResourceDefinitionStatus>>("status", Self::VT_STATUS, false)?
     .finish();
    Ok(())
  }
}
pub struct CustomResourceDefinitionArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub spec: Option<flatbuffers::WIPOffset<CustomResourceDefinitionSpec<'a>>>,
    pub status: Option<flatbuffers::WIPOffset<CustomResourceDefinitionStatus<'a>>>,
}
impl<'a> Default for CustomResourceDefinitionArgs<'a> {
  #[inline]
  fn default() -> Self {
    CustomResourceDefinitionArgs {
      metadata: None,
      spec: None,
      status: None,
    }
  }
}

impl Serialize for CustomResourceDefinition<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("CustomResourceDefinition", 3)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("spec", &self.spec())?;
      s.serialize_field("status", &self.status())?;
    s.end()
  }
}

pub struct CustomResourceDefinitionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> CustomResourceDefinitionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(CustomResourceDefinition::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_spec(&mut self, spec: flatbuffers::WIPOffset<CustomResourceDefinitionSpec<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<CustomResourceDefinitionSpec>>(CustomResourceDefinition::VT_SPEC, spec);
  }
  #[inline]
  pub fn add_status(&mut self, status: flatbuffers::WIPOffset<CustomResourceDefinitionStatus<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<CustomResourceDefinitionStatus>>(CustomResourceDefinition::VT_STATUS, status);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> CustomResourceDefinitionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    CustomResourceDefinitionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<CustomResourceDefinition<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for CustomResourceDefinition<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("CustomResourceDefinition");
      ds.field("metadata", &self.metadata());
      ds.field("spec", &self.spec());
      ds.field("status", &self.status());
      ds.finish()
  }
}

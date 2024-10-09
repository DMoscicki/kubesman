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
pub enum ResourceClaimParametersReferenceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ResourceClaimParametersReference<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ResourceClaimParametersReference<'a> {
  type Inner = ResourceClaimParametersReference<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ResourceClaimParametersReference<'a> {
  pub const VT_APIGROUP: flatbuffers::VOffsetT = 4;
  pub const VT_KIND: flatbuffers::VOffsetT = 6;
  pub const VT_NAME: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ResourceClaimParametersReference { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ResourceClaimParametersReferenceArgs<'args>
  ) -> flatbuffers::WIPOffset<ResourceClaimParametersReference<'bldr>> {
    let mut builder = ResourceClaimParametersReferenceBuilder::new(_fbb);
    if let Some(x) = args.name { builder.add_name(x); }
    if let Some(x) = args.kind { builder.add_kind(x); }
    if let Some(x) = args.apiGroup { builder.add_apiGroup(x); }
    builder.finish()
  }


  #[inline]
  pub fn apiGroup(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ResourceClaimParametersReference::VT_APIGROUP, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn kind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ResourceClaimParametersReference::VT_KIND, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ResourceClaimParametersReference::VT_NAME, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for ResourceClaimParametersReference<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("apiGroup", Self::VT_APIGROUP, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("kind", Self::VT_KIND, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .finish();
    Ok(())
  }
}
pub struct ResourceClaimParametersReferenceArgs<'a> {
    pub apiGroup: Option<flatbuffers::WIPOffset<&'a str>>,
    pub kind: Option<flatbuffers::WIPOffset<&'a str>>,
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for ResourceClaimParametersReferenceArgs<'a> {
  #[inline]
  fn default() -> Self {
    ResourceClaimParametersReferenceArgs {
      apiGroup: None,
      kind: None,
      name: None,
    }
  }
}

impl Serialize for ResourceClaimParametersReference<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ResourceClaimParametersReference", 3)?;
      s.serialize_field("apiGroup", &self.apiGroup())?;
      s.serialize_field("kind", &self.kind())?;
      s.serialize_field("name", &self.name())?;
    s.end()
  }
}

pub struct ResourceClaimParametersReferenceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ResourceClaimParametersReferenceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_apiGroup(&mut self, apiGroup: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ResourceClaimParametersReference::VT_APIGROUP, apiGroup);
  }
  #[inline]
  pub fn add_kind(&mut self, kind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ResourceClaimParametersReference::VT_KIND, kind);
  }
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ResourceClaimParametersReference::VT_NAME, name);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ResourceClaimParametersReferenceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ResourceClaimParametersReferenceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ResourceClaimParametersReference<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ResourceClaimParametersReference<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ResourceClaimParametersReference");
      ds.field("apiGroup", &self.apiGroup());
      ds.field("kind", &self.kind());
      ds.field("name", &self.name());
      ds.finish()
  }
}

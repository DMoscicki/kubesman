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
pub enum TypeMetaOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct TypeMeta<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for TypeMeta<'a> {
  type Inner = TypeMeta<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> TypeMeta<'a> {
  pub const VT_APIVERSION: flatbuffers::VOffsetT = 4;
  pub const VT_KIND: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    TypeMeta { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args TypeMetaArgs<'args>
  ) -> flatbuffers::WIPOffset<TypeMeta<'bldr>> {
    let mut builder = TypeMetaBuilder::new(_fbb);
    if let Some(x) = args.kind { builder.add_kind(x); }
    if let Some(x) = args.apiVersion { builder.add_apiVersion(x); }
    builder.finish()
  }


  #[inline]
  pub fn apiVersion(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(TypeMeta::VT_APIVERSION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn kind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(TypeMeta::VT_KIND, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for TypeMeta<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("apiVersion", Self::VT_APIVERSION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("kind", Self::VT_KIND, false)?
     .finish();
    Ok(())
  }
}
pub struct TypeMetaArgs<'a> {
    pub apiVersion: Option<flatbuffers::WIPOffset<&'a str>>,
    pub kind: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for TypeMetaArgs<'a> {
  #[inline]
  fn default() -> Self {
    TypeMetaArgs {
      apiVersion: None,
      kind: None,
    }
  }
}

impl Serialize for TypeMeta<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("TypeMeta", 2)?;
      s.serialize_field("apiVersion", &self.apiVersion())?;
      s.serialize_field("kind", &self.kind())?;
    s.end()
  }
}

pub struct TypeMetaBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> TypeMetaBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_apiVersion(&mut self, apiVersion: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(TypeMeta::VT_APIVERSION, apiVersion);
  }
  #[inline]
  pub fn add_kind(&mut self, kind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(TypeMeta::VT_KIND, kind);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> TypeMetaBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    TypeMetaBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<TypeMeta<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for TypeMeta<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("TypeMeta");
      ds.field("apiVersion", &self.apiVersion());
      ds.field("kind", &self.kind());
      ds.finish()
  }
}

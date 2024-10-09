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
pub enum TokenRequestSpecOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct TokenRequestSpec<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for TokenRequestSpec<'a> {
  type Inner = TokenRequestSpec<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> TokenRequestSpec<'a> {
  pub const VT_AUDIENCES: flatbuffers::VOffsetT = 4;
  pub const VT_EXPIRATIONSECONDS: flatbuffers::VOffsetT = 6;
  pub const VT_BOUNDOBJECTREF: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    TokenRequestSpec { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args TokenRequestSpecArgs<'args>
  ) -> flatbuffers::WIPOffset<TokenRequestSpec<'bldr>> {
    let mut builder = TokenRequestSpecBuilder::new(_fbb);
    builder.add_expirationSeconds(args.expirationSeconds);
    if let Some(x) = args.boundObjectRef { builder.add_boundObjectRef(x); }
    if let Some(x) = args.audiences { builder.add_audiences(x); }
    builder.finish()
  }


  #[inline]
  pub fn audiences(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(TokenRequestSpec::VT_AUDIENCES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn expirationSeconds(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(TokenRequestSpec::VT_EXPIRATIONSECONDS, Some(0)).unwrap()}
  }
  #[inline]
  pub fn boundObjectRef(&self) -> BoundObjectReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<BoundObjectReference>>(TokenRequestSpec::VT_BOUNDOBJECTREF, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for TokenRequestSpec<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("audiences", Self::VT_AUDIENCES, false)?
     .visit_field::<i64>("expirationSeconds", Self::VT_EXPIRATIONSECONDS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<BoundObjectReference>>("boundObjectRef", Self::VT_BOUNDOBJECTREF, false)?
     .finish();
    Ok(())
  }
}
pub struct TokenRequestSpecArgs<'a> {
    pub audiences: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub expirationSeconds: i64,
    pub boundObjectRef: Option<flatbuffers::WIPOffset<BoundObjectReference<'a>>>,
}
impl<'a> Default for TokenRequestSpecArgs<'a> {
  #[inline]
  fn default() -> Self {
    TokenRequestSpecArgs {
      audiences: None,
      expirationSeconds: 0,
      boundObjectRef: None,
    }
  }
}

impl Serialize for TokenRequestSpec<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("TokenRequestSpec", 3)?;
      s.serialize_field("audiences", &self.audiences())?;
      s.serialize_field("expirationSeconds", &self.expirationSeconds())?;
      s.serialize_field("boundObjectRef", &self.boundObjectRef())?;
    s.end()
  }
}

pub struct TokenRequestSpecBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> TokenRequestSpecBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_audiences(&mut self, audiences: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(TokenRequestSpec::VT_AUDIENCES, audiences);
  }
  #[inline]
  pub fn add_expirationSeconds(&mut self, expirationSeconds: i64) {
    self.fbb_.push_slot::<i64>(TokenRequestSpec::VT_EXPIRATIONSECONDS, expirationSeconds, 0);
  }
  #[inline]
  pub fn add_boundObjectRef(&mut self, boundObjectRef: flatbuffers::WIPOffset<BoundObjectReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<BoundObjectReference>>(TokenRequestSpec::VT_BOUNDOBJECTREF, boundObjectRef);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> TokenRequestSpecBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    TokenRequestSpecBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<TokenRequestSpec<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for TokenRequestSpec<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("TokenRequestSpec");
      ds.field("audiences", &self.audiences());
      ds.field("expirationSeconds", &self.expirationSeconds());
      ds.field("boundObjectRef", &self.boundObjectRef());
      ds.finish()
  }
}

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
pub enum SecretProjectionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct SecretProjection<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for SecretProjection<'a> {
  type Inner = SecretProjection<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> SecretProjection<'a> {
  pub const VT_LOCALOBJECTREFERENCE: flatbuffers::VOffsetT = 4;
  pub const VT_ITEMS: flatbuffers::VOffsetT = 6;
  pub const VT_OPTIONAL: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    SecretProjection { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args SecretProjectionArgs<'args>
  ) -> flatbuffers::WIPOffset<SecretProjection<'bldr>> {
    let mut builder = SecretProjectionBuilder::new(_fbb);
    if let Some(x) = args.items { builder.add_items(x); }
    if let Some(x) = args.localObjectReference { builder.add_localObjectReference(x); }
    builder.add_optional(args.optional);
    builder.finish()
  }


  #[inline]
  pub fn localObjectReference(&self) -> LocalObjectReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<LocalObjectReference>>(SecretProjection::VT_LOCALOBJECTREFERENCE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn items(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<KeyToPath<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<KeyToPath>>>>(SecretProjection::VT_ITEMS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn optional(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(SecretProjection::VT_OPTIONAL, Some(false)).unwrap()}
  }
}

impl flatbuffers::Verifiable for SecretProjection<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<LocalObjectReference>>("localObjectReference", Self::VT_LOCALOBJECTREFERENCE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<KeyToPath>>>>("items", Self::VT_ITEMS, false)?
     .visit_field::<bool>("optional", Self::VT_OPTIONAL, false)?
     .finish();
    Ok(())
  }
}
pub struct SecretProjectionArgs<'a> {
    pub localObjectReference: Option<flatbuffers::WIPOffset<LocalObjectReference<'a>>>,
    pub items: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<KeyToPath<'a>>>>>,
    pub optional: bool,
}
impl<'a> Default for SecretProjectionArgs<'a> {
  #[inline]
  fn default() -> Self {
    SecretProjectionArgs {
      localObjectReference: None,
      items: None,
      optional: false,
    }
  }
}

impl Serialize for SecretProjection<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("SecretProjection", 3)?;
      s.serialize_field("localObjectReference", &self.localObjectReference())?;
      s.serialize_field("items", &self.items())?;
      s.serialize_field("optional", &self.optional())?;
    s.end()
  }
}

pub struct SecretProjectionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> SecretProjectionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_localObjectReference(&mut self, localObjectReference: flatbuffers::WIPOffset<LocalObjectReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<LocalObjectReference>>(SecretProjection::VT_LOCALOBJECTREFERENCE, localObjectReference);
  }
  #[inline]
  pub fn add_items(&mut self, items: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<KeyToPath<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SecretProjection::VT_ITEMS, items);
  }
  #[inline]
  pub fn add_optional(&mut self, optional: bool) {
    self.fbb_.push_slot::<bool>(SecretProjection::VT_OPTIONAL, optional, false);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> SecretProjectionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    SecretProjectionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<SecretProjection<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for SecretProjection<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("SecretProjection");
      ds.field("localObjectReference", &self.localObjectReference());
      ds.field("items", &self.items());
      ds.field("optional", &self.optional());
      ds.finish()
  }
}

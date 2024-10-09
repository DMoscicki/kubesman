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
pub enum OverheadEntryOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct OverheadEntry<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for OverheadEntry<'a> {
  type Inner = OverheadEntry<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> OverheadEntry<'a> {
  pub const VT_KEY: flatbuffers::VOffsetT = 4;
  pub const VT_VALUE: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    OverheadEntry { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args OverheadEntryArgs<'args>
  ) -> flatbuffers::WIPOffset<OverheadEntry<'bldr>> {
    let mut builder = OverheadEntryBuilder::new(_fbb);
    if let Some(x) = args.value { builder.add_value(x); }
    if let Some(x) = args.key { builder.add_key(x); }
    builder.finish()
  }


  #[inline]
  pub fn key(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(OverheadEntry::VT_KEY, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn key_compare_less_than(&self, o: &OverheadEntry) -> bool {
    self.key() < o.key()
  }

  #[inline]
  pub fn key_compare_with_value(&self, val: & str) -> ::core::cmp::Ordering {
    let key = self.key();
    key.cmp(val)
  }
  #[inline]
  pub fn value(&self) -> super::super::super::super::apimachinery::pkg::api::resource::Quantity<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::super::apimachinery::pkg::api::resource::Quantity>>(OverheadEntry::VT_VALUE, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for OverheadEntry<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("key", Self::VT_KEY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::super::apimachinery::pkg::api::resource::Quantity>>("value", Self::VT_VALUE, false)?
     .finish();
    Ok(())
  }
}
pub struct OverheadEntryArgs<'a> {
    pub key: Option<flatbuffers::WIPOffset<&'a str>>,
    pub value: Option<flatbuffers::WIPOffset<super::super::super::super::apimachinery::pkg::api::resource::Quantity<'a>>>,
}
impl<'a> Default for OverheadEntryArgs<'a> {
  #[inline]
  fn default() -> Self {
    OverheadEntryArgs {
      key: None,
      value: None,
    }
  }
}

impl Serialize for OverheadEntry<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("OverheadEntry", 2)?;
      s.serialize_field("key", &self.key())?;
      s.serialize_field("value", &self.value())?;
    s.end()
  }
}

pub struct OverheadEntryBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> OverheadEntryBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_key(&mut self, key: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(OverheadEntry::VT_KEY, key);
  }
  #[inline]
  pub fn add_value(&mut self, value: flatbuffers::WIPOffset<super::super::super::super::apimachinery::pkg::api::resource::Quantity<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::super::apimachinery::pkg::api::resource::Quantity>>(OverheadEntry::VT_VALUE, value);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> OverheadEntryBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    OverheadEntryBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<OverheadEntry<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for OverheadEntry<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("OverheadEntry");
      ds.field("key", &self.key());
      ds.field("value", &self.value());
      ds.finish()
  }
}

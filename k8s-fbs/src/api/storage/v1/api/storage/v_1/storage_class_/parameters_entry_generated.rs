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
pub enum ParametersEntryOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ParametersEntry<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ParametersEntry<'a> {
  type Inner = ParametersEntry<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ParametersEntry<'a> {
  pub const VT_KEY: flatbuffers::VOffsetT = 4;
  pub const VT_VALUE: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ParametersEntry { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ParametersEntryArgs<'args>
  ) -> flatbuffers::WIPOffset<ParametersEntry<'bldr>> {
    let mut builder = ParametersEntryBuilder::new(_fbb);
    if let Some(x) = args.value { builder.add_value(x); }
    if let Some(x) = args.key { builder.add_key(x); }
    builder.finish()
  }


  #[inline]
  pub fn key(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ParametersEntry::VT_KEY, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn key_compare_less_than(&self, o: &ParametersEntry) -> bool {
    self.key() < o.key()
  }

  #[inline]
  pub fn key_compare_with_value(&self, val: & str) -> ::core::cmp::Ordering {
    let key = self.key();
    key.cmp(val)
  }
  #[inline]
  pub fn value(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ParametersEntry::VT_VALUE, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for ParametersEntry<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("key", Self::VT_KEY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("value", Self::VT_VALUE, false)?
     .finish();
    Ok(())
  }
}
pub struct ParametersEntryArgs<'a> {
    pub key: Option<flatbuffers::WIPOffset<&'a str>>,
    pub value: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for ParametersEntryArgs<'a> {
  #[inline]
  fn default() -> Self {
    ParametersEntryArgs {
      key: None,
      value: None,
    }
  }
}

impl Serialize for ParametersEntry<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ParametersEntry", 2)?;
      s.serialize_field("key", &self.key())?;
      s.serialize_field("value", &self.value())?;
    s.end()
  }
}

pub struct ParametersEntryBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ParametersEntryBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_key(&mut self, key: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ParametersEntry::VT_KEY, key);
  }
  #[inline]
  pub fn add_value(&mut self, value: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ParametersEntry::VT_VALUE, value);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ParametersEntryBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ParametersEntryBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ParametersEntry<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ParametersEntry<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ParametersEntry");
      ds.field("key", &self.key());
      ds.field("value", &self.value());
      ds.finish()
  }
}

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
pub enum PropertiesEntryOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PropertiesEntry<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PropertiesEntry<'a> {
  type Inner = PropertiesEntry<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PropertiesEntry<'a> {
  pub const VT_KEY: flatbuffers::VOffsetT = 4;
  pub const VT_VALUE: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PropertiesEntry { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PropertiesEntryArgs<'args>
  ) -> flatbuffers::WIPOffset<PropertiesEntry<'bldr>> {
    let mut builder = PropertiesEntryBuilder::new(_fbb);
    if let Some(x) = args.value { builder.add_value(x); }
    if let Some(x) = args.key { builder.add_key(x); }
    builder.finish()
  }


  #[inline]
  pub fn key(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PropertiesEntry::VT_KEY, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn key_compare_less_than(&self, o: &PropertiesEntry) -> bool {
    self.key() < o.key()
  }

  #[inline]
  pub fn key_compare_with_value(&self, val: & str) -> ::core::cmp::Ordering {
    let key = self.key();
    key.cmp(val)
  }
  #[inline]
  pub fn value(&self) -> super::JSONSchemaProps<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::JSONSchemaProps>>(PropertiesEntry::VT_VALUE, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PropertiesEntry<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("key", Self::VT_KEY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::JSONSchemaProps>>("value", Self::VT_VALUE, false)?
     .finish();
    Ok(())
  }
}
pub struct PropertiesEntryArgs<'a> {
    pub key: Option<flatbuffers::WIPOffset<&'a str>>,
    pub value: Option<flatbuffers::WIPOffset<super::JSONSchemaProps<'a>>>,
}
impl<'a> Default for PropertiesEntryArgs<'a> {
  #[inline]
  fn default() -> Self {
    PropertiesEntryArgs {
      key: None,
      value: None,
    }
  }
}

impl Serialize for PropertiesEntry<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PropertiesEntry", 2)?;
      s.serialize_field("key", &self.key())?;
      s.serialize_field("value", &self.value())?;
    s.end()
  }
}

pub struct PropertiesEntryBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PropertiesEntryBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_key(&mut self, key: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PropertiesEntry::VT_KEY, key);
  }
  #[inline]
  pub fn add_value(&mut self, value: flatbuffers::WIPOffset<super::JSONSchemaProps<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::JSONSchemaProps>>(PropertiesEntry::VT_VALUE, value);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PropertiesEntryBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PropertiesEntryBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PropertiesEntry<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PropertiesEntry<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PropertiesEntry");
      ds.field("key", &self.key());
      ds.field("value", &self.value());
      ds.finish()
  }
}

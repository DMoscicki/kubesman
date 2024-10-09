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
pub enum HTTPHeaderOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct HTTPHeader<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for HTTPHeader<'a> {
  type Inner = HTTPHeader<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> HTTPHeader<'a> {
  pub const VT_NAME: flatbuffers::VOffsetT = 4;
  pub const VT_VALUE: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    HTTPHeader { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args HTTPHeaderArgs<'args>
  ) -> flatbuffers::WIPOffset<HTTPHeader<'bldr>> {
    let mut builder = HTTPHeaderBuilder::new(_fbb);
    if let Some(x) = args.value { builder.add_value(x); }
    if let Some(x) = args.name { builder.add_name(x); }
    builder.finish()
  }


  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(HTTPHeader::VT_NAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn value(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(HTTPHeader::VT_VALUE, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for HTTPHeader<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("value", Self::VT_VALUE, false)?
     .finish();
    Ok(())
  }
}
pub struct HTTPHeaderArgs<'a> {
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
    pub value: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for HTTPHeaderArgs<'a> {
  #[inline]
  fn default() -> Self {
    HTTPHeaderArgs {
      name: None,
      value: None,
    }
  }
}

impl Serialize for HTTPHeader<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("HTTPHeader", 2)?;
      s.serialize_field("name", &self.name())?;
      s.serialize_field("value", &self.value())?;
    s.end()
  }
}

pub struct HTTPHeaderBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> HTTPHeaderBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPHeader::VT_NAME, name);
  }
  #[inline]
  pub fn add_value(&mut self, value: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPHeader::VT_VALUE, value);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> HTTPHeaderBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    HTTPHeaderBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<HTTPHeader<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for HTTPHeader<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("HTTPHeader");
      ds.field("name", &self.name());
      ds.field("value", &self.value());
      ds.finish()
  }
}

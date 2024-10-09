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
pub enum NodeAddressOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct NodeAddress<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for NodeAddress<'a> {
  type Inner = NodeAddress<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> NodeAddress<'a> {
  pub const VT_TYPE_: flatbuffers::VOffsetT = 4;
  pub const VT_ADDRESS: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    NodeAddress { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args NodeAddressArgs<'args>
  ) -> flatbuffers::WIPOffset<NodeAddress<'bldr>> {
    let mut builder = NodeAddressBuilder::new(_fbb);
    if let Some(x) = args.address { builder.add_address(x); }
    if let Some(x) = args.type_ { builder.add_type_(x); }
    builder.finish()
  }


  #[inline]
  pub fn type_(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(NodeAddress::VT_TYPE_, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn address(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(NodeAddress::VT_ADDRESS, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for NodeAddress<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("type_", Self::VT_TYPE_, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("address", Self::VT_ADDRESS, false)?
     .finish();
    Ok(())
  }
}
pub struct NodeAddressArgs<'a> {
    pub type_: Option<flatbuffers::WIPOffset<&'a str>>,
    pub address: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for NodeAddressArgs<'a> {
  #[inline]
  fn default() -> Self {
    NodeAddressArgs {
      type_: None,
      address: None,
    }
  }
}

impl Serialize for NodeAddress<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("NodeAddress", 2)?;
      s.serialize_field("type_", &self.type_())?;
      s.serialize_field("address", &self.address())?;
    s.end()
  }
}

pub struct NodeAddressBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> NodeAddressBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_type_(&mut self, type_: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeAddress::VT_TYPE_, type_);
  }
  #[inline]
  pub fn add_address(&mut self, address: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeAddress::VT_ADDRESS, address);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> NodeAddressBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    NodeAddressBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<NodeAddress<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for NodeAddress<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("NodeAddress");
      ds.field("type_", &self.type_());
      ds.field("address", &self.address());
      ds.finish()
  }
}

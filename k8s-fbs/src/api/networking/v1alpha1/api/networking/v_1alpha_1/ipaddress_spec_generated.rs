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
pub enum IPAddressSpecOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct IPAddressSpec<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for IPAddressSpec<'a> {
  type Inner = IPAddressSpec<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> IPAddressSpec<'a> {
  pub const VT_PARENTREF: flatbuffers::VOffsetT = 4;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    IPAddressSpec { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args IPAddressSpecArgs<'args>
  ) -> flatbuffers::WIPOffset<IPAddressSpec<'bldr>> {
    let mut builder = IPAddressSpecBuilder::new(_fbb);
    if let Some(x) = args.parentRef { builder.add_parentRef(x); }
    builder.finish()
  }


  #[inline]
  pub fn parentRef(&self) -> ParentReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ParentReference>>(IPAddressSpec::VT_PARENTREF, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for IPAddressSpec<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<ParentReference>>("parentRef", Self::VT_PARENTREF, false)?
     .finish();
    Ok(())
  }
}
pub struct IPAddressSpecArgs<'a> {
    pub parentRef: Option<flatbuffers::WIPOffset<ParentReference<'a>>>,
}
impl<'a> Default for IPAddressSpecArgs<'a> {
  #[inline]
  fn default() -> Self {
    IPAddressSpecArgs {
      parentRef: None,
    }
  }
}

impl Serialize for IPAddressSpec<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("IPAddressSpec", 1)?;
      s.serialize_field("parentRef", &self.parentRef())?;
    s.end()
  }
}

pub struct IPAddressSpecBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> IPAddressSpecBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_parentRef(&mut self, parentRef: flatbuffers::WIPOffset<ParentReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ParentReference>>(IPAddressSpec::VT_PARENTREF, parentRef);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> IPAddressSpecBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    IPAddressSpecBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<IPAddressSpec<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for IPAddressSpec<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("IPAddressSpec");
      ds.field("parentRef", &self.parentRef());
      ds.finish()
  }
}

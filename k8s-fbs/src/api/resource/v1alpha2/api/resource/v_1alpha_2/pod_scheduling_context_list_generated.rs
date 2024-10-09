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
pub enum PodSchedulingContextListOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodSchedulingContextList<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodSchedulingContextList<'a> {
  type Inner = PodSchedulingContextList<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodSchedulingContextList<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_ITEMS: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodSchedulingContextList { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodSchedulingContextListArgs<'args>
  ) -> flatbuffers::WIPOffset<PodSchedulingContextList<'bldr>> {
    let mut builder = PodSchedulingContextListBuilder::new(_fbb);
    if let Some(x) = args.items { builder.add_items(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>(PodSchedulingContextList::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn items(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodSchedulingContext<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodSchedulingContext>>>>(PodSchedulingContextList::VT_ITEMS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodSchedulingContextList<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<PodSchedulingContext>>>>("items", Self::VT_ITEMS, false)?
     .finish();
    Ok(())
  }
}
pub struct PodSchedulingContextListArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'a>>>,
    pub items: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodSchedulingContext<'a>>>>>,
}
impl<'a> Default for PodSchedulingContextListArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodSchedulingContextListArgs {
      metadata: None,
      items: None,
    }
  }
}

impl Serialize for PodSchedulingContextList<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodSchedulingContextList", 2)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("items", &self.items())?;
    s.end()
  }
}

pub struct PodSchedulingContextListBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodSchedulingContextListBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>(PodSchedulingContextList::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_items(&mut self, items: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<PodSchedulingContext<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodSchedulingContextList::VT_ITEMS, items);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodSchedulingContextListBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodSchedulingContextListBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodSchedulingContextList<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodSchedulingContextList<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodSchedulingContextList");
      ds.field("metadata", &self.metadata());
      ds.field("items", &self.items());
      ds.finish()
  }
}

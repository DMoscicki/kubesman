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
pub enum MutatingWebhookConfigurationListOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct MutatingWebhookConfigurationList<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for MutatingWebhookConfigurationList<'a> {
  type Inner = MutatingWebhookConfigurationList<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> MutatingWebhookConfigurationList<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_ITEMS: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    MutatingWebhookConfigurationList { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args MutatingWebhookConfigurationListArgs<'args>
  ) -> flatbuffers::WIPOffset<MutatingWebhookConfigurationList<'bldr>> {
    let mut builder = MutatingWebhookConfigurationListBuilder::new(_fbb);
    if let Some(x) = args.items { builder.add_items(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>(MutatingWebhookConfigurationList::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn items(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<MutatingWebhookConfiguration<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<MutatingWebhookConfiguration>>>>(MutatingWebhookConfigurationList::VT_ITEMS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for MutatingWebhookConfigurationList<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<MutatingWebhookConfiguration>>>>("items", Self::VT_ITEMS, false)?
     .finish();
    Ok(())
  }
}
pub struct MutatingWebhookConfigurationListArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'a>>>,
    pub items: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<MutatingWebhookConfiguration<'a>>>>>,
}
impl<'a> Default for MutatingWebhookConfigurationListArgs<'a> {
  #[inline]
  fn default() -> Self {
    MutatingWebhookConfigurationListArgs {
      metadata: None,
      items: None,
    }
  }
}

impl Serialize for MutatingWebhookConfigurationList<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("MutatingWebhookConfigurationList", 2)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("items", &self.items())?;
    s.end()
  }
}

pub struct MutatingWebhookConfigurationListBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> MutatingWebhookConfigurationListBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ListMeta>>(MutatingWebhookConfigurationList::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_items(&mut self, items: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<MutatingWebhookConfiguration<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(MutatingWebhookConfigurationList::VT_ITEMS, items);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> MutatingWebhookConfigurationListBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    MutatingWebhookConfigurationListBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<MutatingWebhookConfigurationList<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for MutatingWebhookConfigurationList<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("MutatingWebhookConfigurationList");
      ds.field("metadata", &self.metadata());
      ds.field("items", &self.items());
      ds.finish()
  }
}

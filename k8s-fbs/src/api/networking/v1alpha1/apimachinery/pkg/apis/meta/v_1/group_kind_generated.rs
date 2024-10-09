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
pub enum GroupKindOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct GroupKind<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for GroupKind<'a> {
  type Inner = GroupKind<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> GroupKind<'a> {
  pub const VT_GROUP: flatbuffers::VOffsetT = 4;
  pub const VT_KIND: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    GroupKind { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args GroupKindArgs<'args>
  ) -> flatbuffers::WIPOffset<GroupKind<'bldr>> {
    let mut builder = GroupKindBuilder::new(_fbb);
    if let Some(x) = args.kind { builder.add_kind(x); }
    if let Some(x) = args.group { builder.add_group(x); }
    builder.finish()
  }


  #[inline]
  pub fn group(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(GroupKind::VT_GROUP, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn kind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(GroupKind::VT_KIND, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for GroupKind<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("group", Self::VT_GROUP, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("kind", Self::VT_KIND, false)?
     .finish();
    Ok(())
  }
}
pub struct GroupKindArgs<'a> {
    pub group: Option<flatbuffers::WIPOffset<&'a str>>,
    pub kind: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for GroupKindArgs<'a> {
  #[inline]
  fn default() -> Self {
    GroupKindArgs {
      group: None,
      kind: None,
    }
  }
}

impl Serialize for GroupKind<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("GroupKind", 2)?;
      s.serialize_field("group", &self.group())?;
      s.serialize_field("kind", &self.kind())?;
    s.end()
  }
}

pub struct GroupKindBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> GroupKindBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_group(&mut self, group: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(GroupKind::VT_GROUP, group);
  }
  #[inline]
  pub fn add_kind(&mut self, kind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(GroupKind::VT_KIND, kind);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> GroupKindBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    GroupKindBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<GroupKind<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for GroupKind<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("GroupKind");
      ds.field("group", &self.group());
      ds.field("kind", &self.kind());
      ds.finish()
  }
}

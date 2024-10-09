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
pub enum FCVolumeSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct FCVolumeSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for FCVolumeSource<'a> {
  type Inner = FCVolumeSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> FCVolumeSource<'a> {
  pub const VT_TARGETWWNS: flatbuffers::VOffsetT = 4;
  pub const VT_LUN: flatbuffers::VOffsetT = 6;
  pub const VT_FSTYPE: flatbuffers::VOffsetT = 8;
  pub const VT_READONLY: flatbuffers::VOffsetT = 10;
  pub const VT_WWIDS: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    FCVolumeSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args FCVolumeSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<FCVolumeSource<'bldr>> {
    let mut builder = FCVolumeSourceBuilder::new(_fbb);
    if let Some(x) = args.wwids { builder.add_wwids(x); }
    if let Some(x) = args.fsType { builder.add_fsType(x); }
    builder.add_lun(args.lun);
    if let Some(x) = args.targetWWNs { builder.add_targetWWNs(x); }
    builder.add_readOnly(args.readOnly);
    builder.finish()
  }


  #[inline]
  pub fn targetWWNs(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(FCVolumeSource::VT_TARGETWWNS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn lun(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(FCVolumeSource::VT_LUN, Some(0)).unwrap()}
  }
  #[inline]
  pub fn fsType(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(FCVolumeSource::VT_FSTYPE, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn readOnly(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(FCVolumeSource::VT_READONLY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn wwids(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(FCVolumeSource::VT_WWIDS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for FCVolumeSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("targetWWNs", Self::VT_TARGETWWNS, false)?
     .visit_field::<i32>("lun", Self::VT_LUN, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fsType", Self::VT_FSTYPE, false)?
     .visit_field::<bool>("readOnly", Self::VT_READONLY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("wwids", Self::VT_WWIDS, false)?
     .finish();
    Ok(())
  }
}
pub struct FCVolumeSourceArgs<'a> {
    pub targetWWNs: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub lun: i32,
    pub fsType: Option<flatbuffers::WIPOffset<&'a str>>,
    pub readOnly: bool,
    pub wwids: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
}
impl<'a> Default for FCVolumeSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    FCVolumeSourceArgs {
      targetWWNs: None,
      lun: 0,
      fsType: None,
      readOnly: false,
      wwids: None,
    }
  }
}

impl Serialize for FCVolumeSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("FCVolumeSource", 5)?;
      s.serialize_field("targetWWNs", &self.targetWWNs())?;
      s.serialize_field("lun", &self.lun())?;
      s.serialize_field("fsType", &self.fsType())?;
      s.serialize_field("readOnly", &self.readOnly())?;
      s.serialize_field("wwids", &self.wwids())?;
    s.end()
  }
}

pub struct FCVolumeSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> FCVolumeSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_targetWWNs(&mut self, targetWWNs: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FCVolumeSource::VT_TARGETWWNS, targetWWNs);
  }
  #[inline]
  pub fn add_lun(&mut self, lun: i32) {
    self.fbb_.push_slot::<i32>(FCVolumeSource::VT_LUN, lun, 0);
  }
  #[inline]
  pub fn add_fsType(&mut self, fsType: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FCVolumeSource::VT_FSTYPE, fsType);
  }
  #[inline]
  pub fn add_readOnly(&mut self, readOnly: bool) {
    self.fbb_.push_slot::<bool>(FCVolumeSource::VT_READONLY, readOnly, false);
  }
  #[inline]
  pub fn add_wwids(&mut self, wwids: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FCVolumeSource::VT_WWIDS, wwids);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> FCVolumeSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    FCVolumeSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<FCVolumeSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for FCVolumeSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("FCVolumeSource");
      ds.field("targetWWNs", &self.targetWWNs());
      ds.field("lun", &self.lun());
      ds.field("fsType", &self.fsType());
      ds.field("readOnly", &self.readOnly());
      ds.field("wwids", &self.wwids());
      ds.finish()
  }
}

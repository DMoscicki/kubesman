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
pub enum ISCSIVolumeSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ISCSIVolumeSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ISCSIVolumeSource<'a> {
  type Inner = ISCSIVolumeSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ISCSIVolumeSource<'a> {
  pub const VT_TARGETPORTAL: flatbuffers::VOffsetT = 4;
  pub const VT_IQN: flatbuffers::VOffsetT = 6;
  pub const VT_LUN: flatbuffers::VOffsetT = 8;
  pub const VT_ISCSIINTERFACE: flatbuffers::VOffsetT = 10;
  pub const VT_FSTYPE: flatbuffers::VOffsetT = 12;
  pub const VT_READONLY: flatbuffers::VOffsetT = 14;
  pub const VT_PORTALS: flatbuffers::VOffsetT = 16;
  pub const VT_CHAPAUTHDISCOVERY: flatbuffers::VOffsetT = 18;
  pub const VT_CHAPAUTHSESSION: flatbuffers::VOffsetT = 20;
  pub const VT_SECRETREF: flatbuffers::VOffsetT = 22;
  pub const VT_INITIATORNAME: flatbuffers::VOffsetT = 24;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ISCSIVolumeSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ISCSIVolumeSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<ISCSIVolumeSource<'bldr>> {
    let mut builder = ISCSIVolumeSourceBuilder::new(_fbb);
    if let Some(x) = args.initiatorName { builder.add_initiatorName(x); }
    if let Some(x) = args.secretRef { builder.add_secretRef(x); }
    if let Some(x) = args.portals { builder.add_portals(x); }
    if let Some(x) = args.fsType { builder.add_fsType(x); }
    if let Some(x) = args.iscsiInterface { builder.add_iscsiInterface(x); }
    builder.add_lun(args.lun);
    if let Some(x) = args.iqn { builder.add_iqn(x); }
    if let Some(x) = args.targetPortal { builder.add_targetPortal(x); }
    builder.add_chapAuthSession(args.chapAuthSession);
    builder.add_chapAuthDiscovery(args.chapAuthDiscovery);
    builder.add_readOnly(args.readOnly);
    builder.finish()
  }


  #[inline]
  pub fn targetPortal(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ISCSIVolumeSource::VT_TARGETPORTAL, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn iqn(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ISCSIVolumeSource::VT_IQN, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn lun(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(ISCSIVolumeSource::VT_LUN, Some(0)).unwrap()}
  }
  #[inline]
  pub fn iscsiInterface(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ISCSIVolumeSource::VT_ISCSIINTERFACE, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn fsType(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ISCSIVolumeSource::VT_FSTYPE, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn readOnly(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(ISCSIVolumeSource::VT_READONLY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn portals(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(ISCSIVolumeSource::VT_PORTALS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn chapAuthDiscovery(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(ISCSIVolumeSource::VT_CHAPAUTHDISCOVERY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn chapAuthSession(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(ISCSIVolumeSource::VT_CHAPAUTHSESSION, Some(false)).unwrap()}
  }
  #[inline]
  pub fn secretRef(&self) -> LocalObjectReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<LocalObjectReference>>(ISCSIVolumeSource::VT_SECRETREF, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn initiatorName(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(ISCSIVolumeSource::VT_INITIATORNAME, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for ISCSIVolumeSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("targetPortal", Self::VT_TARGETPORTAL, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("iqn", Self::VT_IQN, false)?
     .visit_field::<i32>("lun", Self::VT_LUN, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("iscsiInterface", Self::VT_ISCSIINTERFACE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fsType", Self::VT_FSTYPE, false)?
     .visit_field::<bool>("readOnly", Self::VT_READONLY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("portals", Self::VT_PORTALS, false)?
     .visit_field::<bool>("chapAuthDiscovery", Self::VT_CHAPAUTHDISCOVERY, false)?
     .visit_field::<bool>("chapAuthSession", Self::VT_CHAPAUTHSESSION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<LocalObjectReference>>("secretRef", Self::VT_SECRETREF, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("initiatorName", Self::VT_INITIATORNAME, false)?
     .finish();
    Ok(())
  }
}
pub struct ISCSIVolumeSourceArgs<'a> {
    pub targetPortal: Option<flatbuffers::WIPOffset<&'a str>>,
    pub iqn: Option<flatbuffers::WIPOffset<&'a str>>,
    pub lun: i32,
    pub iscsiInterface: Option<flatbuffers::WIPOffset<&'a str>>,
    pub fsType: Option<flatbuffers::WIPOffset<&'a str>>,
    pub readOnly: bool,
    pub portals: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub chapAuthDiscovery: bool,
    pub chapAuthSession: bool,
    pub secretRef: Option<flatbuffers::WIPOffset<LocalObjectReference<'a>>>,
    pub initiatorName: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for ISCSIVolumeSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    ISCSIVolumeSourceArgs {
      targetPortal: None,
      iqn: None,
      lun: 0,
      iscsiInterface: None,
      fsType: None,
      readOnly: false,
      portals: None,
      chapAuthDiscovery: false,
      chapAuthSession: false,
      secretRef: None,
      initiatorName: None,
    }
  }
}

impl Serialize for ISCSIVolumeSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ISCSIVolumeSource", 11)?;
      s.serialize_field("targetPortal", &self.targetPortal())?;
      s.serialize_field("iqn", &self.iqn())?;
      s.serialize_field("lun", &self.lun())?;
      s.serialize_field("iscsiInterface", &self.iscsiInterface())?;
      s.serialize_field("fsType", &self.fsType())?;
      s.serialize_field("readOnly", &self.readOnly())?;
      s.serialize_field("portals", &self.portals())?;
      s.serialize_field("chapAuthDiscovery", &self.chapAuthDiscovery())?;
      s.serialize_field("chapAuthSession", &self.chapAuthSession())?;
      s.serialize_field("secretRef", &self.secretRef())?;
      s.serialize_field("initiatorName", &self.initiatorName())?;
    s.end()
  }
}

pub struct ISCSIVolumeSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ISCSIVolumeSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_targetPortal(&mut self, targetPortal: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_TARGETPORTAL, targetPortal);
  }
  #[inline]
  pub fn add_iqn(&mut self, iqn: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_IQN, iqn);
  }
  #[inline]
  pub fn add_lun(&mut self, lun: i32) {
    self.fbb_.push_slot::<i32>(ISCSIVolumeSource::VT_LUN, lun, 0);
  }
  #[inline]
  pub fn add_iscsiInterface(&mut self, iscsiInterface: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_ISCSIINTERFACE, iscsiInterface);
  }
  #[inline]
  pub fn add_fsType(&mut self, fsType: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_FSTYPE, fsType);
  }
  #[inline]
  pub fn add_readOnly(&mut self, readOnly: bool) {
    self.fbb_.push_slot::<bool>(ISCSIVolumeSource::VT_READONLY, readOnly, false);
  }
  #[inline]
  pub fn add_portals(&mut self, portals: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_PORTALS, portals);
  }
  #[inline]
  pub fn add_chapAuthDiscovery(&mut self, chapAuthDiscovery: bool) {
    self.fbb_.push_slot::<bool>(ISCSIVolumeSource::VT_CHAPAUTHDISCOVERY, chapAuthDiscovery, false);
  }
  #[inline]
  pub fn add_chapAuthSession(&mut self, chapAuthSession: bool) {
    self.fbb_.push_slot::<bool>(ISCSIVolumeSource::VT_CHAPAUTHSESSION, chapAuthSession, false);
  }
  #[inline]
  pub fn add_secretRef(&mut self, secretRef: flatbuffers::WIPOffset<LocalObjectReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<LocalObjectReference>>(ISCSIVolumeSource::VT_SECRETREF, secretRef);
  }
  #[inline]
  pub fn add_initiatorName(&mut self, initiatorName: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ISCSIVolumeSource::VT_INITIATORNAME, initiatorName);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ISCSIVolumeSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ISCSIVolumeSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ISCSIVolumeSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ISCSIVolumeSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ISCSIVolumeSource");
      ds.field("targetPortal", &self.targetPortal());
      ds.field("iqn", &self.iqn());
      ds.field("lun", &self.lun());
      ds.field("iscsiInterface", &self.iscsiInterface());
      ds.field("fsType", &self.fsType());
      ds.field("readOnly", &self.readOnly());
      ds.field("portals", &self.portals());
      ds.field("chapAuthDiscovery", &self.chapAuthDiscovery());
      ds.field("chapAuthSession", &self.chapAuthSession());
      ds.field("secretRef", &self.secretRef());
      ds.field("initiatorName", &self.initiatorName());
      ds.finish()
  }
}

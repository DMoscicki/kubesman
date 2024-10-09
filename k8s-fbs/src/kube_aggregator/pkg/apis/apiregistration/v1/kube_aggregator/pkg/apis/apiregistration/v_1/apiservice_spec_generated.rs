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
pub enum APIServiceSpecOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct APIServiceSpec<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for APIServiceSpec<'a> {
  type Inner = APIServiceSpec<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> APIServiceSpec<'a> {
  pub const VT_SERVICE: flatbuffers::VOffsetT = 4;
  pub const VT_GROUP: flatbuffers::VOffsetT = 6;
  pub const VT_VERSION: flatbuffers::VOffsetT = 8;
  pub const VT_INSECURESKIPTLSVERIFY: flatbuffers::VOffsetT = 10;
  pub const VT_CABUNDLE: flatbuffers::VOffsetT = 12;
  pub const VT_GROUPPRIORITYMINIMUM: flatbuffers::VOffsetT = 14;
  pub const VT_VERSIONPRIORITY: flatbuffers::VOffsetT = 16;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    APIServiceSpec { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args APIServiceSpecArgs<'args>
  ) -> flatbuffers::WIPOffset<APIServiceSpec<'bldr>> {
    let mut builder = APIServiceSpecBuilder::new(_fbb);
    builder.add_versionPriority(args.versionPriority);
    builder.add_groupPriorityMinimum(args.groupPriorityMinimum);
    if let Some(x) = args.caBundle { builder.add_caBundle(x); }
    if let Some(x) = args.version { builder.add_version(x); }
    if let Some(x) = args.group { builder.add_group(x); }
    if let Some(x) = args.service { builder.add_service(x); }
    builder.add_insecureSkipTLSVerify(args.insecureSkipTLSVerify);
    builder.finish()
  }


  #[inline]
  pub fn service(&self) -> ServiceReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ServiceReference>>(APIServiceSpec::VT_SERVICE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn group(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIServiceSpec::VT_GROUP, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn version(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIServiceSpec::VT_VERSION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn insecureSkipTLSVerify(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(APIServiceSpec::VT_INSECURESKIPTLSVERIFY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn caBundle(&self) -> flatbuffers::Vector<'a, u8> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, u8>>>(APIServiceSpec::VT_CABUNDLE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn groupPriorityMinimum(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(APIServiceSpec::VT_GROUPPRIORITYMINIMUM, Some(0)).unwrap()}
  }
  #[inline]
  pub fn versionPriority(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(APIServiceSpec::VT_VERSIONPRIORITY, Some(0)).unwrap()}
  }
}

impl flatbuffers::Verifiable for APIServiceSpec<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<ServiceReference>>("service", Self::VT_SERVICE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("group", Self::VT_GROUP, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("version", Self::VT_VERSION, false)?
     .visit_field::<bool>("insecureSkipTLSVerify", Self::VT_INSECURESKIPTLSVERIFY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, u8>>>("caBundle", Self::VT_CABUNDLE, false)?
     .visit_field::<i32>("groupPriorityMinimum", Self::VT_GROUPPRIORITYMINIMUM, false)?
     .visit_field::<i32>("versionPriority", Self::VT_VERSIONPRIORITY, false)?
     .finish();
    Ok(())
  }
}
pub struct APIServiceSpecArgs<'a> {
    pub service: Option<flatbuffers::WIPOffset<ServiceReference<'a>>>,
    pub group: Option<flatbuffers::WIPOffset<&'a str>>,
    pub version: Option<flatbuffers::WIPOffset<&'a str>>,
    pub insecureSkipTLSVerify: bool,
    pub caBundle: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, u8>>>,
    pub groupPriorityMinimum: i32,
    pub versionPriority: i32,
}
impl<'a> Default for APIServiceSpecArgs<'a> {
  #[inline]
  fn default() -> Self {
    APIServiceSpecArgs {
      service: None,
      group: None,
      version: None,
      insecureSkipTLSVerify: false,
      caBundle: None,
      groupPriorityMinimum: 0,
      versionPriority: 0,
    }
  }
}

impl Serialize for APIServiceSpec<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("APIServiceSpec", 7)?;
      s.serialize_field("service", &self.service())?;
      s.serialize_field("group", &self.group())?;
      s.serialize_field("version", &self.version())?;
      s.serialize_field("insecureSkipTLSVerify", &self.insecureSkipTLSVerify())?;
      s.serialize_field("caBundle", &self.caBundle())?;
      s.serialize_field("groupPriorityMinimum", &self.groupPriorityMinimum())?;
      s.serialize_field("versionPriority", &self.versionPriority())?;
    s.end()
  }
}

pub struct APIServiceSpecBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> APIServiceSpecBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_service(&mut self, service: flatbuffers::WIPOffset<ServiceReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ServiceReference>>(APIServiceSpec::VT_SERVICE, service);
  }
  #[inline]
  pub fn add_group(&mut self, group: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIServiceSpec::VT_GROUP, group);
  }
  #[inline]
  pub fn add_version(&mut self, version: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIServiceSpec::VT_VERSION, version);
  }
  #[inline]
  pub fn add_insecureSkipTLSVerify(&mut self, insecureSkipTLSVerify: bool) {
    self.fbb_.push_slot::<bool>(APIServiceSpec::VT_INSECURESKIPTLSVERIFY, insecureSkipTLSVerify, false);
  }
  #[inline]
  pub fn add_caBundle(&mut self, caBundle: flatbuffers::WIPOffset<flatbuffers::Vector<'b , u8>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIServiceSpec::VT_CABUNDLE, caBundle);
  }
  #[inline]
  pub fn add_groupPriorityMinimum(&mut self, groupPriorityMinimum: i32) {
    self.fbb_.push_slot::<i32>(APIServiceSpec::VT_GROUPPRIORITYMINIMUM, groupPriorityMinimum, 0);
  }
  #[inline]
  pub fn add_versionPriority(&mut self, versionPriority: i32) {
    self.fbb_.push_slot::<i32>(APIServiceSpec::VT_VERSIONPRIORITY, versionPriority, 0);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> APIServiceSpecBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    APIServiceSpecBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<APIServiceSpec<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for APIServiceSpec<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("APIServiceSpec");
      ds.field("service", &self.service());
      ds.field("group", &self.group());
      ds.field("version", &self.version());
      ds.field("insecureSkipTLSVerify", &self.insecureSkipTLSVerify());
      ds.field("caBundle", &self.caBundle());
      ds.field("groupPriorityMinimum", &self.groupPriorityMinimum());
      ds.field("versionPriority", &self.versionPriority());
      ds.finish()
  }
}

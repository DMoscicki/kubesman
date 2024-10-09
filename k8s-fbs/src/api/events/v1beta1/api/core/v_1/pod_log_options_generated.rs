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
pub enum PodLogOptionsOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodLogOptions<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodLogOptions<'a> {
  type Inner = PodLogOptions<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodLogOptions<'a> {
  pub const VT_CONTAINER: flatbuffers::VOffsetT = 4;
  pub const VT_FOLLOW_: flatbuffers::VOffsetT = 6;
  pub const VT_PREVIOUS: flatbuffers::VOffsetT = 8;
  pub const VT_SINCESECONDS: flatbuffers::VOffsetT = 10;
  pub const VT_SINCETIME: flatbuffers::VOffsetT = 12;
  pub const VT_TIMESTAMPS: flatbuffers::VOffsetT = 14;
  pub const VT_TAILLINES: flatbuffers::VOffsetT = 16;
  pub const VT_LIMITBYTES: flatbuffers::VOffsetT = 18;
  pub const VT_INSECURESKIPTLSVERIFYBACKEND: flatbuffers::VOffsetT = 20;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodLogOptions { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodLogOptionsArgs<'args>
  ) -> flatbuffers::WIPOffset<PodLogOptions<'bldr>> {
    let mut builder = PodLogOptionsBuilder::new(_fbb);
    builder.add_limitBytes(args.limitBytes);
    builder.add_tailLines(args.tailLines);
    builder.add_sinceSeconds(args.sinceSeconds);
    if let Some(x) = args.sinceTime { builder.add_sinceTime(x); }
    if let Some(x) = args.container { builder.add_container(x); }
    builder.add_insecureSkipTLSVerifyBackend(args.insecureSkipTLSVerifyBackend);
    builder.add_timestamps(args.timestamps);
    builder.add_previous(args.previous);
    builder.add_follow_(args.follow_);
    builder.finish()
  }


  #[inline]
  pub fn container(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PodLogOptions::VT_CONTAINER, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn follow_(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodLogOptions::VT_FOLLOW_, Some(false)).unwrap()}
  }
  #[inline]
  pub fn previous(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodLogOptions::VT_PREVIOUS, Some(false)).unwrap()}
  }
  #[inline]
  pub fn sinceSeconds(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodLogOptions::VT_SINCESECONDS, Some(0)).unwrap()}
  }
  #[inline]
  pub fn sinceTime(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(PodLogOptions::VT_SINCETIME, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn timestamps(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodLogOptions::VT_TIMESTAMPS, Some(false)).unwrap()}
  }
  #[inline]
  pub fn tailLines(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodLogOptions::VT_TAILLINES, Some(0)).unwrap()}
  }
  #[inline]
  pub fn limitBytes(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodLogOptions::VT_LIMITBYTES, Some(0)).unwrap()}
  }
  #[inline]
  pub fn insecureSkipTLSVerifyBackend(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodLogOptions::VT_INSECURESKIPTLSVERIFYBACKEND, Some(false)).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodLogOptions<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("container", Self::VT_CONTAINER, false)?
     .visit_field::<bool>("follow_", Self::VT_FOLLOW_, false)?
     .visit_field::<bool>("previous", Self::VT_PREVIOUS, false)?
     .visit_field::<i64>("sinceSeconds", Self::VT_SINCESECONDS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>("sinceTime", Self::VT_SINCETIME, false)?
     .visit_field::<bool>("timestamps", Self::VT_TIMESTAMPS, false)?
     .visit_field::<i64>("tailLines", Self::VT_TAILLINES, false)?
     .visit_field::<i64>("limitBytes", Self::VT_LIMITBYTES, false)?
     .visit_field::<bool>("insecureSkipTLSVerifyBackend", Self::VT_INSECURESKIPTLSVERIFYBACKEND, false)?
     .finish();
    Ok(())
  }
}
pub struct PodLogOptionsArgs<'a> {
    pub container: Option<flatbuffers::WIPOffset<&'a str>>,
    pub follow_: bool,
    pub previous: bool,
    pub sinceSeconds: i64,
    pub sinceTime: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a>>>,
    pub timestamps: bool,
    pub tailLines: i64,
    pub limitBytes: i64,
    pub insecureSkipTLSVerifyBackend: bool,
}
impl<'a> Default for PodLogOptionsArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodLogOptionsArgs {
      container: None,
      follow_: false,
      previous: false,
      sinceSeconds: 0,
      sinceTime: None,
      timestamps: false,
      tailLines: 0,
      limitBytes: 0,
      insecureSkipTLSVerifyBackend: false,
    }
  }
}

impl Serialize for PodLogOptions<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodLogOptions", 9)?;
      s.serialize_field("container", &self.container())?;
      s.serialize_field("follow_", &self.follow_())?;
      s.serialize_field("previous", &self.previous())?;
      s.serialize_field("sinceSeconds", &self.sinceSeconds())?;
      s.serialize_field("sinceTime", &self.sinceTime())?;
      s.serialize_field("timestamps", &self.timestamps())?;
      s.serialize_field("tailLines", &self.tailLines())?;
      s.serialize_field("limitBytes", &self.limitBytes())?;
      s.serialize_field("insecureSkipTLSVerifyBackend", &self.insecureSkipTLSVerifyBackend())?;
    s.end()
  }
}

pub struct PodLogOptionsBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodLogOptionsBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_container(&mut self, container: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodLogOptions::VT_CONTAINER, container);
  }
  #[inline]
  pub fn add_follow_(&mut self, follow_: bool) {
    self.fbb_.push_slot::<bool>(PodLogOptions::VT_FOLLOW_, follow_, false);
  }
  #[inline]
  pub fn add_previous(&mut self, previous: bool) {
    self.fbb_.push_slot::<bool>(PodLogOptions::VT_PREVIOUS, previous, false);
  }
  #[inline]
  pub fn add_sinceSeconds(&mut self, sinceSeconds: i64) {
    self.fbb_.push_slot::<i64>(PodLogOptions::VT_SINCESECONDS, sinceSeconds, 0);
  }
  #[inline]
  pub fn add_sinceTime(&mut self, sinceTime: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(PodLogOptions::VT_SINCETIME, sinceTime);
  }
  #[inline]
  pub fn add_timestamps(&mut self, timestamps: bool) {
    self.fbb_.push_slot::<bool>(PodLogOptions::VT_TIMESTAMPS, timestamps, false);
  }
  #[inline]
  pub fn add_tailLines(&mut self, tailLines: i64) {
    self.fbb_.push_slot::<i64>(PodLogOptions::VT_TAILLINES, tailLines, 0);
  }
  #[inline]
  pub fn add_limitBytes(&mut self, limitBytes: i64) {
    self.fbb_.push_slot::<i64>(PodLogOptions::VT_LIMITBYTES, limitBytes, 0);
  }
  #[inline]
  pub fn add_insecureSkipTLSVerifyBackend(&mut self, insecureSkipTLSVerifyBackend: bool) {
    self.fbb_.push_slot::<bool>(PodLogOptions::VT_INSECURESKIPTLSVERIFYBACKEND, insecureSkipTLSVerifyBackend, false);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodLogOptionsBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodLogOptionsBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodLogOptions<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodLogOptions<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodLogOptions");
      ds.field("container", &self.container());
      ds.field("follow_", &self.follow_());
      ds.field("previous", &self.previous());
      ds.field("sinceSeconds", &self.sinceSeconds());
      ds.field("sinceTime", &self.sinceTime());
      ds.field("timestamps", &self.timestamps());
      ds.field("tailLines", &self.tailLines());
      ds.field("limitBytes", &self.limitBytes());
      ds.field("insecureSkipTLSVerifyBackend", &self.insecureSkipTLSVerifyBackend());
      ds.finish()
  }
}

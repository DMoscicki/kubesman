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
pub enum CronJobStatusOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct CronJobStatus<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for CronJobStatus<'a> {
  type Inner = CronJobStatus<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> CronJobStatus<'a> {
  pub const VT_ACTIVE: flatbuffers::VOffsetT = 4;
  pub const VT_LASTSCHEDULETIME: flatbuffers::VOffsetT = 6;
  pub const VT_LASTSUCCESSFULTIME: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    CronJobStatus { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args CronJobStatusArgs<'args>
  ) -> flatbuffers::WIPOffset<CronJobStatus<'bldr>> {
    let mut builder = CronJobStatusBuilder::new(_fbb);
    if let Some(x) = args.lastSuccessfulTime { builder.add_lastSuccessfulTime(x); }
    if let Some(x) = args.lastScheduleTime { builder.add_lastScheduleTime(x); }
    if let Some(x) = args.active { builder.add_active(x); }
    builder.finish()
  }


  #[inline]
  pub fn active(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::core::v_1::ObjectReference<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::core::v_1::ObjectReference>>>>(CronJobStatus::VT_ACTIVE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn lastScheduleTime(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(CronJobStatus::VT_LASTSCHEDULETIME, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn lastSuccessfulTime(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(CronJobStatus::VT_LASTSUCCESSFULTIME, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for CronJobStatus<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<super::super::core::v_1::ObjectReference>>>>("active", Self::VT_ACTIVE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>("lastScheduleTime", Self::VT_LASTSCHEDULETIME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>("lastSuccessfulTime", Self::VT_LASTSUCCESSFULTIME, false)?
     .finish();
    Ok(())
  }
}
pub struct CronJobStatusArgs<'a> {
    pub active: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::core::v_1::ObjectReference<'a>>>>>,
    pub lastScheduleTime: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a>>>,
    pub lastSuccessfulTime: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a>>>,
}
impl<'a> Default for CronJobStatusArgs<'a> {
  #[inline]
  fn default() -> Self {
    CronJobStatusArgs {
      active: None,
      lastScheduleTime: None,
      lastSuccessfulTime: None,
    }
  }
}

impl Serialize for CronJobStatus<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("CronJobStatus", 3)?;
      s.serialize_field("active", &self.active())?;
      s.serialize_field("lastScheduleTime", &self.lastScheduleTime())?;
      s.serialize_field("lastSuccessfulTime", &self.lastSuccessfulTime())?;
    s.end()
  }
}

pub struct CronJobStatusBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> CronJobStatusBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_active(&mut self, active: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<super::super::core::v_1::ObjectReference<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CronJobStatus::VT_ACTIVE, active);
  }
  #[inline]
  pub fn add_lastScheduleTime(&mut self, lastScheduleTime: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(CronJobStatus::VT_LASTSCHEDULETIME, lastScheduleTime);
  }
  #[inline]
  pub fn add_lastSuccessfulTime(&mut self, lastSuccessfulTime: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(CronJobStatus::VT_LASTSUCCESSFULTIME, lastSuccessfulTime);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> CronJobStatusBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    CronJobStatusBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<CronJobStatus<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for CronJobStatus<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("CronJobStatus");
      ds.field("active", &self.active());
      ds.field("lastScheduleTime", &self.lastScheduleTime());
      ds.field("lastSuccessfulTime", &self.lastSuccessfulTime());
      ds.finish()
  }
}

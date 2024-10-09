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
pub enum MigrationConditionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct MigrationCondition<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for MigrationCondition<'a> {
  type Inner = MigrationCondition<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> MigrationCondition<'a> {
  pub const VT_TYPE_: flatbuffers::VOffsetT = 4;
  pub const VT_STATUS: flatbuffers::VOffsetT = 6;
  pub const VT_LASTUPDATETIME: flatbuffers::VOffsetT = 8;
  pub const VT_REASON: flatbuffers::VOffsetT = 10;
  pub const VT_MESSAGE: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    MigrationCondition { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args MigrationConditionArgs<'args>
  ) -> flatbuffers::WIPOffset<MigrationCondition<'bldr>> {
    let mut builder = MigrationConditionBuilder::new(_fbb);
    if let Some(x) = args.message { builder.add_message(x); }
    if let Some(x) = args.reason { builder.add_reason(x); }
    if let Some(x) = args.lastUpdateTime { builder.add_lastUpdateTime(x); }
    if let Some(x) = args.status { builder.add_status(x); }
    if let Some(x) = args.type_ { builder.add_type_(x); }
    builder.finish()
  }


  #[inline]
  pub fn type_(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(MigrationCondition::VT_TYPE_, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn status(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(MigrationCondition::VT_STATUS, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn lastUpdateTime(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(MigrationCondition::VT_LASTUPDATETIME, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn reason(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(MigrationCondition::VT_REASON, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn message(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(MigrationCondition::VT_MESSAGE, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for MigrationCondition<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("type_", Self::VT_TYPE_, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("status", Self::VT_STATUS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>("lastUpdateTime", Self::VT_LASTUPDATETIME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("reason", Self::VT_REASON, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("message", Self::VT_MESSAGE, false)?
     .finish();
    Ok(())
  }
}
pub struct MigrationConditionArgs<'a> {
    pub type_: Option<flatbuffers::WIPOffset<&'a str>>,
    pub status: Option<flatbuffers::WIPOffset<&'a str>>,
    pub lastUpdateTime: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'a>>>,
    pub reason: Option<flatbuffers::WIPOffset<&'a str>>,
    pub message: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for MigrationConditionArgs<'a> {
  #[inline]
  fn default() -> Self {
    MigrationConditionArgs {
      type_: None,
      status: None,
      lastUpdateTime: None,
      reason: None,
      message: None,
    }
  }
}

impl Serialize for MigrationCondition<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("MigrationCondition", 5)?;
      s.serialize_field("type_", &self.type_())?;
      s.serialize_field("status", &self.status())?;
      s.serialize_field("lastUpdateTime", &self.lastUpdateTime())?;
      s.serialize_field("reason", &self.reason())?;
      s.serialize_field("message", &self.message())?;
    s.end()
  }
}

pub struct MigrationConditionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> MigrationConditionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_type_(&mut self, type_: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(MigrationCondition::VT_TYPE_, type_);
  }
  #[inline]
  pub fn add_status(&mut self, status: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(MigrationCondition::VT_STATUS, status);
  }
  #[inline]
  pub fn add_lastUpdateTime(&mut self, lastUpdateTime: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Time>>(MigrationCondition::VT_LASTUPDATETIME, lastUpdateTime);
  }
  #[inline]
  pub fn add_reason(&mut self, reason: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(MigrationCondition::VT_REASON, reason);
  }
  #[inline]
  pub fn add_message(&mut self, message: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(MigrationCondition::VT_MESSAGE, message);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> MigrationConditionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    MigrationConditionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<MigrationCondition<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for MigrationCondition<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("MigrationCondition");
      ds.field("type_", &self.type_());
      ds.field("status", &self.status());
      ds.field("lastUpdateTime", &self.lastUpdateTime());
      ds.field("reason", &self.reason());
      ds.field("message", &self.message());
      ds.finish()
  }
}

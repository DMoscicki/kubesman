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
pub enum MicroTimeOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct MicroTime<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for MicroTime<'a> {
  type Inner = MicroTime<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> MicroTime<'a> {
  pub const VT_SECONDS: flatbuffers::VOffsetT = 4;
  pub const VT_NANOS: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    MicroTime { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args MicroTimeArgs
  ) -> flatbuffers::WIPOffset<MicroTime<'bldr>> {
    let mut builder = MicroTimeBuilder::new(_fbb);
    builder.add_seconds(args.seconds);
    builder.add_nanos(args.nanos);
    builder.finish()
  }


  #[inline]
  pub fn seconds(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(MicroTime::VT_SECONDS, Some(0)).unwrap()}
  }
  #[inline]
  pub fn nanos(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(MicroTime::VT_NANOS, Some(0)).unwrap()}
  }
}

impl flatbuffers::Verifiable for MicroTime<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<i64>("seconds", Self::VT_SECONDS, false)?
     .visit_field::<i32>("nanos", Self::VT_NANOS, false)?
     .finish();
    Ok(())
  }
}
pub struct MicroTimeArgs {
    pub seconds: i64,
    pub nanos: i32,
}
impl<'a> Default for MicroTimeArgs {
  #[inline]
  fn default() -> Self {
    MicroTimeArgs {
      seconds: 0,
      nanos: 0,
    }
  }
}

impl Serialize for MicroTime<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("MicroTime", 2)?;
      s.serialize_field("seconds", &self.seconds())?;
      s.serialize_field("nanos", &self.nanos())?;
    s.end()
  }
}

pub struct MicroTimeBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> MicroTimeBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_seconds(&mut self, seconds: i64) {
    self.fbb_.push_slot::<i64>(MicroTime::VT_SECONDS, seconds, 0);
  }
  #[inline]
  pub fn add_nanos(&mut self, nanos: i32) {
    self.fbb_.push_slot::<i32>(MicroTime::VT_NANOS, nanos, 0);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> MicroTimeBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    MicroTimeBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<MicroTime<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for MicroTime<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("MicroTime");
      ds.field("seconds", &self.seconds());
      ds.field("nanos", &self.nanos());
      ds.finish()
  }
}

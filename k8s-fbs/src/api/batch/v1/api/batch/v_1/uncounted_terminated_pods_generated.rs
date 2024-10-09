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
pub enum UncountedTerminatedPodsOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct UncountedTerminatedPods<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for UncountedTerminatedPods<'a> {
  type Inner = UncountedTerminatedPods<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> UncountedTerminatedPods<'a> {
  pub const VT_SUCCEEDED: flatbuffers::VOffsetT = 4;
  pub const VT_FAILED: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    UncountedTerminatedPods { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args UncountedTerminatedPodsArgs<'args>
  ) -> flatbuffers::WIPOffset<UncountedTerminatedPods<'bldr>> {
    let mut builder = UncountedTerminatedPodsBuilder::new(_fbb);
    if let Some(x) = args.failed { builder.add_failed(x); }
    if let Some(x) = args.succeeded { builder.add_succeeded(x); }
    builder.finish()
  }


  #[inline]
  pub fn succeeded(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(UncountedTerminatedPods::VT_SUCCEEDED, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn failed(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(UncountedTerminatedPods::VT_FAILED, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for UncountedTerminatedPods<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("succeeded", Self::VT_SUCCEEDED, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("failed", Self::VT_FAILED, false)?
     .finish();
    Ok(())
  }
}
pub struct UncountedTerminatedPodsArgs<'a> {
    pub succeeded: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub failed: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
}
impl<'a> Default for UncountedTerminatedPodsArgs<'a> {
  #[inline]
  fn default() -> Self {
    UncountedTerminatedPodsArgs {
      succeeded: None,
      failed: None,
    }
  }
}

impl Serialize for UncountedTerminatedPods<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("UncountedTerminatedPods", 2)?;
      s.serialize_field("succeeded", &self.succeeded())?;
      s.serialize_field("failed", &self.failed())?;
    s.end()
  }
}

pub struct UncountedTerminatedPodsBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> UncountedTerminatedPodsBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_succeeded(&mut self, succeeded: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(UncountedTerminatedPods::VT_SUCCEEDED, succeeded);
  }
  #[inline]
  pub fn add_failed(&mut self, failed: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(UncountedTerminatedPods::VT_FAILED, failed);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> UncountedTerminatedPodsBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    UncountedTerminatedPodsBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<UncountedTerminatedPods<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for UncountedTerminatedPods<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("UncountedTerminatedPods");
      ds.field("succeeded", &self.succeeded());
      ds.field("failed", &self.failed());
      ds.finish()
  }
}

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
pub enum SubjectAccessReviewStatusOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct SubjectAccessReviewStatus<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for SubjectAccessReviewStatus<'a> {
  type Inner = SubjectAccessReviewStatus<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> SubjectAccessReviewStatus<'a> {
  pub const VT_ALLOWED: flatbuffers::VOffsetT = 4;
  pub const VT_DENIED: flatbuffers::VOffsetT = 6;
  pub const VT_REASON: flatbuffers::VOffsetT = 8;
  pub const VT_EVALUATIONERROR: flatbuffers::VOffsetT = 10;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    SubjectAccessReviewStatus { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args SubjectAccessReviewStatusArgs<'args>
  ) -> flatbuffers::WIPOffset<SubjectAccessReviewStatus<'bldr>> {
    let mut builder = SubjectAccessReviewStatusBuilder::new(_fbb);
    if let Some(x) = args.evaluationError { builder.add_evaluationError(x); }
    if let Some(x) = args.reason { builder.add_reason(x); }
    builder.add_denied(args.denied);
    builder.add_allowed(args.allowed);
    builder.finish()
  }


  #[inline]
  pub fn allowed(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(SubjectAccessReviewStatus::VT_ALLOWED, Some(false)).unwrap()}
  }
  #[inline]
  pub fn denied(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(SubjectAccessReviewStatus::VT_DENIED, Some(false)).unwrap()}
  }
  #[inline]
  pub fn reason(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SubjectAccessReviewStatus::VT_REASON, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn evaluationError(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SubjectAccessReviewStatus::VT_EVALUATIONERROR, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for SubjectAccessReviewStatus<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<bool>("allowed", Self::VT_ALLOWED, false)?
     .visit_field::<bool>("denied", Self::VT_DENIED, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("reason", Self::VT_REASON, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("evaluationError", Self::VT_EVALUATIONERROR, false)?
     .finish();
    Ok(())
  }
}
pub struct SubjectAccessReviewStatusArgs<'a> {
    pub allowed: bool,
    pub denied: bool,
    pub reason: Option<flatbuffers::WIPOffset<&'a str>>,
    pub evaluationError: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for SubjectAccessReviewStatusArgs<'a> {
  #[inline]
  fn default() -> Self {
    SubjectAccessReviewStatusArgs {
      allowed: false,
      denied: false,
      reason: None,
      evaluationError: None,
    }
  }
}

impl Serialize for SubjectAccessReviewStatus<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("SubjectAccessReviewStatus", 4)?;
      s.serialize_field("allowed", &self.allowed())?;
      s.serialize_field("denied", &self.denied())?;
      s.serialize_field("reason", &self.reason())?;
      s.serialize_field("evaluationError", &self.evaluationError())?;
    s.end()
  }
}

pub struct SubjectAccessReviewStatusBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> SubjectAccessReviewStatusBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_allowed(&mut self, allowed: bool) {
    self.fbb_.push_slot::<bool>(SubjectAccessReviewStatus::VT_ALLOWED, allowed, false);
  }
  #[inline]
  pub fn add_denied(&mut self, denied: bool) {
    self.fbb_.push_slot::<bool>(SubjectAccessReviewStatus::VT_DENIED, denied, false);
  }
  #[inline]
  pub fn add_reason(&mut self, reason: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewStatus::VT_REASON, reason);
  }
  #[inline]
  pub fn add_evaluationError(&mut self, evaluationError: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewStatus::VT_EVALUATIONERROR, evaluationError);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> SubjectAccessReviewStatusBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    SubjectAccessReviewStatusBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<SubjectAccessReviewStatus<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for SubjectAccessReviewStatus<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("SubjectAccessReviewStatus");
      ds.field("allowed", &self.allowed());
      ds.field("denied", &self.denied());
      ds.field("reason", &self.reason());
      ds.field("evaluationError", &self.evaluationError());
      ds.finish()
  }
}

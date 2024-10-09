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
pub enum PodAntiAffinityOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodAntiAffinity<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodAntiAffinity<'a> {
  type Inner = PodAntiAffinity<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodAntiAffinity<'a> {
  pub const VT_REQUIREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION: flatbuffers::VOffsetT = 4;
  pub const VT_PREFERREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodAntiAffinity { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodAntiAffinityArgs<'args>
  ) -> flatbuffers::WIPOffset<PodAntiAffinity<'bldr>> {
    let mut builder = PodAntiAffinityBuilder::new(_fbb);
    if let Some(x) = args.preferredDuringSchedulingIgnoredDuringExecution { builder.add_preferredDuringSchedulingIgnoredDuringExecution(x); }
    if let Some(x) = args.requiredDuringSchedulingIgnoredDuringExecution { builder.add_requiredDuringSchedulingIgnoredDuringExecution(x); }
    builder.finish()
  }


  #[inline]
  pub fn requiredDuringSchedulingIgnoredDuringExecution(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodAffinityTerm<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodAffinityTerm>>>>(PodAntiAffinity::VT_REQUIREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn preferredDuringSchedulingIgnoredDuringExecution(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<WeightedPodAffinityTerm<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<WeightedPodAffinityTerm>>>>(PodAntiAffinity::VT_PREFERREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodAntiAffinity<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<PodAffinityTerm>>>>("requiredDuringSchedulingIgnoredDuringExecution", Self::VT_REQUIREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<WeightedPodAffinityTerm>>>>("preferredDuringSchedulingIgnoredDuringExecution", Self::VT_PREFERREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, false)?
     .finish();
    Ok(())
  }
}
pub struct PodAntiAffinityArgs<'a> {
    pub requiredDuringSchedulingIgnoredDuringExecution: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<PodAffinityTerm<'a>>>>>,
    pub preferredDuringSchedulingIgnoredDuringExecution: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<WeightedPodAffinityTerm<'a>>>>>,
}
impl<'a> Default for PodAntiAffinityArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodAntiAffinityArgs {
      requiredDuringSchedulingIgnoredDuringExecution: None,
      preferredDuringSchedulingIgnoredDuringExecution: None,
    }
  }
}

impl Serialize for PodAntiAffinity<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodAntiAffinity", 2)?;
      s.serialize_field("requiredDuringSchedulingIgnoredDuringExecution", &self.requiredDuringSchedulingIgnoredDuringExecution())?;
      s.serialize_field("preferredDuringSchedulingIgnoredDuringExecution", &self.preferredDuringSchedulingIgnoredDuringExecution())?;
    s.end()
  }
}

pub struct PodAntiAffinityBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodAntiAffinityBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_requiredDuringSchedulingIgnoredDuringExecution(&mut self, requiredDuringSchedulingIgnoredDuringExecution: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<PodAffinityTerm<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodAntiAffinity::VT_REQUIREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, requiredDuringSchedulingIgnoredDuringExecution);
  }
  #[inline]
  pub fn add_preferredDuringSchedulingIgnoredDuringExecution(&mut self, preferredDuringSchedulingIgnoredDuringExecution: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<WeightedPodAffinityTerm<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodAntiAffinity::VT_PREFERREDDURINGSCHEDULINGIGNOREDDURINGEXECUTION, preferredDuringSchedulingIgnoredDuringExecution);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodAntiAffinityBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodAntiAffinityBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodAntiAffinity<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodAntiAffinity<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodAntiAffinity");
      ds.field("requiredDuringSchedulingIgnoredDuringExecution", &self.requiredDuringSchedulingIgnoredDuringExecution());
      ds.field("preferredDuringSchedulingIgnoredDuringExecution", &self.preferredDuringSchedulingIgnoredDuringExecution());
      ds.finish()
  }
}

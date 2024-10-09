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
pub enum PodDisruptionBudgetStatusOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodDisruptionBudgetStatus<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodDisruptionBudgetStatus<'a> {
  type Inner = PodDisruptionBudgetStatus<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodDisruptionBudgetStatus<'a> {
  pub const VT_OBSERVEDGENERATION: flatbuffers::VOffsetT = 4;
  pub const VT_DISRUPTEDPODS: flatbuffers::VOffsetT = 6;
  pub const VT_DISRUPTIONSALLOWED: flatbuffers::VOffsetT = 8;
  pub const VT_CURRENTHEALTHY: flatbuffers::VOffsetT = 10;
  pub const VT_DESIREDHEALTHY: flatbuffers::VOffsetT = 12;
  pub const VT_EXPECTEDPODS: flatbuffers::VOffsetT = 14;
  pub const VT_CONDITIONS: flatbuffers::VOffsetT = 16;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodDisruptionBudgetStatus { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodDisruptionBudgetStatusArgs<'args>
  ) -> flatbuffers::WIPOffset<PodDisruptionBudgetStatus<'bldr>> {
    let mut builder = PodDisruptionBudgetStatusBuilder::new(_fbb);
    builder.add_observedGeneration(args.observedGeneration);
    if let Some(x) = args.conditions { builder.add_conditions(x); }
    builder.add_expectedPods(args.expectedPods);
    builder.add_desiredHealthy(args.desiredHealthy);
    builder.add_currentHealthy(args.currentHealthy);
    builder.add_disruptionsAllowed(args.disruptionsAllowed);
    if let Some(x) = args.disruptedPods { builder.add_disruptedPods(x); }
    builder.finish()
  }


  #[inline]
  pub fn observedGeneration(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodDisruptionBudgetStatus::VT_OBSERVEDGENERATION, Some(0)).unwrap()}
  }
  #[inline]
  pub fn disruptedPods(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<pod_disruption_budget_status_::DisruptedPodsEntry<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<pod_disruption_budget_status_::DisruptedPodsEntry>>>>(PodDisruptionBudgetStatus::VT_DISRUPTEDPODS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn disruptionsAllowed(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(PodDisruptionBudgetStatus::VT_DISRUPTIONSALLOWED, Some(0)).unwrap()}
  }
  #[inline]
  pub fn currentHealthy(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(PodDisruptionBudgetStatus::VT_CURRENTHEALTHY, Some(0)).unwrap()}
  }
  #[inline]
  pub fn desiredHealthy(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(PodDisruptionBudgetStatus::VT_DESIREDHEALTHY, Some(0)).unwrap()}
  }
  #[inline]
  pub fn expectedPods(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(PodDisruptionBudgetStatus::VT_EXPECTEDPODS, Some(0)).unwrap()}
  }
  #[inline]
  pub fn conditions(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Condition<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Condition>>>>(PodDisruptionBudgetStatus::VT_CONDITIONS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodDisruptionBudgetStatus<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<i64>("observedGeneration", Self::VT_OBSERVEDGENERATION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<pod_disruption_budget_status_::DisruptedPodsEntry>>>>("disruptedPods", Self::VT_DISRUPTEDPODS, false)?
     .visit_field::<i32>("disruptionsAllowed", Self::VT_DISRUPTIONSALLOWED, false)?
     .visit_field::<i32>("currentHealthy", Self::VT_CURRENTHEALTHY, false)?
     .visit_field::<i32>("desiredHealthy", Self::VT_DESIREDHEALTHY, false)?
     .visit_field::<i32>("expectedPods", Self::VT_EXPECTEDPODS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Condition>>>>("conditions", Self::VT_CONDITIONS, false)?
     .finish();
    Ok(())
  }
}
pub struct PodDisruptionBudgetStatusArgs<'a> {
    pub observedGeneration: i64,
    pub disruptedPods: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<pod_disruption_budget_status_::DisruptedPodsEntry<'a>>>>>,
    pub disruptionsAllowed: i32,
    pub currentHealthy: i32,
    pub desiredHealthy: i32,
    pub expectedPods: i32,
    pub conditions: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Condition<'a>>>>>,
}
impl<'a> Default for PodDisruptionBudgetStatusArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodDisruptionBudgetStatusArgs {
      observedGeneration: 0,
      disruptedPods: None,
      disruptionsAllowed: 0,
      currentHealthy: 0,
      desiredHealthy: 0,
      expectedPods: 0,
      conditions: None,
    }
  }
}

impl Serialize for PodDisruptionBudgetStatus<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodDisruptionBudgetStatus", 7)?;
      s.serialize_field("observedGeneration", &self.observedGeneration())?;
      s.serialize_field("disruptedPods", &self.disruptedPods())?;
      s.serialize_field("disruptionsAllowed", &self.disruptionsAllowed())?;
      s.serialize_field("currentHealthy", &self.currentHealthy())?;
      s.serialize_field("desiredHealthy", &self.desiredHealthy())?;
      s.serialize_field("expectedPods", &self.expectedPods())?;
      s.serialize_field("conditions", &self.conditions())?;
    s.end()
  }
}

pub struct PodDisruptionBudgetStatusBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodDisruptionBudgetStatusBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_observedGeneration(&mut self, observedGeneration: i64) {
    self.fbb_.push_slot::<i64>(PodDisruptionBudgetStatus::VT_OBSERVEDGENERATION, observedGeneration, 0);
  }
  #[inline]
  pub fn add_disruptedPods(&mut self, disruptedPods: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<pod_disruption_budget_status_::DisruptedPodsEntry<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodDisruptionBudgetStatus::VT_DISRUPTEDPODS, disruptedPods);
  }
  #[inline]
  pub fn add_disruptionsAllowed(&mut self, disruptionsAllowed: i32) {
    self.fbb_.push_slot::<i32>(PodDisruptionBudgetStatus::VT_DISRUPTIONSALLOWED, disruptionsAllowed, 0);
  }
  #[inline]
  pub fn add_currentHealthy(&mut self, currentHealthy: i32) {
    self.fbb_.push_slot::<i32>(PodDisruptionBudgetStatus::VT_CURRENTHEALTHY, currentHealthy, 0);
  }
  #[inline]
  pub fn add_desiredHealthy(&mut self, desiredHealthy: i32) {
    self.fbb_.push_slot::<i32>(PodDisruptionBudgetStatus::VT_DESIREDHEALTHY, desiredHealthy, 0);
  }
  #[inline]
  pub fn add_expectedPods(&mut self, expectedPods: i32) {
    self.fbb_.push_slot::<i32>(PodDisruptionBudgetStatus::VT_EXPECTEDPODS, expectedPods, 0);
  }
  #[inline]
  pub fn add_conditions(&mut self, conditions: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::Condition<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodDisruptionBudgetStatus::VT_CONDITIONS, conditions);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodDisruptionBudgetStatusBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodDisruptionBudgetStatusBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodDisruptionBudgetStatus<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodDisruptionBudgetStatus<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodDisruptionBudgetStatus");
      ds.field("observedGeneration", &self.observedGeneration());
      ds.field("disruptedPods", &self.disruptedPods());
      ds.field("disruptionsAllowed", &self.disruptionsAllowed());
      ds.field("currentHealthy", &self.currentHealthy());
      ds.field("desiredHealthy", &self.desiredHealthy());
      ds.field("expectedPods", &self.expectedPods());
      ds.field("conditions", &self.conditions());
      ds.finish()
  }
}

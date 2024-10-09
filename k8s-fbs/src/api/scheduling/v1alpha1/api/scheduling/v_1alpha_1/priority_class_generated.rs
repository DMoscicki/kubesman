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
pub enum PriorityClassOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PriorityClass<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PriorityClass<'a> {
  type Inner = PriorityClass<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PriorityClass<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_VALUE: flatbuffers::VOffsetT = 6;
  pub const VT_GLOBALDEFAULT: flatbuffers::VOffsetT = 8;
  pub const VT_DESCRIPTION: flatbuffers::VOffsetT = 10;
  pub const VT_PREEMPTIONPOLICY: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PriorityClass { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PriorityClassArgs<'args>
  ) -> flatbuffers::WIPOffset<PriorityClass<'bldr>> {
    let mut builder = PriorityClassBuilder::new(_fbb);
    if let Some(x) = args.preemptionPolicy { builder.add_preemptionPolicy(x); }
    if let Some(x) = args.description { builder.add_description(x); }
    builder.add_value(args.value);
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.add_globalDefault(args.globalDefault);
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(PriorityClass::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn value(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(PriorityClass::VT_VALUE, Some(0)).unwrap()}
  }
  #[inline]
  pub fn globalDefault(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PriorityClass::VT_GLOBALDEFAULT, Some(false)).unwrap()}
  }
  #[inline]
  pub fn description(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PriorityClass::VT_DESCRIPTION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn preemptionPolicy(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PriorityClass::VT_PREEMPTIONPOLICY, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for PriorityClass<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<i32>("value", Self::VT_VALUE, false)?
     .visit_field::<bool>("globalDefault", Self::VT_GLOBALDEFAULT, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("description", Self::VT_DESCRIPTION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("preemptionPolicy", Self::VT_PREEMPTIONPOLICY, false)?
     .finish();
    Ok(())
  }
}
pub struct PriorityClassArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub value: i32,
    pub globalDefault: bool,
    pub description: Option<flatbuffers::WIPOffset<&'a str>>,
    pub preemptionPolicy: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for PriorityClassArgs<'a> {
  #[inline]
  fn default() -> Self {
    PriorityClassArgs {
      metadata: None,
      value: 0,
      globalDefault: false,
      description: None,
      preemptionPolicy: None,
    }
  }
}

impl Serialize for PriorityClass<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PriorityClass", 5)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("value", &self.value())?;
      s.serialize_field("globalDefault", &self.globalDefault())?;
      s.serialize_field("description", &self.description())?;
      s.serialize_field("preemptionPolicy", &self.preemptionPolicy())?;
    s.end()
  }
}

pub struct PriorityClassBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PriorityClassBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(PriorityClass::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_value(&mut self, value: i32) {
    self.fbb_.push_slot::<i32>(PriorityClass::VT_VALUE, value, 0);
  }
  #[inline]
  pub fn add_globalDefault(&mut self, globalDefault: bool) {
    self.fbb_.push_slot::<bool>(PriorityClass::VT_GLOBALDEFAULT, globalDefault, false);
  }
  #[inline]
  pub fn add_description(&mut self, description: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PriorityClass::VT_DESCRIPTION, description);
  }
  #[inline]
  pub fn add_preemptionPolicy(&mut self, preemptionPolicy: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PriorityClass::VT_PREEMPTIONPOLICY, preemptionPolicy);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PriorityClassBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PriorityClassBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PriorityClass<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PriorityClass<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PriorityClass");
      ds.field("metadata", &self.metadata());
      ds.field("value", &self.value());
      ds.field("globalDefault", &self.globalDefault());
      ds.field("description", &self.description());
      ds.field("preemptionPolicy", &self.preemptionPolicy());
      ds.finish()
  }
}

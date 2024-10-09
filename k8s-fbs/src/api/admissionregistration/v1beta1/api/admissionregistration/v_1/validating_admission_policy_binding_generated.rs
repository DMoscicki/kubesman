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
pub enum ValidatingAdmissionPolicyBindingOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ValidatingAdmissionPolicyBinding<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ValidatingAdmissionPolicyBinding<'a> {
  type Inner = ValidatingAdmissionPolicyBinding<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ValidatingAdmissionPolicyBinding<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SPEC: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ValidatingAdmissionPolicyBinding { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ValidatingAdmissionPolicyBindingArgs<'args>
  ) -> flatbuffers::WIPOffset<ValidatingAdmissionPolicyBinding<'bldr>> {
    let mut builder = ValidatingAdmissionPolicyBindingBuilder::new(_fbb);
    if let Some(x) = args.spec { builder.add_spec(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ValidatingAdmissionPolicyBinding::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn spec(&self) -> ValidatingAdmissionPolicyBindingSpec<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ValidatingAdmissionPolicyBindingSpec>>(ValidatingAdmissionPolicyBinding::VT_SPEC, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for ValidatingAdmissionPolicyBinding<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<ValidatingAdmissionPolicyBindingSpec>>("spec", Self::VT_SPEC, false)?
     .finish();
    Ok(())
  }
}
pub struct ValidatingAdmissionPolicyBindingArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub spec: Option<flatbuffers::WIPOffset<ValidatingAdmissionPolicyBindingSpec<'a>>>,
}
impl<'a> Default for ValidatingAdmissionPolicyBindingArgs<'a> {
  #[inline]
  fn default() -> Self {
    ValidatingAdmissionPolicyBindingArgs {
      metadata: None,
      spec: None,
    }
  }
}

impl Serialize for ValidatingAdmissionPolicyBinding<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ValidatingAdmissionPolicyBinding", 2)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("spec", &self.spec())?;
    s.end()
  }
}

pub struct ValidatingAdmissionPolicyBindingBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ValidatingAdmissionPolicyBindingBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ValidatingAdmissionPolicyBinding::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_spec(&mut self, spec: flatbuffers::WIPOffset<ValidatingAdmissionPolicyBindingSpec<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ValidatingAdmissionPolicyBindingSpec>>(ValidatingAdmissionPolicyBinding::VT_SPEC, spec);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ValidatingAdmissionPolicyBindingBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ValidatingAdmissionPolicyBindingBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ValidatingAdmissionPolicyBinding<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ValidatingAdmissionPolicyBinding<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ValidatingAdmissionPolicyBinding");
      ds.field("metadata", &self.metadata());
      ds.field("spec", &self.spec());
      ds.finish()
  }
}

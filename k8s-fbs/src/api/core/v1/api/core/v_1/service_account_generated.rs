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
pub enum ServiceAccountOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct ServiceAccount<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for ServiceAccount<'a> {
  type Inner = ServiceAccount<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> ServiceAccount<'a> {
  pub const VT_METADATA: flatbuffers::VOffsetT = 4;
  pub const VT_SECRETS: flatbuffers::VOffsetT = 6;
  pub const VT_IMAGEPULLSECRETS: flatbuffers::VOffsetT = 8;
  pub const VT_AUTOMOUNTSERVICEACCOUNTTOKEN: flatbuffers::VOffsetT = 10;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    ServiceAccount { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args ServiceAccountArgs<'args>
  ) -> flatbuffers::WIPOffset<ServiceAccount<'bldr>> {
    let mut builder = ServiceAccountBuilder::new(_fbb);
    if let Some(x) = args.imagePullSecrets { builder.add_imagePullSecrets(x); }
    if let Some(x) = args.secrets { builder.add_secrets(x); }
    if let Some(x) = args.metadata { builder.add_metadata(x); }
    builder.add_automountServiceAccountToken(args.automountServiceAccountToken);
    builder.finish()
  }


  #[inline]
  pub fn metadata(&self) -> super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ServiceAccount::VT_METADATA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn secrets(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ObjectReference<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ObjectReference>>>>(ServiceAccount::VT_SECRETS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn imagePullSecrets(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<LocalObjectReference<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<LocalObjectReference>>>>(ServiceAccount::VT_IMAGEPULLSECRETS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn automountServiceAccountToken(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(ServiceAccount::VT_AUTOMOUNTSERVICEACCOUNTTOKEN, Some(false)).unwrap()}
  }
}

impl flatbuffers::Verifiable for ServiceAccount<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>("metadata", Self::VT_METADATA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<ObjectReference>>>>("secrets", Self::VT_SECRETS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<LocalObjectReference>>>>("imagePullSecrets", Self::VT_IMAGEPULLSECRETS, false)?
     .visit_field::<bool>("automountServiceAccountToken", Self::VT_AUTOMOUNTSERVICEACCOUNTTOKEN, false)?
     .finish();
    Ok(())
  }
}
pub struct ServiceAccountArgs<'a> {
    pub metadata: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'a>>>,
    pub secrets: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ObjectReference<'a>>>>>,
    pub imagePullSecrets: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<LocalObjectReference<'a>>>>>,
    pub automountServiceAccountToken: bool,
}
impl<'a> Default for ServiceAccountArgs<'a> {
  #[inline]
  fn default() -> Self {
    ServiceAccountArgs {
      metadata: None,
      secrets: None,
      imagePullSecrets: None,
      automountServiceAccountToken: false,
    }
  }
}

impl Serialize for ServiceAccount<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("ServiceAccount", 4)?;
      s.serialize_field("metadata", &self.metadata())?;
      s.serialize_field("secrets", &self.secrets())?;
      s.serialize_field("imagePullSecrets", &self.imagePullSecrets())?;
      s.serialize_field("automountServiceAccountToken", &self.automountServiceAccountToken())?;
    s.end()
  }
}

pub struct ServiceAccountBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> ServiceAccountBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_metadata(&mut self, metadata: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::apis::meta::v_1::ObjectMeta>>(ServiceAccount::VT_METADATA, metadata);
  }
  #[inline]
  pub fn add_secrets(&mut self, secrets: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<ObjectReference<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ServiceAccount::VT_SECRETS, secrets);
  }
  #[inline]
  pub fn add_imagePullSecrets(&mut self, imagePullSecrets: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<LocalObjectReference<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(ServiceAccount::VT_IMAGEPULLSECRETS, imagePullSecrets);
  }
  #[inline]
  pub fn add_automountServiceAccountToken(&mut self, automountServiceAccountToken: bool) {
    self.fbb_.push_slot::<bool>(ServiceAccount::VT_AUTOMOUNTSERVICEACCOUNTTOKEN, automountServiceAccountToken, false);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> ServiceAccountBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    ServiceAccountBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<ServiceAccount<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for ServiceAccount<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("ServiceAccount");
      ds.field("metadata", &self.metadata());
      ds.field("secrets", &self.secrets());
      ds.field("imagePullSecrets", &self.imagePullSecrets());
      ds.field("automountServiceAccountToken", &self.automountServiceAccountToken());
      ds.finish()
  }
}

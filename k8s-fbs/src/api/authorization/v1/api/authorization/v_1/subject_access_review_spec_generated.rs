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
pub enum SubjectAccessReviewSpecOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct SubjectAccessReviewSpec<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for SubjectAccessReviewSpec<'a> {
  type Inner = SubjectAccessReviewSpec<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> SubjectAccessReviewSpec<'a> {
  pub const VT_RESOURCEATTRIBUTES: flatbuffers::VOffsetT = 4;
  pub const VT_NONRESOURCEATTRIBUTES: flatbuffers::VOffsetT = 6;
  pub const VT_USER: flatbuffers::VOffsetT = 8;
  pub const VT_GROUPS: flatbuffers::VOffsetT = 10;
  pub const VT_EXTRA: flatbuffers::VOffsetT = 12;
  pub const VT_UID: flatbuffers::VOffsetT = 14;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    SubjectAccessReviewSpec { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args SubjectAccessReviewSpecArgs<'args>
  ) -> flatbuffers::WIPOffset<SubjectAccessReviewSpec<'bldr>> {
    let mut builder = SubjectAccessReviewSpecBuilder::new(_fbb);
    if let Some(x) = args.uid { builder.add_uid(x); }
    if let Some(x) = args.extra { builder.add_extra(x); }
    if let Some(x) = args.groups { builder.add_groups(x); }
    if let Some(x) = args.user { builder.add_user(x); }
    if let Some(x) = args.nonResourceAttributes { builder.add_nonResourceAttributes(x); }
    if let Some(x) = args.resourceAttributes { builder.add_resourceAttributes(x); }
    builder.finish()
  }


  #[inline]
  pub fn resourceAttributes(&self) -> ResourceAttributes<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ResourceAttributes>>(SubjectAccessReviewSpec::VT_RESOURCEATTRIBUTES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn nonResourceAttributes(&self) -> NonResourceAttributes<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<NonResourceAttributes>>(SubjectAccessReviewSpec::VT_NONRESOURCEATTRIBUTES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn user(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SubjectAccessReviewSpec::VT_USER, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn groups(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(SubjectAccessReviewSpec::VT_GROUPS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn extra(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<subject_access_review_spec_::ExtraEntry<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<subject_access_review_spec_::ExtraEntry>>>>(SubjectAccessReviewSpec::VT_EXTRA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn uid(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SubjectAccessReviewSpec::VT_UID, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for SubjectAccessReviewSpec<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<ResourceAttributes>>("resourceAttributes", Self::VT_RESOURCEATTRIBUTES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<NonResourceAttributes>>("nonResourceAttributes", Self::VT_NONRESOURCEATTRIBUTES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("user", Self::VT_USER, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("groups", Self::VT_GROUPS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<subject_access_review_spec_::ExtraEntry>>>>("extra", Self::VT_EXTRA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("uid", Self::VT_UID, false)?
     .finish();
    Ok(())
  }
}
pub struct SubjectAccessReviewSpecArgs<'a> {
    pub resourceAttributes: Option<flatbuffers::WIPOffset<ResourceAttributes<'a>>>,
    pub nonResourceAttributes: Option<flatbuffers::WIPOffset<NonResourceAttributes<'a>>>,
    pub user: Option<flatbuffers::WIPOffset<&'a str>>,
    pub groups: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub extra: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<subject_access_review_spec_::ExtraEntry<'a>>>>>,
    pub uid: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for SubjectAccessReviewSpecArgs<'a> {
  #[inline]
  fn default() -> Self {
    SubjectAccessReviewSpecArgs {
      resourceAttributes: None,
      nonResourceAttributes: None,
      user: None,
      groups: None,
      extra: None,
      uid: None,
    }
  }
}

impl Serialize for SubjectAccessReviewSpec<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("SubjectAccessReviewSpec", 6)?;
      s.serialize_field("resourceAttributes", &self.resourceAttributes())?;
      s.serialize_field("nonResourceAttributes", &self.nonResourceAttributes())?;
      s.serialize_field("user", &self.user())?;
      s.serialize_field("groups", &self.groups())?;
      s.serialize_field("extra", &self.extra())?;
      s.serialize_field("uid", &self.uid())?;
    s.end()
  }
}

pub struct SubjectAccessReviewSpecBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> SubjectAccessReviewSpecBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_resourceAttributes(&mut self, resourceAttributes: flatbuffers::WIPOffset<ResourceAttributes<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ResourceAttributes>>(SubjectAccessReviewSpec::VT_RESOURCEATTRIBUTES, resourceAttributes);
  }
  #[inline]
  pub fn add_nonResourceAttributes(&mut self, nonResourceAttributes: flatbuffers::WIPOffset<NonResourceAttributes<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<NonResourceAttributes>>(SubjectAccessReviewSpec::VT_NONRESOURCEATTRIBUTES, nonResourceAttributes);
  }
  #[inline]
  pub fn add_user(&mut self, user: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewSpec::VT_USER, user);
  }
  #[inline]
  pub fn add_groups(&mut self, groups: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewSpec::VT_GROUPS, groups);
  }
  #[inline]
  pub fn add_extra(&mut self, extra: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<subject_access_review_spec_::ExtraEntry<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewSpec::VT_EXTRA, extra);
  }
  #[inline]
  pub fn add_uid(&mut self, uid: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SubjectAccessReviewSpec::VT_UID, uid);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> SubjectAccessReviewSpecBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    SubjectAccessReviewSpecBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<SubjectAccessReviewSpec<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for SubjectAccessReviewSpec<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("SubjectAccessReviewSpec");
      ds.field("resourceAttributes", &self.resourceAttributes());
      ds.field("nonResourceAttributes", &self.nonResourceAttributes());
      ds.field("user", &self.user());
      ds.field("groups", &self.groups());
      ds.field("extra", &self.extra());
      ds.field("uid", &self.uid());
      ds.finish()
  }
}

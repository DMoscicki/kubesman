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
pub enum APIResourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct APIResource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for APIResource<'a> {
  type Inner = APIResource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> APIResource<'a> {
  pub const VT_NAME: flatbuffers::VOffsetT = 4;
  pub const VT_SINGULARNAME: flatbuffers::VOffsetT = 6;
  pub const VT_NAMESPACED: flatbuffers::VOffsetT = 8;
  pub const VT_GROUP: flatbuffers::VOffsetT = 10;
  pub const VT_VERSION: flatbuffers::VOffsetT = 12;
  pub const VT_KIND: flatbuffers::VOffsetT = 14;
  pub const VT_VERBS: flatbuffers::VOffsetT = 16;
  pub const VT_SHORTNAMES: flatbuffers::VOffsetT = 18;
  pub const VT_CATEGORIES: flatbuffers::VOffsetT = 20;
  pub const VT_STORAGEVERSIONHASH: flatbuffers::VOffsetT = 22;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    APIResource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args APIResourceArgs<'args>
  ) -> flatbuffers::WIPOffset<APIResource<'bldr>> {
    let mut builder = APIResourceBuilder::new(_fbb);
    if let Some(x) = args.storageVersionHash { builder.add_storageVersionHash(x); }
    if let Some(x) = args.categories { builder.add_categories(x); }
    if let Some(x) = args.shortNames { builder.add_shortNames(x); }
    if let Some(x) = args.verbs { builder.add_verbs(x); }
    if let Some(x) = args.kind { builder.add_kind(x); }
    if let Some(x) = args.version { builder.add_version(x); }
    if let Some(x) = args.group { builder.add_group(x); }
    if let Some(x) = args.singularName { builder.add_singularName(x); }
    if let Some(x) = args.name { builder.add_name(x); }
    builder.add_namespaced(args.namespaced);
    builder.finish()
  }


  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_NAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn singularName(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_SINGULARNAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn namespaced(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(APIResource::VT_NAMESPACED, Some(false)).unwrap()}
  }
  #[inline]
  pub fn group(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_GROUP, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn version(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_VERSION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn kind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_KIND, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn verbs(&self) -> Verbs<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<Verbs>>(APIResource::VT_VERBS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn shortNames(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(APIResource::VT_SHORTNAMES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn categories(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(APIResource::VT_CATEGORIES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn storageVersionHash(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResource::VT_STORAGEVERSIONHASH, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for APIResource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("singularName", Self::VT_SINGULARNAME, false)?
     .visit_field::<bool>("namespaced", Self::VT_NAMESPACED, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("group", Self::VT_GROUP, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("version", Self::VT_VERSION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("kind", Self::VT_KIND, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<Verbs>>("verbs", Self::VT_VERBS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("shortNames", Self::VT_SHORTNAMES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("categories", Self::VT_CATEGORIES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("storageVersionHash", Self::VT_STORAGEVERSIONHASH, false)?
     .finish();
    Ok(())
  }
}
pub struct APIResourceArgs<'a> {
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
    pub singularName: Option<flatbuffers::WIPOffset<&'a str>>,
    pub namespaced: bool,
    pub group: Option<flatbuffers::WIPOffset<&'a str>>,
    pub version: Option<flatbuffers::WIPOffset<&'a str>>,
    pub kind: Option<flatbuffers::WIPOffset<&'a str>>,
    pub verbs: Option<flatbuffers::WIPOffset<Verbs<'a>>>,
    pub shortNames: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub categories: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub storageVersionHash: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for APIResourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    APIResourceArgs {
      name: None,
      singularName: None,
      namespaced: false,
      group: None,
      version: None,
      kind: None,
      verbs: None,
      shortNames: None,
      categories: None,
      storageVersionHash: None,
    }
  }
}

impl Serialize for APIResource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("APIResource", 10)?;
      s.serialize_field("name", &self.name())?;
      s.serialize_field("singularName", &self.singularName())?;
      s.serialize_field("namespaced", &self.namespaced())?;
      s.serialize_field("group", &self.group())?;
      s.serialize_field("version", &self.version())?;
      s.serialize_field("kind", &self.kind())?;
      s.serialize_field("verbs", &self.verbs())?;
      s.serialize_field("shortNames", &self.shortNames())?;
      s.serialize_field("categories", &self.categories())?;
      s.serialize_field("storageVersionHash", &self.storageVersionHash())?;
    s.end()
  }
}

pub struct APIResourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> APIResourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_NAME, name);
  }
  #[inline]
  pub fn add_singularName(&mut self, singularName: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_SINGULARNAME, singularName);
  }
  #[inline]
  pub fn add_namespaced(&mut self, namespaced: bool) {
    self.fbb_.push_slot::<bool>(APIResource::VT_NAMESPACED, namespaced, false);
  }
  #[inline]
  pub fn add_group(&mut self, group: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_GROUP, group);
  }
  #[inline]
  pub fn add_version(&mut self, version: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_VERSION, version);
  }
  #[inline]
  pub fn add_kind(&mut self, kind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_KIND, kind);
  }
  #[inline]
  pub fn add_verbs(&mut self, verbs: flatbuffers::WIPOffset<Verbs<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<Verbs>>(APIResource::VT_VERBS, verbs);
  }
  #[inline]
  pub fn add_shortNames(&mut self, shortNames: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_SHORTNAMES, shortNames);
  }
  #[inline]
  pub fn add_categories(&mut self, categories: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_CATEGORIES, categories);
  }
  #[inline]
  pub fn add_storageVersionHash(&mut self, storageVersionHash: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResource::VT_STORAGEVERSIONHASH, storageVersionHash);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> APIResourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    APIResourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<APIResource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for APIResource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("APIResource");
      ds.field("name", &self.name());
      ds.field("singularName", &self.singularName());
      ds.field("namespaced", &self.namespaced());
      ds.field("group", &self.group());
      ds.field("version", &self.version());
      ds.field("kind", &self.kind());
      ds.field("verbs", &self.verbs());
      ds.field("shortNames", &self.shortNames());
      ds.field("categories", &self.categories());
      ds.field("storageVersionHash", &self.storageVersionHash());
      ds.finish()
  }
}

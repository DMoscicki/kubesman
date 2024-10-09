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
pub enum CustomResourceDefinitionNamesOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct CustomResourceDefinitionNames<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for CustomResourceDefinitionNames<'a> {
  type Inner = CustomResourceDefinitionNames<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> CustomResourceDefinitionNames<'a> {
  pub const VT_PLURAL: flatbuffers::VOffsetT = 4;
  pub const VT_SINGULAR: flatbuffers::VOffsetT = 6;
  pub const VT_SHORTNAMES: flatbuffers::VOffsetT = 8;
  pub const VT_KIND: flatbuffers::VOffsetT = 10;
  pub const VT_LISTKIND: flatbuffers::VOffsetT = 12;
  pub const VT_CATEGORIES: flatbuffers::VOffsetT = 14;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    CustomResourceDefinitionNames { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args CustomResourceDefinitionNamesArgs<'args>
  ) -> flatbuffers::WIPOffset<CustomResourceDefinitionNames<'bldr>> {
    let mut builder = CustomResourceDefinitionNamesBuilder::new(_fbb);
    if let Some(x) = args.categories { builder.add_categories(x); }
    if let Some(x) = args.listKind { builder.add_listKind(x); }
    if let Some(x) = args.kind { builder.add_kind(x); }
    if let Some(x) = args.shortNames { builder.add_shortNames(x); }
    if let Some(x) = args.singular { builder.add_singular(x); }
    if let Some(x) = args.plural { builder.add_plural(x); }
    builder.finish()
  }


  #[inline]
  pub fn plural(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionNames::VT_PLURAL, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn singular(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionNames::VT_SINGULAR, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn shortNames(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(CustomResourceDefinitionNames::VT_SHORTNAMES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn kind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionNames::VT_KIND, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn listKind(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionNames::VT_LISTKIND, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn categories(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(CustomResourceDefinitionNames::VT_CATEGORIES, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for CustomResourceDefinitionNames<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("plural", Self::VT_PLURAL, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("singular", Self::VT_SINGULAR, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("shortNames", Self::VT_SHORTNAMES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("kind", Self::VT_KIND, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("listKind", Self::VT_LISTKIND, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("categories", Self::VT_CATEGORIES, false)?
     .finish();
    Ok(())
  }
}
pub struct CustomResourceDefinitionNamesArgs<'a> {
    pub plural: Option<flatbuffers::WIPOffset<&'a str>>,
    pub singular: Option<flatbuffers::WIPOffset<&'a str>>,
    pub shortNames: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub kind: Option<flatbuffers::WIPOffset<&'a str>>,
    pub listKind: Option<flatbuffers::WIPOffset<&'a str>>,
    pub categories: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
}
impl<'a> Default for CustomResourceDefinitionNamesArgs<'a> {
  #[inline]
  fn default() -> Self {
    CustomResourceDefinitionNamesArgs {
      plural: None,
      singular: None,
      shortNames: None,
      kind: None,
      listKind: None,
      categories: None,
    }
  }
}

impl Serialize for CustomResourceDefinitionNames<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("CustomResourceDefinitionNames", 6)?;
      s.serialize_field("plural", &self.plural())?;
      s.serialize_field("singular", &self.singular())?;
      s.serialize_field("shortNames", &self.shortNames())?;
      s.serialize_field("kind", &self.kind())?;
      s.serialize_field("listKind", &self.listKind())?;
      s.serialize_field("categories", &self.categories())?;
    s.end()
  }
}

pub struct CustomResourceDefinitionNamesBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> CustomResourceDefinitionNamesBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_plural(&mut self, plural: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_PLURAL, plural);
  }
  #[inline]
  pub fn add_singular(&mut self, singular: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_SINGULAR, singular);
  }
  #[inline]
  pub fn add_shortNames(&mut self, shortNames: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_SHORTNAMES, shortNames);
  }
  #[inline]
  pub fn add_kind(&mut self, kind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_KIND, kind);
  }
  #[inline]
  pub fn add_listKind(&mut self, listKind: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_LISTKIND, listKind);
  }
  #[inline]
  pub fn add_categories(&mut self, categories: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionNames::VT_CATEGORIES, categories);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> CustomResourceDefinitionNamesBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    CustomResourceDefinitionNamesBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<CustomResourceDefinitionNames<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for CustomResourceDefinitionNames<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("CustomResourceDefinitionNames");
      ds.field("plural", &self.plural());
      ds.field("singular", &self.singular());
      ds.field("shortNames", &self.shortNames());
      ds.field("kind", &self.kind());
      ds.field("listKind", &self.listKind());
      ds.field("categories", &self.categories());
      ds.finish()
  }
}

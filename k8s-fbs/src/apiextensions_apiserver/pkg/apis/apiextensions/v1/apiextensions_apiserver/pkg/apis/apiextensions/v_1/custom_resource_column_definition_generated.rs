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
pub enum CustomResourceColumnDefinitionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct CustomResourceColumnDefinition<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for CustomResourceColumnDefinition<'a> {
  type Inner = CustomResourceColumnDefinition<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> CustomResourceColumnDefinition<'a> {
  pub const VT_NAME: flatbuffers::VOffsetT = 4;
  pub const VT_TYPE_: flatbuffers::VOffsetT = 6;
  pub const VT_FORMAT: flatbuffers::VOffsetT = 8;
  pub const VT_DESCRIPTION: flatbuffers::VOffsetT = 10;
  pub const VT_PRIORITY: flatbuffers::VOffsetT = 12;
  pub const VT_JSONPATH: flatbuffers::VOffsetT = 14;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    CustomResourceColumnDefinition { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args CustomResourceColumnDefinitionArgs<'args>
  ) -> flatbuffers::WIPOffset<CustomResourceColumnDefinition<'bldr>> {
    let mut builder = CustomResourceColumnDefinitionBuilder::new(_fbb);
    if let Some(x) = args.jsonPath { builder.add_jsonPath(x); }
    builder.add_priority(args.priority);
    if let Some(x) = args.description { builder.add_description(x); }
    if let Some(x) = args.format { builder.add_format(x); }
    if let Some(x) = args.type_ { builder.add_type_(x); }
    if let Some(x) = args.name { builder.add_name(x); }
    builder.finish()
  }


  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceColumnDefinition::VT_NAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn type_(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceColumnDefinition::VT_TYPE_, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn format(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceColumnDefinition::VT_FORMAT, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn description(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceColumnDefinition::VT_DESCRIPTION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn priority(&self) -> i32 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i32>(CustomResourceColumnDefinition::VT_PRIORITY, Some(0)).unwrap()}
  }
  #[inline]
  pub fn jsonPath(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceColumnDefinition::VT_JSONPATH, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for CustomResourceColumnDefinition<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("type_", Self::VT_TYPE_, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("format", Self::VT_FORMAT, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("description", Self::VT_DESCRIPTION, false)?
     .visit_field::<i32>("priority", Self::VT_PRIORITY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("jsonPath", Self::VT_JSONPATH, false)?
     .finish();
    Ok(())
  }
}
pub struct CustomResourceColumnDefinitionArgs<'a> {
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
    pub type_: Option<flatbuffers::WIPOffset<&'a str>>,
    pub format: Option<flatbuffers::WIPOffset<&'a str>>,
    pub description: Option<flatbuffers::WIPOffset<&'a str>>,
    pub priority: i32,
    pub jsonPath: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for CustomResourceColumnDefinitionArgs<'a> {
  #[inline]
  fn default() -> Self {
    CustomResourceColumnDefinitionArgs {
      name: None,
      type_: None,
      format: None,
      description: None,
      priority: 0,
      jsonPath: None,
    }
  }
}

impl Serialize for CustomResourceColumnDefinition<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("CustomResourceColumnDefinition", 6)?;
      s.serialize_field("name", &self.name())?;
      s.serialize_field("type_", &self.type_())?;
      s.serialize_field("format", &self.format())?;
      s.serialize_field("description", &self.description())?;
      s.serialize_field("priority", &self.priority())?;
      s.serialize_field("jsonPath", &self.jsonPath())?;
    s.end()
  }
}

pub struct CustomResourceColumnDefinitionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> CustomResourceColumnDefinitionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceColumnDefinition::VT_NAME, name);
  }
  #[inline]
  pub fn add_type_(&mut self, type_: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceColumnDefinition::VT_TYPE_, type_);
  }
  #[inline]
  pub fn add_format(&mut self, format: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceColumnDefinition::VT_FORMAT, format);
  }
  #[inline]
  pub fn add_description(&mut self, description: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceColumnDefinition::VT_DESCRIPTION, description);
  }
  #[inline]
  pub fn add_priority(&mut self, priority: i32) {
    self.fbb_.push_slot::<i32>(CustomResourceColumnDefinition::VT_PRIORITY, priority, 0);
  }
  #[inline]
  pub fn add_jsonPath(&mut self, jsonPath: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceColumnDefinition::VT_JSONPATH, jsonPath);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> CustomResourceColumnDefinitionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    CustomResourceColumnDefinitionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<CustomResourceColumnDefinition<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for CustomResourceColumnDefinition<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("CustomResourceColumnDefinition");
      ds.field("name", &self.name());
      ds.field("type_", &self.type_());
      ds.field("format", &self.format());
      ds.field("description", &self.description());
      ds.field("priority", &self.priority());
      ds.field("jsonPath", &self.jsonPath());
      ds.finish()
  }
}

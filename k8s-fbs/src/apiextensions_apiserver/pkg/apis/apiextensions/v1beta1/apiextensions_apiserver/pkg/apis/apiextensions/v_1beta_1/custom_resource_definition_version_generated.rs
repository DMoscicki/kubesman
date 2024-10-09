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
pub enum CustomResourceDefinitionVersionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct CustomResourceDefinitionVersion<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for CustomResourceDefinitionVersion<'a> {
  type Inner = CustomResourceDefinitionVersion<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> CustomResourceDefinitionVersion<'a> {
  pub const VT_NAME: flatbuffers::VOffsetT = 4;
  pub const VT_SERVED: flatbuffers::VOffsetT = 6;
  pub const VT_STORAGE: flatbuffers::VOffsetT = 8;
  pub const VT_DEPRECATED: flatbuffers::VOffsetT = 10;
  pub const VT_DEPRECATIONWARNING: flatbuffers::VOffsetT = 12;
  pub const VT_SCHEMA: flatbuffers::VOffsetT = 14;
  pub const VT_SUBRESOURCES: flatbuffers::VOffsetT = 16;
  pub const VT_ADDITIONALPRINTERCOLUMNS: flatbuffers::VOffsetT = 18;
  pub const VT_SELECTABLEFIELDS: flatbuffers::VOffsetT = 20;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    CustomResourceDefinitionVersion { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args CustomResourceDefinitionVersionArgs<'args>
  ) -> flatbuffers::WIPOffset<CustomResourceDefinitionVersion<'bldr>> {
    let mut builder = CustomResourceDefinitionVersionBuilder::new(_fbb);
    if let Some(x) = args.selectableFields { builder.add_selectableFields(x); }
    if let Some(x) = args.additionalPrinterColumns { builder.add_additionalPrinterColumns(x); }
    if let Some(x) = args.subresources { builder.add_subresources(x); }
    if let Some(x) = args.schema { builder.add_schema(x); }
    if let Some(x) = args.deprecationWarning { builder.add_deprecationWarning(x); }
    if let Some(x) = args.name { builder.add_name(x); }
    builder.add_deprecated(args.deprecated);
    builder.add_storage(args.storage);
    builder.add_served(args.served);
    builder.finish()
  }


  #[inline]
  pub fn name(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionVersion::VT_NAME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn served(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(CustomResourceDefinitionVersion::VT_SERVED, Some(false)).unwrap()}
  }
  #[inline]
  pub fn storage(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(CustomResourceDefinitionVersion::VT_STORAGE, Some(false)).unwrap()}
  }
  #[inline]
  pub fn deprecated(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(CustomResourceDefinitionVersion::VT_DEPRECATED, Some(false)).unwrap()}
  }
  #[inline]
  pub fn deprecationWarning(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(CustomResourceDefinitionVersion::VT_DEPRECATIONWARNING, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn schema(&self) -> CustomResourceValidation<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<CustomResourceValidation>>(CustomResourceDefinitionVersion::VT_SCHEMA, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn subresources(&self) -> CustomResourceSubresources<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<CustomResourceSubresources>>(CustomResourceDefinitionVersion::VT_SUBRESOURCES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn additionalPrinterColumns(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<CustomResourceColumnDefinition<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<CustomResourceColumnDefinition>>>>(CustomResourceDefinitionVersion::VT_ADDITIONALPRINTERCOLUMNS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn selectableFields(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<SelectableField<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<SelectableField>>>>(CustomResourceDefinitionVersion::VT_SELECTABLEFIELDS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for CustomResourceDefinitionVersion<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("name", Self::VT_NAME, false)?
     .visit_field::<bool>("served", Self::VT_SERVED, false)?
     .visit_field::<bool>("storage", Self::VT_STORAGE, false)?
     .visit_field::<bool>("deprecated", Self::VT_DEPRECATED, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("deprecationWarning", Self::VT_DEPRECATIONWARNING, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<CustomResourceValidation>>("schema", Self::VT_SCHEMA, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<CustomResourceSubresources>>("subresources", Self::VT_SUBRESOURCES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<CustomResourceColumnDefinition>>>>("additionalPrinterColumns", Self::VT_ADDITIONALPRINTERCOLUMNS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<SelectableField>>>>("selectableFields", Self::VT_SELECTABLEFIELDS, false)?
     .finish();
    Ok(())
  }
}
pub struct CustomResourceDefinitionVersionArgs<'a> {
    pub name: Option<flatbuffers::WIPOffset<&'a str>>,
    pub served: bool,
    pub storage: bool,
    pub deprecated: bool,
    pub deprecationWarning: Option<flatbuffers::WIPOffset<&'a str>>,
    pub schema: Option<flatbuffers::WIPOffset<CustomResourceValidation<'a>>>,
    pub subresources: Option<flatbuffers::WIPOffset<CustomResourceSubresources<'a>>>,
    pub additionalPrinterColumns: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<CustomResourceColumnDefinition<'a>>>>>,
    pub selectableFields: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<SelectableField<'a>>>>>,
}
impl<'a> Default for CustomResourceDefinitionVersionArgs<'a> {
  #[inline]
  fn default() -> Self {
    CustomResourceDefinitionVersionArgs {
      name: None,
      served: false,
      storage: false,
      deprecated: false,
      deprecationWarning: None,
      schema: None,
      subresources: None,
      additionalPrinterColumns: None,
      selectableFields: None,
    }
  }
}

impl Serialize for CustomResourceDefinitionVersion<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("CustomResourceDefinitionVersion", 9)?;
      s.serialize_field("name", &self.name())?;
      s.serialize_field("served", &self.served())?;
      s.serialize_field("storage", &self.storage())?;
      s.serialize_field("deprecated", &self.deprecated())?;
      s.serialize_field("deprecationWarning", &self.deprecationWarning())?;
      s.serialize_field("schema", &self.schema())?;
      s.serialize_field("subresources", &self.subresources())?;
      s.serialize_field("additionalPrinterColumns", &self.additionalPrinterColumns())?;
      s.serialize_field("selectableFields", &self.selectableFields())?;
    s.end()
  }
}

pub struct CustomResourceDefinitionVersionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> CustomResourceDefinitionVersionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_name(&mut self, name: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionVersion::VT_NAME, name);
  }
  #[inline]
  pub fn add_served(&mut self, served: bool) {
    self.fbb_.push_slot::<bool>(CustomResourceDefinitionVersion::VT_SERVED, served, false);
  }
  #[inline]
  pub fn add_storage(&mut self, storage: bool) {
    self.fbb_.push_slot::<bool>(CustomResourceDefinitionVersion::VT_STORAGE, storage, false);
  }
  #[inline]
  pub fn add_deprecated(&mut self, deprecated: bool) {
    self.fbb_.push_slot::<bool>(CustomResourceDefinitionVersion::VT_DEPRECATED, deprecated, false);
  }
  #[inline]
  pub fn add_deprecationWarning(&mut self, deprecationWarning: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionVersion::VT_DEPRECATIONWARNING, deprecationWarning);
  }
  #[inline]
  pub fn add_schema(&mut self, schema: flatbuffers::WIPOffset<CustomResourceValidation<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<CustomResourceValidation>>(CustomResourceDefinitionVersion::VT_SCHEMA, schema);
  }
  #[inline]
  pub fn add_subresources(&mut self, subresources: flatbuffers::WIPOffset<CustomResourceSubresources<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<CustomResourceSubresources>>(CustomResourceDefinitionVersion::VT_SUBRESOURCES, subresources);
  }
  #[inline]
  pub fn add_additionalPrinterColumns(&mut self, additionalPrinterColumns: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<CustomResourceColumnDefinition<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionVersion::VT_ADDITIONALPRINTERCOLUMNS, additionalPrinterColumns);
  }
  #[inline]
  pub fn add_selectableFields(&mut self, selectableFields: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<SelectableField<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(CustomResourceDefinitionVersion::VT_SELECTABLEFIELDS, selectableFields);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> CustomResourceDefinitionVersionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    CustomResourceDefinitionVersionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<CustomResourceDefinitionVersion<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for CustomResourceDefinitionVersion<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("CustomResourceDefinitionVersion");
      ds.field("name", &self.name());
      ds.field("served", &self.served());
      ds.field("storage", &self.storage());
      ds.field("deprecated", &self.deprecated());
      ds.field("deprecationWarning", &self.deprecationWarning());
      ds.field("schema", &self.schema());
      ds.field("subresources", &self.subresources());
      ds.field("additionalPrinterColumns", &self.additionalPrinterColumns());
      ds.field("selectableFields", &self.selectableFields());
      ds.finish()
  }
}

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
pub enum UpdateOptionsOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct UpdateOptions<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for UpdateOptions<'a> {
  type Inner = UpdateOptions<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> UpdateOptions<'a> {
  pub const VT_DRYRUN: flatbuffers::VOffsetT = 4;
  pub const VT_FIELDMANAGER: flatbuffers::VOffsetT = 6;
  pub const VT_FIELDVALIDATION: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    UpdateOptions { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args UpdateOptionsArgs<'args>
  ) -> flatbuffers::WIPOffset<UpdateOptions<'bldr>> {
    let mut builder = UpdateOptionsBuilder::new(_fbb);
    if let Some(x) = args.fieldValidation { builder.add_fieldValidation(x); }
    if let Some(x) = args.fieldManager { builder.add_fieldManager(x); }
    if let Some(x) = args.dryRun { builder.add_dryRun(x); }
    builder.finish()
  }


  #[inline]
  pub fn dryRun(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(UpdateOptions::VT_DRYRUN, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn fieldManager(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(UpdateOptions::VT_FIELDMANAGER, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn fieldValidation(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(UpdateOptions::VT_FIELDVALIDATION, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for UpdateOptions<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("dryRun", Self::VT_DRYRUN, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fieldManager", Self::VT_FIELDMANAGER, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fieldValidation", Self::VT_FIELDVALIDATION, false)?
     .finish();
    Ok(())
  }
}
pub struct UpdateOptionsArgs<'a> {
    pub dryRun: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub fieldManager: Option<flatbuffers::WIPOffset<&'a str>>,
    pub fieldValidation: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for UpdateOptionsArgs<'a> {
  #[inline]
  fn default() -> Self {
    UpdateOptionsArgs {
      dryRun: None,
      fieldManager: None,
      fieldValidation: None,
    }
  }
}

impl Serialize for UpdateOptions<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("UpdateOptions", 3)?;
      s.serialize_field("dryRun", &self.dryRun())?;
      s.serialize_field("fieldManager", &self.fieldManager())?;
      s.serialize_field("fieldValidation", &self.fieldValidation())?;
    s.end()
  }
}

pub struct UpdateOptionsBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> UpdateOptionsBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_dryRun(&mut self, dryRun: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(UpdateOptions::VT_DRYRUN, dryRun);
  }
  #[inline]
  pub fn add_fieldManager(&mut self, fieldManager: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(UpdateOptions::VT_FIELDMANAGER, fieldManager);
  }
  #[inline]
  pub fn add_fieldValidation(&mut self, fieldValidation: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(UpdateOptions::VT_FIELDVALIDATION, fieldValidation);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> UpdateOptionsBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    UpdateOptionsBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<UpdateOptions<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for UpdateOptions<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("UpdateOptions");
      ds.field("dryRun", &self.dryRun());
      ds.field("fieldManager", &self.fieldManager());
      ds.field("fieldValidation", &self.fieldValidation());
      ds.finish()
  }
}

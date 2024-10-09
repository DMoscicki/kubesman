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
pub enum FlexVolumeSourceOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct FlexVolumeSource<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for FlexVolumeSource<'a> {
  type Inner = FlexVolumeSource<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> FlexVolumeSource<'a> {
  pub const VT_DRIVER: flatbuffers::VOffsetT = 4;
  pub const VT_FSTYPE: flatbuffers::VOffsetT = 6;
  pub const VT_SECRETREF: flatbuffers::VOffsetT = 8;
  pub const VT_READONLY: flatbuffers::VOffsetT = 10;
  pub const VT_OPTIONS: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    FlexVolumeSource { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args FlexVolumeSourceArgs<'args>
  ) -> flatbuffers::WIPOffset<FlexVolumeSource<'bldr>> {
    let mut builder = FlexVolumeSourceBuilder::new(_fbb);
    if let Some(x) = args.options { builder.add_options(x); }
    if let Some(x) = args.secretRef { builder.add_secretRef(x); }
    if let Some(x) = args.fsType { builder.add_fsType(x); }
    if let Some(x) = args.driver { builder.add_driver(x); }
    builder.add_readOnly(args.readOnly);
    builder.finish()
  }


  #[inline]
  pub fn driver(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(FlexVolumeSource::VT_DRIVER, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn fsType(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(FlexVolumeSource::VT_FSTYPE, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn secretRef(&self) -> LocalObjectReference<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<LocalObjectReference>>(FlexVolumeSource::VT_SECRETREF, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn readOnly(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(FlexVolumeSource::VT_READONLY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn options(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<flex_volume_source_::OptionsEntry<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<flex_volume_source_::OptionsEntry>>>>(FlexVolumeSource::VT_OPTIONS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for FlexVolumeSource<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("driver", Self::VT_DRIVER, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fsType", Self::VT_FSTYPE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<LocalObjectReference>>("secretRef", Self::VT_SECRETREF, false)?
     .visit_field::<bool>("readOnly", Self::VT_READONLY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<flex_volume_source_::OptionsEntry>>>>("options", Self::VT_OPTIONS, false)?
     .finish();
    Ok(())
  }
}
pub struct FlexVolumeSourceArgs<'a> {
    pub driver: Option<flatbuffers::WIPOffset<&'a str>>,
    pub fsType: Option<flatbuffers::WIPOffset<&'a str>>,
    pub secretRef: Option<flatbuffers::WIPOffset<LocalObjectReference<'a>>>,
    pub readOnly: bool,
    pub options: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<flex_volume_source_::OptionsEntry<'a>>>>>,
}
impl<'a> Default for FlexVolumeSourceArgs<'a> {
  #[inline]
  fn default() -> Self {
    FlexVolumeSourceArgs {
      driver: None,
      fsType: None,
      secretRef: None,
      readOnly: false,
      options: None,
    }
  }
}

impl Serialize for FlexVolumeSource<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("FlexVolumeSource", 5)?;
      s.serialize_field("driver", &self.driver())?;
      s.serialize_field("fsType", &self.fsType())?;
      s.serialize_field("secretRef", &self.secretRef())?;
      s.serialize_field("readOnly", &self.readOnly())?;
      s.serialize_field("options", &self.options())?;
    s.end()
  }
}

pub struct FlexVolumeSourceBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> FlexVolumeSourceBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_driver(&mut self, driver: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FlexVolumeSource::VT_DRIVER, driver);
  }
  #[inline]
  pub fn add_fsType(&mut self, fsType: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FlexVolumeSource::VT_FSTYPE, fsType);
  }
  #[inline]
  pub fn add_secretRef(&mut self, secretRef: flatbuffers::WIPOffset<LocalObjectReference<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<LocalObjectReference>>(FlexVolumeSource::VT_SECRETREF, secretRef);
  }
  #[inline]
  pub fn add_readOnly(&mut self, readOnly: bool) {
    self.fbb_.push_slot::<bool>(FlexVolumeSource::VT_READONLY, readOnly, false);
  }
  #[inline]
  pub fn add_options(&mut self, options: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<flex_volume_source_::OptionsEntry<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(FlexVolumeSource::VT_OPTIONS, options);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> FlexVolumeSourceBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    FlexVolumeSourceBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<FlexVolumeSource<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for FlexVolumeSource<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("FlexVolumeSource");
      ds.field("driver", &self.driver());
      ds.field("fsType", &self.fsType());
      ds.field("secretRef", &self.secretRef());
      ds.field("readOnly", &self.readOnly());
      ds.field("options", &self.options());
      ds.finish()
  }
}

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
pub enum APIVersionDiscoveryOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct APIVersionDiscovery<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for APIVersionDiscovery<'a> {
  type Inner = APIVersionDiscovery<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> APIVersionDiscovery<'a> {
  pub const VT_VERSION: flatbuffers::VOffsetT = 4;
  pub const VT_RESOURCES: flatbuffers::VOffsetT = 6;
  pub const VT_FRESHNESS: flatbuffers::VOffsetT = 8;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    APIVersionDiscovery { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args APIVersionDiscoveryArgs<'args>
  ) -> flatbuffers::WIPOffset<APIVersionDiscovery<'bldr>> {
    let mut builder = APIVersionDiscoveryBuilder::new(_fbb);
    if let Some(x) = args.freshness { builder.add_freshness(x); }
    if let Some(x) = args.resources { builder.add_resources(x); }
    if let Some(x) = args.version { builder.add_version(x); }
    builder.finish()
  }


  #[inline]
  pub fn version(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIVersionDiscovery::VT_VERSION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn resources(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResourceDiscovery<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResourceDiscovery>>>>(APIVersionDiscovery::VT_RESOURCES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn freshness(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIVersionDiscovery::VT_FRESHNESS, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for APIVersionDiscovery<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("version", Self::VT_VERSION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<APIResourceDiscovery>>>>("resources", Self::VT_RESOURCES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("freshness", Self::VT_FRESHNESS, false)?
     .finish();
    Ok(())
  }
}
pub struct APIVersionDiscoveryArgs<'a> {
    pub version: Option<flatbuffers::WIPOffset<&'a str>>,
    pub resources: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResourceDiscovery<'a>>>>>,
    pub freshness: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for APIVersionDiscoveryArgs<'a> {
  #[inline]
  fn default() -> Self {
    APIVersionDiscoveryArgs {
      version: None,
      resources: None,
      freshness: None,
    }
  }
}

impl Serialize for APIVersionDiscovery<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("APIVersionDiscovery", 3)?;
      s.serialize_field("version", &self.version())?;
      s.serialize_field("resources", &self.resources())?;
      s.serialize_field("freshness", &self.freshness())?;
    s.end()
  }
}

pub struct APIVersionDiscoveryBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> APIVersionDiscoveryBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_version(&mut self, version: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIVersionDiscovery::VT_VERSION, version);
  }
  #[inline]
  pub fn add_resources(&mut self, resources: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<APIResourceDiscovery<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIVersionDiscovery::VT_RESOURCES, resources);
  }
  #[inline]
  pub fn add_freshness(&mut self, freshness: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIVersionDiscovery::VT_FRESHNESS, freshness);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> APIVersionDiscoveryBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    APIVersionDiscoveryBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<APIVersionDiscovery<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for APIVersionDiscovery<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("APIVersionDiscovery");
      ds.field("version", &self.version());
      ds.field("resources", &self.resources());
      ds.field("freshness", &self.freshness());
      ds.finish()
  }
}

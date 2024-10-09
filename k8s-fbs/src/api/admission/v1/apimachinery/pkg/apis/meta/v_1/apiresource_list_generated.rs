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
pub enum APIResourceListOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct APIResourceList<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for APIResourceList<'a> {
  type Inner = APIResourceList<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> APIResourceList<'a> {
  pub const VT_GROUPVERSION: flatbuffers::VOffsetT = 4;
  pub const VT_RESOURCES: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    APIResourceList { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args APIResourceListArgs<'args>
  ) -> flatbuffers::WIPOffset<APIResourceList<'bldr>> {
    let mut builder = APIResourceListBuilder::new(_fbb);
    if let Some(x) = args.resources { builder.add_resources(x); }
    if let Some(x) = args.groupVersion { builder.add_groupVersion(x); }
    builder.finish()
  }


  #[inline]
  pub fn groupVersion(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(APIResourceList::VT_GROUPVERSION, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn resources(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResource<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResource>>>>(APIResourceList::VT_RESOURCES, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for APIResourceList<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("groupVersion", Self::VT_GROUPVERSION, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<APIResource>>>>("resources", Self::VT_RESOURCES, false)?
     .finish();
    Ok(())
  }
}
pub struct APIResourceListArgs<'a> {
    pub groupVersion: Option<flatbuffers::WIPOffset<&'a str>>,
    pub resources: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIResource<'a>>>>>,
}
impl<'a> Default for APIResourceListArgs<'a> {
  #[inline]
  fn default() -> Self {
    APIResourceListArgs {
      groupVersion: None,
      resources: None,
    }
  }
}

impl Serialize for APIResourceList<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("APIResourceList", 2)?;
      s.serialize_field("groupVersion", &self.groupVersion())?;
      s.serialize_field("resources", &self.resources())?;
    s.end()
  }
}

pub struct APIResourceListBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> APIResourceListBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_groupVersion(&mut self, groupVersion: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResourceList::VT_GROUPVERSION, groupVersion);
  }
  #[inline]
  pub fn add_resources(&mut self, resources: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<APIResource<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIResourceList::VT_RESOURCES, resources);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> APIResourceListBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    APIResourceListBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<APIResourceList<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for APIResourceList<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("APIResourceList");
      ds.field("groupVersion", &self.groupVersion());
      ds.field("resources", &self.resources());
      ds.finish()
  }
}

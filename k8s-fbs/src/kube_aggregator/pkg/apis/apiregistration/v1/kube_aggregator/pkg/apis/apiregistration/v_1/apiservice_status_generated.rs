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
pub enum APIServiceStatusOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct APIServiceStatus<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for APIServiceStatus<'a> {
  type Inner = APIServiceStatus<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> APIServiceStatus<'a> {
  pub const VT_CONDITIONS: flatbuffers::VOffsetT = 4;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    APIServiceStatus { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args APIServiceStatusArgs<'args>
  ) -> flatbuffers::WIPOffset<APIServiceStatus<'bldr>> {
    let mut builder = APIServiceStatusBuilder::new(_fbb);
    if let Some(x) = args.conditions { builder.add_conditions(x); }
    builder.finish()
  }


  #[inline]
  pub fn conditions(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIServiceCondition<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIServiceCondition>>>>(APIServiceStatus::VT_CONDITIONS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for APIServiceStatus<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<APIServiceCondition>>>>("conditions", Self::VT_CONDITIONS, false)?
     .finish();
    Ok(())
  }
}
pub struct APIServiceStatusArgs<'a> {
    pub conditions: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<APIServiceCondition<'a>>>>>,
}
impl<'a> Default for APIServiceStatusArgs<'a> {
  #[inline]
  fn default() -> Self {
    APIServiceStatusArgs {
      conditions: None,
    }
  }
}

impl Serialize for APIServiceStatus<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("APIServiceStatus", 1)?;
      s.serialize_field("conditions", &self.conditions())?;
    s.end()
  }
}

pub struct APIServiceStatusBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> APIServiceStatusBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_conditions(&mut self, conditions: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<APIServiceCondition<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(APIServiceStatus::VT_CONDITIONS, conditions);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> APIServiceStatusBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    APIServiceStatusBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<APIServiceStatus<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for APIServiceStatus<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("APIServiceStatus");
      ds.field("conditions", &self.conditions());
      ds.finish()
  }
}

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
pub enum NodeDaemonEndpointsOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct NodeDaemonEndpoints<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for NodeDaemonEndpoints<'a> {
  type Inner = NodeDaemonEndpoints<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> NodeDaemonEndpoints<'a> {
  pub const VT_KUBELETENDPOINT: flatbuffers::VOffsetT = 4;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    NodeDaemonEndpoints { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args NodeDaemonEndpointsArgs<'args>
  ) -> flatbuffers::WIPOffset<NodeDaemonEndpoints<'bldr>> {
    let mut builder = NodeDaemonEndpointsBuilder::new(_fbb);
    if let Some(x) = args.kubeletEndpoint { builder.add_kubeletEndpoint(x); }
    builder.finish()
  }


  #[inline]
  pub fn kubeletEndpoint(&self) -> DaemonEndpoint<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<DaemonEndpoint>>(NodeDaemonEndpoints::VT_KUBELETENDPOINT, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for NodeDaemonEndpoints<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<DaemonEndpoint>>("kubeletEndpoint", Self::VT_KUBELETENDPOINT, false)?
     .finish();
    Ok(())
  }
}
pub struct NodeDaemonEndpointsArgs<'a> {
    pub kubeletEndpoint: Option<flatbuffers::WIPOffset<DaemonEndpoint<'a>>>,
}
impl<'a> Default for NodeDaemonEndpointsArgs<'a> {
  #[inline]
  fn default() -> Self {
    NodeDaemonEndpointsArgs {
      kubeletEndpoint: None,
    }
  }
}

impl Serialize for NodeDaemonEndpoints<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("NodeDaemonEndpoints", 1)?;
      s.serialize_field("kubeletEndpoint", &self.kubeletEndpoint())?;
    s.end()
  }
}

pub struct NodeDaemonEndpointsBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> NodeDaemonEndpointsBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_kubeletEndpoint(&mut self, kubeletEndpoint: flatbuffers::WIPOffset<DaemonEndpoint<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<DaemonEndpoint>>(NodeDaemonEndpoints::VT_KUBELETENDPOINT, kubeletEndpoint);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> NodeDaemonEndpointsBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    NodeDaemonEndpointsBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<NodeDaemonEndpoints<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for NodeDaemonEndpoints<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("NodeDaemonEndpoints");
      ds.field("kubeletEndpoint", &self.kubeletEndpoint());
      ds.finish()
  }
}

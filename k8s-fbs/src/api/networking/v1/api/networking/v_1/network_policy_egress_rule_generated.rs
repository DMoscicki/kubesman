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
pub enum NetworkPolicyEgressRuleOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct NetworkPolicyEgressRule<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for NetworkPolicyEgressRule<'a> {
  type Inner = NetworkPolicyEgressRule<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> NetworkPolicyEgressRule<'a> {
  pub const VT_PORTS: flatbuffers::VOffsetT = 4;
  pub const VT_TO: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    NetworkPolicyEgressRule { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args NetworkPolicyEgressRuleArgs<'args>
  ) -> flatbuffers::WIPOffset<NetworkPolicyEgressRule<'bldr>> {
    let mut builder = NetworkPolicyEgressRuleBuilder::new(_fbb);
    if let Some(x) = args.to { builder.add_to(x); }
    if let Some(x) = args.ports { builder.add_ports(x); }
    builder.finish()
  }


  #[inline]
  pub fn ports(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPort<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPort>>>>(NetworkPolicyEgressRule::VT_PORTS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn to(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPeer<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPeer>>>>(NetworkPolicyEgressRule::VT_TO, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for NetworkPolicyEgressRule<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<NetworkPolicyPort>>>>("ports", Self::VT_PORTS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<NetworkPolicyPeer>>>>("to", Self::VT_TO, false)?
     .finish();
    Ok(())
  }
}
pub struct NetworkPolicyEgressRuleArgs<'a> {
    pub ports: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPort<'a>>>>>,
    pub to: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NetworkPolicyPeer<'a>>>>>,
}
impl<'a> Default for NetworkPolicyEgressRuleArgs<'a> {
  #[inline]
  fn default() -> Self {
    NetworkPolicyEgressRuleArgs {
      ports: None,
      to: None,
    }
  }
}

impl Serialize for NetworkPolicyEgressRule<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("NetworkPolicyEgressRule", 2)?;
      s.serialize_field("ports", &self.ports())?;
      s.serialize_field("to", &self.to())?;
    s.end()
  }
}

pub struct NetworkPolicyEgressRuleBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> NetworkPolicyEgressRuleBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_ports(&mut self, ports: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<NetworkPolicyPort<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NetworkPolicyEgressRule::VT_PORTS, ports);
  }
  #[inline]
  pub fn add_to(&mut self, to: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<NetworkPolicyPeer<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NetworkPolicyEgressRule::VT_TO, to);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> NetworkPolicyEgressRuleBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    NetworkPolicyEgressRuleBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<NetworkPolicyEgressRule<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for NetworkPolicyEgressRule<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("NetworkPolicyEgressRule");
      ds.field("ports", &self.ports());
      ds.field("to", &self.to());
      ds.finish()
  }
}

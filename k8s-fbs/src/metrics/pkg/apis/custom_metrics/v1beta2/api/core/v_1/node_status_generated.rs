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
pub enum NodeStatusOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct NodeStatus<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for NodeStatus<'a> {
  type Inner = NodeStatus<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> NodeStatus<'a> {
  pub const VT_CAPACITY: flatbuffers::VOffsetT = 4;
  pub const VT_ALLOCATABLE: flatbuffers::VOffsetT = 6;
  pub const VT_PHASE: flatbuffers::VOffsetT = 8;
  pub const VT_CONDITIONS: flatbuffers::VOffsetT = 10;
  pub const VT_ADDRESSES: flatbuffers::VOffsetT = 12;
  pub const VT_DAEMONENDPOINTS: flatbuffers::VOffsetT = 14;
  pub const VT_NODEINFO: flatbuffers::VOffsetT = 16;
  pub const VT_IMAGES: flatbuffers::VOffsetT = 18;
  pub const VT_VOLUMESINUSE: flatbuffers::VOffsetT = 20;
  pub const VT_VOLUMESATTACHED: flatbuffers::VOffsetT = 22;
  pub const VT_CONFIG: flatbuffers::VOffsetT = 24;
  pub const VT_RUNTIMEHANDLERS: flatbuffers::VOffsetT = 26;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    NodeStatus { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args NodeStatusArgs<'args>
  ) -> flatbuffers::WIPOffset<NodeStatus<'bldr>> {
    let mut builder = NodeStatusBuilder::new(_fbb);
    if let Some(x) = args.runtimeHandlers { builder.add_runtimeHandlers(x); }
    if let Some(x) = args.config { builder.add_config(x); }
    if let Some(x) = args.volumesAttached { builder.add_volumesAttached(x); }
    if let Some(x) = args.volumesInUse { builder.add_volumesInUse(x); }
    if let Some(x) = args.images { builder.add_images(x); }
    if let Some(x) = args.nodeInfo { builder.add_nodeInfo(x); }
    if let Some(x) = args.daemonEndpoints { builder.add_daemonEndpoints(x); }
    if let Some(x) = args.addresses { builder.add_addresses(x); }
    if let Some(x) = args.conditions { builder.add_conditions(x); }
    if let Some(x) = args.phase { builder.add_phase(x); }
    if let Some(x) = args.allocatable { builder.add_allocatable(x); }
    if let Some(x) = args.capacity { builder.add_capacity(x); }
    builder.finish()
  }


  #[inline]
  pub fn capacity(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::CapacityEntry<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::CapacityEntry>>>>(NodeStatus::VT_CAPACITY, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn allocatable(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::AllocatableEntry<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::AllocatableEntry>>>>(NodeStatus::VT_ALLOCATABLE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn phase(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(NodeStatus::VT_PHASE, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn conditions(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeCondition<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeCondition>>>>(NodeStatus::VT_CONDITIONS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn addresses(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeAddress<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeAddress>>>>(NodeStatus::VT_ADDRESSES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn daemonEndpoints(&self) -> NodeDaemonEndpoints<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<NodeDaemonEndpoints>>(NodeStatus::VT_DAEMONENDPOINTS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn nodeInfo(&self) -> NodeSystemInfo<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<NodeSystemInfo>>(NodeStatus::VT_NODEINFO, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn images(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ContainerImage<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ContainerImage>>>>(NodeStatus::VT_IMAGES, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn volumesInUse(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>(NodeStatus::VT_VOLUMESINUSE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn volumesAttached(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<AttachedVolume<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<AttachedVolume>>>>(NodeStatus::VT_VOLUMESATTACHED, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn config(&self) -> NodeConfigStatus<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<NodeConfigStatus>>(NodeStatus::VT_CONFIG, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn runtimeHandlers(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeRuntimeHandler<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeRuntimeHandler>>>>(NodeStatus::VT_RUNTIMEHANDLERS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for NodeStatus<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<node_status_::CapacityEntry>>>>("capacity", Self::VT_CAPACITY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<node_status_::AllocatableEntry>>>>("allocatable", Self::VT_ALLOCATABLE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("phase", Self::VT_PHASE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<NodeCondition>>>>("conditions", Self::VT_CONDITIONS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<NodeAddress>>>>("addresses", Self::VT_ADDRESSES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<NodeDaemonEndpoints>>("daemonEndpoints", Self::VT_DAEMONENDPOINTS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<NodeSystemInfo>>("nodeInfo", Self::VT_NODEINFO, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<ContainerImage>>>>("images", Self::VT_IMAGES, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<&'_ str>>>>("volumesInUse", Self::VT_VOLUMESINUSE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<AttachedVolume>>>>("volumesAttached", Self::VT_VOLUMESATTACHED, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<NodeConfigStatus>>("config", Self::VT_CONFIG, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<NodeRuntimeHandler>>>>("runtimeHandlers", Self::VT_RUNTIMEHANDLERS, false)?
     .finish();
    Ok(())
  }
}
pub struct NodeStatusArgs<'a> {
    pub capacity: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::CapacityEntry<'a>>>>>,
    pub allocatable: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<node_status_::AllocatableEntry<'a>>>>>,
    pub phase: Option<flatbuffers::WIPOffset<&'a str>>,
    pub conditions: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeCondition<'a>>>>>,
    pub addresses: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeAddress<'a>>>>>,
    pub daemonEndpoints: Option<flatbuffers::WIPOffset<NodeDaemonEndpoints<'a>>>,
    pub nodeInfo: Option<flatbuffers::WIPOffset<NodeSystemInfo<'a>>>,
    pub images: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<ContainerImage<'a>>>>>,
    pub volumesInUse: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<&'a str>>>>,
    pub volumesAttached: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<AttachedVolume<'a>>>>>,
    pub config: Option<flatbuffers::WIPOffset<NodeConfigStatus<'a>>>,
    pub runtimeHandlers: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<NodeRuntimeHandler<'a>>>>>,
}
impl<'a> Default for NodeStatusArgs<'a> {
  #[inline]
  fn default() -> Self {
    NodeStatusArgs {
      capacity: None,
      allocatable: None,
      phase: None,
      conditions: None,
      addresses: None,
      daemonEndpoints: None,
      nodeInfo: None,
      images: None,
      volumesInUse: None,
      volumesAttached: None,
      config: None,
      runtimeHandlers: None,
    }
  }
}

impl Serialize for NodeStatus<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("NodeStatus", 12)?;
      s.serialize_field("capacity", &self.capacity())?;
      s.serialize_field("allocatable", &self.allocatable())?;
      s.serialize_field("phase", &self.phase())?;
      s.serialize_field("conditions", &self.conditions())?;
      s.serialize_field("addresses", &self.addresses())?;
      s.serialize_field("daemonEndpoints", &self.daemonEndpoints())?;
      s.serialize_field("nodeInfo", &self.nodeInfo())?;
      s.serialize_field("images", &self.images())?;
      s.serialize_field("volumesInUse", &self.volumesInUse())?;
      s.serialize_field("volumesAttached", &self.volumesAttached())?;
      s.serialize_field("config", &self.config())?;
      s.serialize_field("runtimeHandlers", &self.runtimeHandlers())?;
    s.end()
  }
}

pub struct NodeStatusBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> NodeStatusBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_capacity(&mut self, capacity: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<node_status_::CapacityEntry<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_CAPACITY, capacity);
  }
  #[inline]
  pub fn add_allocatable(&mut self, allocatable: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<node_status_::AllocatableEntry<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_ALLOCATABLE, allocatable);
  }
  #[inline]
  pub fn add_phase(&mut self, phase: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_PHASE, phase);
  }
  #[inline]
  pub fn add_conditions(&mut self, conditions: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<NodeCondition<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_CONDITIONS, conditions);
  }
  #[inline]
  pub fn add_addresses(&mut self, addresses: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<NodeAddress<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_ADDRESSES, addresses);
  }
  #[inline]
  pub fn add_daemonEndpoints(&mut self, daemonEndpoints: flatbuffers::WIPOffset<NodeDaemonEndpoints<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<NodeDaemonEndpoints>>(NodeStatus::VT_DAEMONENDPOINTS, daemonEndpoints);
  }
  #[inline]
  pub fn add_nodeInfo(&mut self, nodeInfo: flatbuffers::WIPOffset<NodeSystemInfo<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<NodeSystemInfo>>(NodeStatus::VT_NODEINFO, nodeInfo);
  }
  #[inline]
  pub fn add_images(&mut self, images: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<ContainerImage<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_IMAGES, images);
  }
  #[inline]
  pub fn add_volumesInUse(&mut self, volumesInUse: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<&'b  str>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_VOLUMESINUSE, volumesInUse);
  }
  #[inline]
  pub fn add_volumesAttached(&mut self, volumesAttached: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<AttachedVolume<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_VOLUMESATTACHED, volumesAttached);
  }
  #[inline]
  pub fn add_config(&mut self, config: flatbuffers::WIPOffset<NodeConfigStatus<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<NodeConfigStatus>>(NodeStatus::VT_CONFIG, config);
  }
  #[inline]
  pub fn add_runtimeHandlers(&mut self, runtimeHandlers: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<NodeRuntimeHandler<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(NodeStatus::VT_RUNTIMEHANDLERS, runtimeHandlers);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> NodeStatusBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    NodeStatusBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<NodeStatus<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for NodeStatus<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("NodeStatus");
      ds.field("capacity", &self.capacity());
      ds.field("allocatable", &self.allocatable());
      ds.field("phase", &self.phase());
      ds.field("conditions", &self.conditions());
      ds.field("addresses", &self.addresses());
      ds.field("daemonEndpoints", &self.daemonEndpoints());
      ds.field("nodeInfo", &self.nodeInfo());
      ds.field("images", &self.images());
      ds.field("volumesInUse", &self.volumesInUse());
      ds.field("volumesAttached", &self.volumesAttached());
      ds.field("config", &self.config());
      ds.field("runtimeHandlers", &self.runtimeHandlers());
      ds.finish()
  }
}

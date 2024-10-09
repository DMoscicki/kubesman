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
pub enum SessionAffinityConfigOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct SessionAffinityConfig<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for SessionAffinityConfig<'a> {
  type Inner = SessionAffinityConfig<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> SessionAffinityConfig<'a> {
  pub const VT_CLIENTIP: flatbuffers::VOffsetT = 4;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    SessionAffinityConfig { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args SessionAffinityConfigArgs<'args>
  ) -> flatbuffers::WIPOffset<SessionAffinityConfig<'bldr>> {
    let mut builder = SessionAffinityConfigBuilder::new(_fbb);
    if let Some(x) = args.clientIP { builder.add_clientIP(x); }
    builder.finish()
  }


  #[inline]
  pub fn clientIP(&self) -> ClientIPConfig<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<ClientIPConfig>>(SessionAffinityConfig::VT_CLIENTIP, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for SessionAffinityConfig<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<ClientIPConfig>>("clientIP", Self::VT_CLIENTIP, false)?
     .finish();
    Ok(())
  }
}
pub struct SessionAffinityConfigArgs<'a> {
    pub clientIP: Option<flatbuffers::WIPOffset<ClientIPConfig<'a>>>,
}
impl<'a> Default for SessionAffinityConfigArgs<'a> {
  #[inline]
  fn default() -> Self {
    SessionAffinityConfigArgs {
      clientIP: None,
    }
  }
}

impl Serialize for SessionAffinityConfig<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("SessionAffinityConfig", 1)?;
      s.serialize_field("clientIP", &self.clientIP())?;
    s.end()
  }
}

pub struct SessionAffinityConfigBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> SessionAffinityConfigBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_clientIP(&mut self, clientIP: flatbuffers::WIPOffset<ClientIPConfig<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<ClientIPConfig>>(SessionAffinityConfig::VT_CLIENTIP, clientIP);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> SessionAffinityConfigBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    SessionAffinityConfigBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<SessionAffinityConfig<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for SessionAffinityConfig<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("SessionAffinityConfig");
      ds.field("clientIP", &self.clientIP());
      ds.finish()
  }
}

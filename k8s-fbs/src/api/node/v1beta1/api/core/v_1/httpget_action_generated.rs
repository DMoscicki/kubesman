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
pub enum HTTPGetActionOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct HTTPGetAction<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for HTTPGetAction<'a> {
  type Inner = HTTPGetAction<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> HTTPGetAction<'a> {
  pub const VT_PATH: flatbuffers::VOffsetT = 4;
  pub const VT_PORT: flatbuffers::VOffsetT = 6;
  pub const VT_HOST: flatbuffers::VOffsetT = 8;
  pub const VT_SCHEME: flatbuffers::VOffsetT = 10;
  pub const VT_HTTPHEADERS: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    HTTPGetAction { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args HTTPGetActionArgs<'args>
  ) -> flatbuffers::WIPOffset<HTTPGetAction<'bldr>> {
    let mut builder = HTTPGetActionBuilder::new(_fbb);
    if let Some(x) = args.httpHeaders { builder.add_httpHeaders(x); }
    if let Some(x) = args.scheme { builder.add_scheme(x); }
    if let Some(x) = args.host { builder.add_host(x); }
    if let Some(x) = args.port { builder.add_port(x); }
    if let Some(x) = args.path { builder.add_path(x); }
    builder.finish()
  }


  #[inline]
  pub fn path(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(HTTPGetAction::VT_PATH, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn port(&self) -> super::super::super::apimachinery::pkg::util::intstr::IntOrString<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::util::intstr::IntOrString>>(HTTPGetAction::VT_PORT, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn host(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(HTTPGetAction::VT_HOST, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn scheme(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(HTTPGetAction::VT_SCHEME, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn httpHeaders(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<HTTPHeader<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<HTTPHeader>>>>(HTTPGetAction::VT_HTTPHEADERS, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for HTTPGetAction<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("path", Self::VT_PATH, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<super::super::super::apimachinery::pkg::util::intstr::IntOrString>>("port", Self::VT_PORT, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("host", Self::VT_HOST, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("scheme", Self::VT_SCHEME, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<HTTPHeader>>>>("httpHeaders", Self::VT_HTTPHEADERS, false)?
     .finish();
    Ok(())
  }
}
pub struct HTTPGetActionArgs<'a> {
    pub path: Option<flatbuffers::WIPOffset<&'a str>>,
    pub port: Option<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::util::intstr::IntOrString<'a>>>,
    pub host: Option<flatbuffers::WIPOffset<&'a str>>,
    pub scheme: Option<flatbuffers::WIPOffset<&'a str>>,
    pub httpHeaders: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<HTTPHeader<'a>>>>>,
}
impl<'a> Default for HTTPGetActionArgs<'a> {
  #[inline]
  fn default() -> Self {
    HTTPGetActionArgs {
      path: None,
      port: None,
      host: None,
      scheme: None,
      httpHeaders: None,
    }
  }
}

impl Serialize for HTTPGetAction<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("HTTPGetAction", 5)?;
      s.serialize_field("path", &self.path())?;
      s.serialize_field("port", &self.port())?;
      s.serialize_field("host", &self.host())?;
      s.serialize_field("scheme", &self.scheme())?;
      s.serialize_field("httpHeaders", &self.httpHeaders())?;
    s.end()
  }
}

pub struct HTTPGetActionBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> HTTPGetActionBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_path(&mut self, path: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPGetAction::VT_PATH, path);
  }
  #[inline]
  pub fn add_port(&mut self, port: flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::util::intstr::IntOrString<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<super::super::super::apimachinery::pkg::util::intstr::IntOrString>>(HTTPGetAction::VT_PORT, port);
  }
  #[inline]
  pub fn add_host(&mut self, host: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPGetAction::VT_HOST, host);
  }
  #[inline]
  pub fn add_scheme(&mut self, scheme: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPGetAction::VT_SCHEME, scheme);
  }
  #[inline]
  pub fn add_httpHeaders(&mut self, httpHeaders: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<HTTPHeader<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(HTTPGetAction::VT_HTTPHEADERS, httpHeaders);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> HTTPGetActionBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    HTTPGetActionBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<HTTPGetAction<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for HTTPGetAction<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("HTTPGetAction");
      ds.field("path", &self.path());
      ds.field("port", &self.port());
      ds.field("host", &self.host());
      ds.field("scheme", &self.scheme());
      ds.field("httpHeaders", &self.httpHeaders());
      ds.finish()
  }
}

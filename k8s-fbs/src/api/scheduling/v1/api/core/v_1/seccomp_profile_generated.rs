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
pub enum SeccompProfileOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct SeccompProfile<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for SeccompProfile<'a> {
  type Inner = SeccompProfile<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> SeccompProfile<'a> {
  pub const VT_TYPE_: flatbuffers::VOffsetT = 4;
  pub const VT_LOCALHOSTPROFILE: flatbuffers::VOffsetT = 6;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    SeccompProfile { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args SeccompProfileArgs<'args>
  ) -> flatbuffers::WIPOffset<SeccompProfile<'bldr>> {
    let mut builder = SeccompProfileBuilder::new(_fbb);
    if let Some(x) = args.localhostProfile { builder.add_localhostProfile(x); }
    if let Some(x) = args.type_ { builder.add_type_(x); }
    builder.finish()
  }


  #[inline]
  pub fn type_(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SeccompProfile::VT_TYPE_, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn localhostProfile(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(SeccompProfile::VT_LOCALHOSTPROFILE, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for SeccompProfile<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("type_", Self::VT_TYPE_, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("localhostProfile", Self::VT_LOCALHOSTPROFILE, false)?
     .finish();
    Ok(())
  }
}
pub struct SeccompProfileArgs<'a> {
    pub type_: Option<flatbuffers::WIPOffset<&'a str>>,
    pub localhostProfile: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for SeccompProfileArgs<'a> {
  #[inline]
  fn default() -> Self {
    SeccompProfileArgs {
      type_: None,
      localhostProfile: None,
    }
  }
}

impl Serialize for SeccompProfile<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("SeccompProfile", 2)?;
      s.serialize_field("type_", &self.type_())?;
      s.serialize_field("localhostProfile", &self.localhostProfile())?;
    s.end()
  }
}

pub struct SeccompProfileBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> SeccompProfileBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_type_(&mut self, type_: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SeccompProfile::VT_TYPE_, type_);
  }
  #[inline]
  pub fn add_localhostProfile(&mut self, localhostProfile: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(SeccompProfile::VT_LOCALHOSTPROFILE, localhostProfile);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> SeccompProfileBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    SeccompProfileBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<SeccompProfile<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for SeccompProfile<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("SeccompProfile");
      ds.field("type_", &self.type_());
      ds.field("localhostProfile", &self.localhostProfile());
      ds.finish()
  }
}

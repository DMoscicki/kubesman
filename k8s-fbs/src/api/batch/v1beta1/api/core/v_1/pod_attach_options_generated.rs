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
pub enum PodAttachOptionsOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodAttachOptions<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodAttachOptions<'a> {
  type Inner = PodAttachOptions<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodAttachOptions<'a> {
  pub const VT_STDIN: flatbuffers::VOffsetT = 4;
  pub const VT_STDOUT: flatbuffers::VOffsetT = 6;
  pub const VT_STDERR: flatbuffers::VOffsetT = 8;
  pub const VT_TTY: flatbuffers::VOffsetT = 10;
  pub const VT_CONTAINER: flatbuffers::VOffsetT = 12;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodAttachOptions { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodAttachOptionsArgs<'args>
  ) -> flatbuffers::WIPOffset<PodAttachOptions<'bldr>> {
    let mut builder = PodAttachOptionsBuilder::new(_fbb);
    if let Some(x) = args.container { builder.add_container(x); }
    builder.add_tty(args.tty);
    builder.add_stderr(args.stderr);
    builder.add_stdout(args.stdout);
    builder.add_stdin(args.stdin);
    builder.finish()
  }


  #[inline]
  pub fn stdin(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodAttachOptions::VT_STDIN, Some(false)).unwrap()}
  }
  #[inline]
  pub fn stdout(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodAttachOptions::VT_STDOUT, Some(false)).unwrap()}
  }
  #[inline]
  pub fn stderr(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodAttachOptions::VT_STDERR, Some(false)).unwrap()}
  }
  #[inline]
  pub fn tty(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodAttachOptions::VT_TTY, Some(false)).unwrap()}
  }
  #[inline]
  pub fn container(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PodAttachOptions::VT_CONTAINER, Some(&"0")).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodAttachOptions<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<bool>("stdin", Self::VT_STDIN, false)?
     .visit_field::<bool>("stdout", Self::VT_STDOUT, false)?
     .visit_field::<bool>("stderr", Self::VT_STDERR, false)?
     .visit_field::<bool>("tty", Self::VT_TTY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("container", Self::VT_CONTAINER, false)?
     .finish();
    Ok(())
  }
}
pub struct PodAttachOptionsArgs<'a> {
    pub stdin: bool,
    pub stdout: bool,
    pub stderr: bool,
    pub tty: bool,
    pub container: Option<flatbuffers::WIPOffset<&'a str>>,
}
impl<'a> Default for PodAttachOptionsArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodAttachOptionsArgs {
      stdin: false,
      stdout: false,
      stderr: false,
      tty: false,
      container: None,
    }
  }
}

impl Serialize for PodAttachOptions<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodAttachOptions", 5)?;
      s.serialize_field("stdin", &self.stdin())?;
      s.serialize_field("stdout", &self.stdout())?;
      s.serialize_field("stderr", &self.stderr())?;
      s.serialize_field("tty", &self.tty())?;
      s.serialize_field("container", &self.container())?;
    s.end()
  }
}

pub struct PodAttachOptionsBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodAttachOptionsBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_stdin(&mut self, stdin: bool) {
    self.fbb_.push_slot::<bool>(PodAttachOptions::VT_STDIN, stdin, false);
  }
  #[inline]
  pub fn add_stdout(&mut self, stdout: bool) {
    self.fbb_.push_slot::<bool>(PodAttachOptions::VT_STDOUT, stdout, false);
  }
  #[inline]
  pub fn add_stderr(&mut self, stderr: bool) {
    self.fbb_.push_slot::<bool>(PodAttachOptions::VT_STDERR, stderr, false);
  }
  #[inline]
  pub fn add_tty(&mut self, tty: bool) {
    self.fbb_.push_slot::<bool>(PodAttachOptions::VT_TTY, tty, false);
  }
  #[inline]
  pub fn add_container(&mut self, container: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodAttachOptions::VT_CONTAINER, container);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodAttachOptionsBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodAttachOptionsBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodAttachOptions<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodAttachOptions<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodAttachOptions");
      ds.field("stdin", &self.stdin());
      ds.field("stdout", &self.stdout());
      ds.field("stderr", &self.stderr());
      ds.field("tty", &self.tty());
      ds.field("container", &self.container());
      ds.finish()
  }
}

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
pub enum PodSecurityContextOffset {}
#[derive(Copy, Clone, PartialEq)]

pub struct PodSecurityContext<'a> {
  pub _tab: flatbuffers::Table<'a>,
}

impl<'a> flatbuffers::Follow<'a> for PodSecurityContext<'a> {
  type Inner = PodSecurityContext<'a>;
  #[inline]
  unsafe fn follow(buf: &'a [u8], loc: usize) -> Self::Inner {
    Self { _tab: flatbuffers::Table::new(buf, loc) }
  }
}

impl<'a> PodSecurityContext<'a> {
  pub const VT_SELINUXOPTIONS: flatbuffers::VOffsetT = 4;
  pub const VT_WINDOWSOPTIONS: flatbuffers::VOffsetT = 6;
  pub const VT_RUNASUSER: flatbuffers::VOffsetT = 8;
  pub const VT_RUNASGROUP: flatbuffers::VOffsetT = 10;
  pub const VT_RUNASNONROOT: flatbuffers::VOffsetT = 12;
  pub const VT_SUPPLEMENTALGROUPS: flatbuffers::VOffsetT = 14;
  pub const VT_FSGROUP: flatbuffers::VOffsetT = 16;
  pub const VT_SYSCTLS: flatbuffers::VOffsetT = 18;
  pub const VT_FSGROUPCHANGEPOLICY: flatbuffers::VOffsetT = 20;
  pub const VT_SECCOMPPROFILE: flatbuffers::VOffsetT = 22;
  pub const VT_APPARMORPROFILE: flatbuffers::VOffsetT = 24;

  #[inline]
  pub unsafe fn init_from_table(table: flatbuffers::Table<'a>) -> Self {
    PodSecurityContext { _tab: table }
  }
  #[allow(unused_mut)]
  pub fn create<'bldr: 'args, 'args: 'mut_bldr, 'mut_bldr, A: flatbuffers::Allocator + 'bldr>(
    _fbb: &'mut_bldr mut flatbuffers::FlatBufferBuilder<'bldr, A>,
    args: &'args PodSecurityContextArgs<'args>
  ) -> flatbuffers::WIPOffset<PodSecurityContext<'bldr>> {
    let mut builder = PodSecurityContextBuilder::new(_fbb);
    builder.add_fsGroup(args.fsGroup);
    builder.add_runAsGroup(args.runAsGroup);
    builder.add_runAsUser(args.runAsUser);
    if let Some(x) = args.appArmorProfile { builder.add_appArmorProfile(x); }
    if let Some(x) = args.seccompProfile { builder.add_seccompProfile(x); }
    if let Some(x) = args.fsGroupChangePolicy { builder.add_fsGroupChangePolicy(x); }
    if let Some(x) = args.sysctls { builder.add_sysctls(x); }
    if let Some(x) = args.supplementalGroups { builder.add_supplementalGroups(x); }
    if let Some(x) = args.windowsOptions { builder.add_windowsOptions(x); }
    if let Some(x) = args.seLinuxOptions { builder.add_seLinuxOptions(x); }
    builder.add_runAsNonRoot(args.runAsNonRoot);
    builder.finish()
  }


  #[inline]
  pub fn seLinuxOptions(&self) -> SELinuxOptions<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<SELinuxOptions>>(PodSecurityContext::VT_SELINUXOPTIONS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn windowsOptions(&self) -> WindowsSecurityContextOptions<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<WindowsSecurityContextOptions>>(PodSecurityContext::VT_WINDOWSOPTIONS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn runAsUser(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodSecurityContext::VT_RUNASUSER, Some(0)).unwrap()}
  }
  #[inline]
  pub fn runAsGroup(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodSecurityContext::VT_RUNASGROUP, Some(0)).unwrap()}
  }
  #[inline]
  pub fn runAsNonRoot(&self) -> bool {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<bool>(PodSecurityContext::VT_RUNASNONROOT, Some(false)).unwrap()}
  }
  #[inline]
  pub fn supplementalGroups(&self) -> flatbuffers::Vector<'a, i64> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, i64>>>(PodSecurityContext::VT_SUPPLEMENTALGROUPS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn fsGroup(&self) -> i64 {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<i64>(PodSecurityContext::VT_FSGROUP, Some(0)).unwrap()}
  }
  #[inline]
  pub fn sysctls(&self) -> flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<Sysctl<'a>>> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<Sysctl>>>>(PodSecurityContext::VT_SYSCTLS, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn fsGroupChangePolicy(&self) -> &'a str {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<&str>>(PodSecurityContext::VT_FSGROUPCHANGEPOLICY, Some(&"0")).unwrap()}
  }
  #[inline]
  pub fn seccompProfile(&self) -> SeccompProfile<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<SeccompProfile>>(PodSecurityContext::VT_SECCOMPPROFILE, Some(Default::default())).unwrap()}
  }
  #[inline]
  pub fn appArmorProfile(&self) -> AppArmorProfile<'a> {
    // Safety:
    // Created from valid Table for this object
    // which contains a valid value in this slot
    unsafe { self._tab.get::<flatbuffers::ForwardsUOffset<AppArmorProfile>>(PodSecurityContext::VT_APPARMORPROFILE, Some(Default::default())).unwrap()}
  }
}

impl flatbuffers::Verifiable for PodSecurityContext<'_> {
  #[inline]
  fn run_verifier(
    v: &mut flatbuffers::Verifier, pos: usize
  ) -> Result<(), flatbuffers::InvalidFlatbuffer> {
    use self::flatbuffers::Verifiable;
    v.visit_table(pos)?
     .visit_field::<flatbuffers::ForwardsUOffset<SELinuxOptions>>("seLinuxOptions", Self::VT_SELINUXOPTIONS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<WindowsSecurityContextOptions>>("windowsOptions", Self::VT_WINDOWSOPTIONS, false)?
     .visit_field::<i64>("runAsUser", Self::VT_RUNASUSER, false)?
     .visit_field::<i64>("runAsGroup", Self::VT_RUNASGROUP, false)?
     .visit_field::<bool>("runAsNonRoot", Self::VT_RUNASNONROOT, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, i64>>>("supplementalGroups", Self::VT_SUPPLEMENTALGROUPS, false)?
     .visit_field::<i64>("fsGroup", Self::VT_FSGROUP, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<flatbuffers::Vector<'_, flatbuffers::ForwardsUOffset<Sysctl>>>>("sysctls", Self::VT_SYSCTLS, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<&str>>("fsGroupChangePolicy", Self::VT_FSGROUPCHANGEPOLICY, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<SeccompProfile>>("seccompProfile", Self::VT_SECCOMPPROFILE, false)?
     .visit_field::<flatbuffers::ForwardsUOffset<AppArmorProfile>>("appArmorProfile", Self::VT_APPARMORPROFILE, false)?
     .finish();
    Ok(())
  }
}
pub struct PodSecurityContextArgs<'a> {
    pub seLinuxOptions: Option<flatbuffers::WIPOffset<SELinuxOptions<'a>>>,
    pub windowsOptions: Option<flatbuffers::WIPOffset<WindowsSecurityContextOptions<'a>>>,
    pub runAsUser: i64,
    pub runAsGroup: i64,
    pub runAsNonRoot: bool,
    pub supplementalGroups: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, i64>>>,
    pub fsGroup: i64,
    pub sysctls: Option<flatbuffers::WIPOffset<flatbuffers::Vector<'a, flatbuffers::ForwardsUOffset<Sysctl<'a>>>>>,
    pub fsGroupChangePolicy: Option<flatbuffers::WIPOffset<&'a str>>,
    pub seccompProfile: Option<flatbuffers::WIPOffset<SeccompProfile<'a>>>,
    pub appArmorProfile: Option<flatbuffers::WIPOffset<AppArmorProfile<'a>>>,
}
impl<'a> Default for PodSecurityContextArgs<'a> {
  #[inline]
  fn default() -> Self {
    PodSecurityContextArgs {
      seLinuxOptions: None,
      windowsOptions: None,
      runAsUser: 0,
      runAsGroup: 0,
      runAsNonRoot: false,
      supplementalGroups: None,
      fsGroup: 0,
      sysctls: None,
      fsGroupChangePolicy: None,
      seccompProfile: None,
      appArmorProfile: None,
    }
  }
}

impl Serialize for PodSecurityContext<'_> {
  fn serialize<S>(&self, serializer: S) -> Result<S::Ok, S::Error>
  where
    S: Serializer,
  {
    let mut s = serializer.serialize_struct("PodSecurityContext", 11)?;
      s.serialize_field("seLinuxOptions", &self.seLinuxOptions())?;
      s.serialize_field("windowsOptions", &self.windowsOptions())?;
      s.serialize_field("runAsUser", &self.runAsUser())?;
      s.serialize_field("runAsGroup", &self.runAsGroup())?;
      s.serialize_field("runAsNonRoot", &self.runAsNonRoot())?;
      s.serialize_field("supplementalGroups", &self.supplementalGroups())?;
      s.serialize_field("fsGroup", &self.fsGroup())?;
      s.serialize_field("sysctls", &self.sysctls())?;
      s.serialize_field("fsGroupChangePolicy", &self.fsGroupChangePolicy())?;
      s.serialize_field("seccompProfile", &self.seccompProfile())?;
      s.serialize_field("appArmorProfile", &self.appArmorProfile())?;
    s.end()
  }
}

pub struct PodSecurityContextBuilder<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> {
  fbb_: &'b mut flatbuffers::FlatBufferBuilder<'a, A>,
  start_: flatbuffers::WIPOffset<flatbuffers::TableUnfinishedWIPOffset>,
}
impl<'a: 'b, 'b, A: flatbuffers::Allocator + 'a> PodSecurityContextBuilder<'a, 'b, A> {
  #[inline]
  pub fn add_seLinuxOptions(&mut self, seLinuxOptions: flatbuffers::WIPOffset<SELinuxOptions<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<SELinuxOptions>>(PodSecurityContext::VT_SELINUXOPTIONS, seLinuxOptions);
  }
  #[inline]
  pub fn add_windowsOptions(&mut self, windowsOptions: flatbuffers::WIPOffset<WindowsSecurityContextOptions<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<WindowsSecurityContextOptions>>(PodSecurityContext::VT_WINDOWSOPTIONS, windowsOptions);
  }
  #[inline]
  pub fn add_runAsUser(&mut self, runAsUser: i64) {
    self.fbb_.push_slot::<i64>(PodSecurityContext::VT_RUNASUSER, runAsUser, 0);
  }
  #[inline]
  pub fn add_runAsGroup(&mut self, runAsGroup: i64) {
    self.fbb_.push_slot::<i64>(PodSecurityContext::VT_RUNASGROUP, runAsGroup, 0);
  }
  #[inline]
  pub fn add_runAsNonRoot(&mut self, runAsNonRoot: bool) {
    self.fbb_.push_slot::<bool>(PodSecurityContext::VT_RUNASNONROOT, runAsNonRoot, false);
  }
  #[inline]
  pub fn add_supplementalGroups(&mut self, supplementalGroups: flatbuffers::WIPOffset<flatbuffers::Vector<'b , i64>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodSecurityContext::VT_SUPPLEMENTALGROUPS, supplementalGroups);
  }
  #[inline]
  pub fn add_fsGroup(&mut self, fsGroup: i64) {
    self.fbb_.push_slot::<i64>(PodSecurityContext::VT_FSGROUP, fsGroup, 0);
  }
  #[inline]
  pub fn add_sysctls(&mut self, sysctls: flatbuffers::WIPOffset<flatbuffers::Vector<'b , flatbuffers::ForwardsUOffset<Sysctl<'b >>>>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodSecurityContext::VT_SYSCTLS, sysctls);
  }
  #[inline]
  pub fn add_fsGroupChangePolicy(&mut self, fsGroupChangePolicy: flatbuffers::WIPOffset<&'b  str>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<_>>(PodSecurityContext::VT_FSGROUPCHANGEPOLICY, fsGroupChangePolicy);
  }
  #[inline]
  pub fn add_seccompProfile(&mut self, seccompProfile: flatbuffers::WIPOffset<SeccompProfile<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<SeccompProfile>>(PodSecurityContext::VT_SECCOMPPROFILE, seccompProfile);
  }
  #[inline]
  pub fn add_appArmorProfile(&mut self, appArmorProfile: flatbuffers::WIPOffset<AppArmorProfile<'b >>) {
    self.fbb_.push_slot_always::<flatbuffers::WIPOffset<AppArmorProfile>>(PodSecurityContext::VT_APPARMORPROFILE, appArmorProfile);
  }
  #[inline]
  pub fn new(_fbb: &'b mut flatbuffers::FlatBufferBuilder<'a, A>) -> PodSecurityContextBuilder<'a, 'b, A> {
    let start = _fbb.start_table();
    PodSecurityContextBuilder {
      fbb_: _fbb,
      start_: start,
    }
  }
  #[inline]
  pub fn finish(self) -> flatbuffers::WIPOffset<PodSecurityContext<'a>> {
    let o = self.fbb_.end_table(self.start_);
    flatbuffers::WIPOffset::new(o.value())
  }
}

impl core::fmt::Debug for PodSecurityContext<'_> {
  fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
    let mut ds = f.debug_struct("PodSecurityContext");
      ds.field("seLinuxOptions", &self.seLinuxOptions());
      ds.field("windowsOptions", &self.windowsOptions());
      ds.field("runAsUser", &self.runAsUser());
      ds.field("runAsGroup", &self.runAsGroup());
      ds.field("runAsNonRoot", &self.runAsNonRoot());
      ds.field("supplementalGroups", &self.supplementalGroups());
      ds.field("fsGroup", &self.fsGroup());
      ds.field("sysctls", &self.sysctls());
      ds.field("fsGroupChangePolicy", &self.fsGroupChangePolicy());
      ds.field("seccompProfile", &self.seccompProfile());
      ds.field("appArmorProfile", &self.appArmorProfile());
      ds.finish()
  }
}

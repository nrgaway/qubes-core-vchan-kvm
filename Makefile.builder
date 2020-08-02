RPM_SPEC_FILES := rpm_spec/libvchan.spec
ARCH_BUILD_DIRS := archlinux

ifeq ($(PACKAGE_SET),vm)
  ifneq ($(filter $(DISTRIBUTION), debian qubuntu),)
    DEBIAN_BUILD_DIRS := debian
    SOURCE_COPY_IN := source-debian-quilt-copy-in
  endif

  WIN_COMPILER = msbuild
  WIN_SOURCE_SUBDIRS = windows
  WIN_BUILD_DEPS = vmm-xen-windows-pvdrivers
  WIN_OUTPUT_LIBS = bin
  WIN_OUTPUT_HEADERS = include
  WIN_PREBUILD_CMD = set_version.bat && powershell -executionpolicy bypass -File set_version.ps1 < nul
  WIN_SLN_DIR = vs2017
endif

source-debian-quilt-copy-in:
	$(shell $(ORIG_SRC)/debian-quilt $(ORIG_SRC)/series-debian-vm.conf $(CHROOT_DIR)/$(DIST_SRC)/debian/patches)

# vim: filetype=make

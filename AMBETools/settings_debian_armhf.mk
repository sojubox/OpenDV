# Makefile-include
#
# Special settings for  Emdebian Compile for ARM processor, John Hays, June 2012
# modified by Hans-J. Barthen, DL5DI, 2012-09-07
# Rename this file to settings.mk before you compile the source for the Debian armel platform
#
	export DEB_HOST_GNU_TYPE := arm-linux-gnueabihf
	export DATADIR := "/usr/local/etc"
	export BINDIR  := "$(DESTDIR)/usr/local/bin"
	export CC      := $(DEB_HOST_GNU_TYPE)-g++
	export LDFLAGS := -g -Xlinker -rpath-link /lib/$(DEB_HOST_GNU_TYPE) -Xlinker -rpath-link /usr/lib/$(DEB_HOST_GNU_TYPE)
	export CFLAGS  := -g -O2 -Wall -Wno-non-virtual-dtor -Wno-strict-aliasing -Wno-psabi -DDATA_DIR='$(DATADIR)' -DBIN_DIR='$(BINDIR)' -I/usr/include/$(DEB_HOST_GNU_TYPE) -I/usr/$(DEB_HOST_GNU_TYPE)/include -I/usr/include -I/usr/$(DEB_HOST_GNU_TYPE)/lib/wx/include/gtk2-unicode-release-2.8 -I/usr/$(DEB_HOST_GNU_TYPE)/include/wx-2.8 -D_FILE_OFFSET_BITS=64 -D_LARGE_FILES -D__WXGTK__ -pthread
	export LIBS := -lportaudio -L/usr/lib/$(DEB_HOST_GNU_TYPE) -L/usr/$(DEB_HOST_GNU_TYPE)/lib -lwx_gtk2u_adv-2.8 -lwx_gtk2u_core-2.8 -lwx_baseu-2.8 -pthread

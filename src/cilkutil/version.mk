NAME           = sdsc-cilkutil
VERSION        = 12.2516
RELEASE        = 3
PKGROOT        = /opt/cilkutil

SRC_SUBDIR     = cilkutil

SOURCE_NAME    = cilkutil-linux
SOURCE_SUFFIX  = tgz
SOURCE_VERSION = $(VERSION)
SOURCE_PKG     = $(SOURCE_NAME)-$(SOURCE_VERSION).$(SOURCE_SUFFIX)
SOURCE_DIR     = cilkutil

PIN_NAME       = pin
PIN_VERSION    = 2.12-55942-gcc.4.4.7-linux
PIN_SUFFIX     = tar.gz
PIN_PKG        = $(PIN_NAME)-$(PIN_VERSION).$(PIN_SUFFIX)
PIN_DIR        = $(PIN_PKG:%.$(PIN_SUFFIX)=%)

LIBZCA_NAME    = libzca-src
LIBZCA_VERSION = 181
LIBZCA_SUFFIX  = tgz
LIBZCA_PKG     = $(LIBZCA_NAME)-$(LIBZCA_VERSION).$(LIBZCA_SUFFIX)
LIBZCA_DIR     = 3rdparty

TGZ_PKGS       = $(SOURCE_PKG) $(LIBZCA_PKG)
TAR_GZ_PKGS    = $(PIN_PKG)

RPM.EXTRAS     = AutoReq:No

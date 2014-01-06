NAME                 = cilkutil
VERSION              = 12.2516
RELEASE              = 0
PKG_ROOT             = /opt/cilkutil

SRC_SUBDIR           = cilkutil

CILKUTIL_NAME        = $(NAME)-linux
CILKUTIL_VERSION     = $(VERSION)
CILKUTIL_PKG_SUFFIX  = tgz
CILKUTIL_SOURCE_PKG  = $(CILKUTIL_NAME)-$(CILKUTIL_VERSION).$(CILKUTIL_PKG_SUFFIX)
CILKUTIL_SOURCE_DIR  = cilkutil

PIN_NAME             = pin
PIN_VERSION          = 2.12-55942-gcc.4.4.7-linux
PIN_PKG_SUFFIX       = tar.gz
PIN_SOURCE_PKG       = $(PIN_NAME)-$(PIN_VERSION).$(PIN_PKG_SUFFIX)
PIN_SOURCE_DIR       = $(PIN_SOURCE_PKG:%.$(PIN_PKG_SUFFIX)=%)

LIBZCA_NAME          = libzca-src
LIBZCA_VERSION       = 181
LIBZCA_PKG_SUFFIX    = tgz
LIBZCA_SOURCE_PKG    = $(LIBZCA_NAME)-$(LIBZCA_VERSION).$(LIBZCA_PKG_SUFFIX)
LIBZCA_SOURCE_DIR    = 3rdparty

TGZ_PKGS             = $(CILKUTIL_SOURCE_PKG) $(LIBZCA_SOURCE_PKG)
TAR_GZ_PKGS          = $(PIN_SOURCE_PKG)
RPM.EXTRAS         = AutoReq:No

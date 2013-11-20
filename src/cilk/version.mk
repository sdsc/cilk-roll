NAME             = cilk
VERSION          = 5.4.6
RELEASE          = 1
PKG_ROOT         = /opt/cilk

SRC_SUBDIR       = cilk

CILK_NAME        = $(NAME)
CILK_VERSION     = $(VERSION)
CILK_PKG_SUFFIX  = tar.gz
CILK_SOURCE_PKG  = $(CILK_NAME)-$(CILK_VERSION).$(CILK_PKG_SUFFIX)
CILK_SOURCE_DIR  = $(CILK_SOURCE_PKG:%.$(CILK_PKG_SUFFIX)=%)

TAR_GZ_PKGS     = $(CILK_SOURCE_PKG)

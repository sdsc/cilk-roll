NAME        = cilk-modules
RELEASE     = 2
PKGROOT     = /opt/modulefiles/compilers/cilk

VERSION_SRC = $(REDHAT.ROOT)/src/cilk/version.mk
VERSION_INC = version.inc
include $(VERSION_INC)

RPM.EXTRAS  = AutoReq:No

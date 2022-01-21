SHELL = /bin/sh
LIBS = ${WGRIB2_LIB}
MOD = -I${WGRIB2_INC}
#LIBS=/lfs/h2/emc/vpppg/noscrub/Jun.Du/pcpanl/pcpanl.v4.1.0/lib/grib2/lib/libwgrib2.a
#MOD=-I/lfs/h2/emc/vpppg/noscrub/Jun.Du/pcpanl/pcpanl.v4.1.0/lib/grib2/lib

FC      = ftn
FFLAGS   = -qopenmp

DEBUG_OPT ?= 1
ifeq ($(DEBUG_OPT), 1)
   FFLAGS +=  -g -traceback
endif

SRCS = st4_mrms_hrlywgts.f90
OBJS = st4_mrms_hrlywgts.o
CMD  = st4_mrms_hrlywgts

all: $(CMD)

$(CMD): $(OBJS)
	$(FC) $(FFLAGS) -o $(@) $(OBJS) $(LIBS)

$(OBJS): $(SRCS)
	$(FC)  $(FFLAGS) $(SRCS) -c $(MOD)

clean:
	rm -f *.o *.lst $(CMD)
mvexec:
	mv $(CMD) ../../exec/.


COMMON_INCLUDES = -I../common

MAX_INCLUDES = -I/maxmspsdk/c74support/max-includes \
   -I/maxmspsdk/c74support/msp-includes \
   -I/maxmspsdk/c74support/common \
   -I../ThirdParty/ttblue/dsplib \
   -I../../RampLib/ramplib_api

MAX_LIB_INCLUDES = -L/maxmspsdk/c74support/max-includes \
   -L/maxmspsdk/c74support/msp-includes \
   -L/maxmspsdk/c74support/common

COMMON_SOURCE = jcom.core.cpp /maxmspsdk/c74support/max-includes/common/commonsyms.c
JCOM_CORE_OBJS = jcom.core.o commonsyms.o
CORE_OBJS = ../common/jcom.core.o ../common/commonsyms.o
JCOM_CORE_AUDIO_OBJS = ../common/jcom.core~.o ../common/commonsyms.o

TT_SOURCE = ../../../ThirdParty/ttblue/dsplib/tt_audio_base.cpp
TT_CORE_OBJS = tt_audio_base.o
TT_OBJS = ../../ThirdParty/ttblue/dsplib/tt_audio_base.o

# projects to be built
JCOM_CHANGE_SOURCE = jcom.change.cpp jcom.change.def
JCOM_CHANGE_OBJS = ${JCOM_CHANGE_SOURCE:.cpp=.o}

JCOM_COLORSPACE_SOURCE = jcom.colorspace.cpp jcom.colorspace.def
JCOM_COLORSPACE_OBJS = ${JCOM_COLORSPACE_SOURCE:.cpp=.o}

JCOM_CUBIC_INTERPOLATE_SOURCE = jcom.cubic_interpolate.cpp jcom.cubic_interpolate.def
JCOM_CUBIC_INTERPOLATE_OBJS = ${JCOM_CUBIC_INTERPOLATE_SOURCE:.cpp=.o}

JCOM_DELTA_SOURCE = jcom.delta.cpp jcom.delta.def
JCOM_DELTA_OBJS = ${JCOM_DELTA_SOURCE:.cpp=.o}

JCOM_DELTA2_SOURCE = jcom.delta2.cpp jcom.delta2.def
JCOM_DELTA2_OBJS = ${JCOM_DELTA2_SOURCE:.cpp=.o}

JCOM_EQUALS_SOURCE = jcom.equals.cpp jcom.equals.def
JCOM_EQUALS_OBJS = ${JCOM_EQUALS_SOURCE:.cpp=.o}

JCOM_GAIN~_SOURCE = jcom.gain~.cpp jcom.gain~.def
JCOM_GAIN~_OBJS = ${JCOM_GAIN~_SOURCE:.cpp=.o}

JCOM_GANG_SOURCE = jcom.gang.cpp jcom.gang.def
JCOM_GANG_OBJS = ${JCOM_GANG_SOURCE:.cpp=.o}

JCOM_HUB_SOURCE = jcom.hub.cpp jcom.hub.autodoc.cpp jcom.hub.internals.cpp jcom.hub.presets.cpp jcom.hub.def
JCOM_HUB_OBJS = ${JCOM_HUB_SOURCE:.cpp=.o}

JCOM_IN_SOURCE = jcom.in.cpp jcom.in.def
JCOM_IN_OBJS = ${JCOM_IN_SOURCE:.cpp=.o}

JCOM_IN~_SOURCE = jcom.in.cpp jcom.in~.def
JCOM_IN~_OBJS = ${JCOM_IN~_SOURCE:.cpp=.o}


JCOM_INIT_SOURCE = jcom.init.cpp jcom.init.def
JCOM_INIT_OBJS = ${JCOM_INIT_SOURCE:.cpp=.o}

JCOM_LIMITER~_SOURCE = jcom.limiter~.cpp jcom.limiter~.def
JCOM_LIMITER~_OBJS = ${JCOM_LIMITER~_SOURCE:.cpp=.o}

JCOM_METER~_SOURCE = jcom.meter~.cpp jcom.meter~.def
JCOM_METER~_OBJS = ${JCOM_METER~_SOURCE:.cpp=.o}

JCOM_METRO_SOURCE = jcom.metro.cpp jcom.metro.def
JCOM_METRO_OBJS = ${JCOM_METRO_SOURCE:.cpp=.o}

JCOM_MKDIR_SOURCE = jcom.mkdir.cpp jcom.mkdir.def
JCOM_MKDIR_OBJS = ${JCOM_MKDIR_SOURCE:.cpp=.o}

JCOM_OSCROUTE_SOURCE = jcom.oscroute.cpp jcom.oscroute.def
JCOM_OSCROUTE_OBJS = ${JCOM_OSCROUTE_SOURCE:.cpp=.o}

JCOM_OUT_SOURCE = jcom.out.cpp jcom.out.def
JCOM_OUT_OBJS = ${JCOM_OUT_SOURCE:.cpp=.o}

JCOM_PARAMETER_SOURCE = jcom.parameter.cpp jcom.parameter.clip.cpp jcom.parameter.def
JCOM_PARAMETER_OBJS = ${JCOM_PARAMETER_SOURCE:.cpp=.o}

JCOM_MESSAGE_SOURCE = jcom.parameter.clip.cpp jcom.message.def
JCOM_MESSAGE_OBJS = ${JCOM_MESSAGE_SOURCE:.cpp=.o}

JCOM_MKDIR_SOURCE = mkdir.cpp mkdir.def
JCOM_MKDIR_OBJS = ${JCOM_MKDIR_SOURCE:.cpp=.o}

JCOM_PASS_SOURCE = jcom.pass.cpp jcom.pass.def
JCOM_PASS_OBJS = ${JCOM_PASS_SOURCE:.cpp=.o}

JCOM_RAMP_SOURCE = jcom.ramp.cpp ../../RampLib/ramplib_api/RampUnitWrap.cpp jcom.ramp.def
JCOM_RAMP_OBJS = ${JCOM_RAMP_SOURCE:.cpp=.o}

JCOM_RECEIVE_SOURCE = jcom.receive.cpp jcom.receivemaster.cpp jcom.receive.def
JCOM_RECEIVE_OBJS = ${JCOM_RECEIVE_SOURCE:.cpp=.o}

JCOM_RECEIVE~_SOURCE = jcom.receive~.cpp jcom.receive~.def
JCOM_RECEIVE~_OBJS = ${JCOM_RECEIVE~_SOURCE:.cpp=.o}

JCOM_ROUTE_SOURCE = jcom.route.cpp jcom.route.def
JCOM_ROUTE_OBJS = ${JCOM_ROUTE_SOURCE:.cpp=.o}

JCOM_RETURN_SOURCE = jcom.return.cpp jcom.return.def
JCOM_RETURN_OBJS = ${JCOM_RETURN_SOURCE:.cpp=.o}

JCOM_REMOTE_SOURCE = jcom.remote.cpp jcom.remote.def
JCOM_REMOTE_OBJS = ${JCOM_REMOTE_SOURCE:.cpp=.o}

JCOM_ROUND_SOURCE = jcom.round.cpp jcom.round.def
JCOM_ROUND_OBJS = ${JCOM_ROUND_SOURCE:.cpp=.o}

JCOM_SATURATION~_SOURCE = jcom.saturation~.cpp jcom.saturation~.def
JCOM_SATURATION~_OBJS = ${JCOM_SATURATION~_SOURCE:.cpp=.o}

JCOM_SEND_SOURCE = jcom.send.cpp jcom.send.def
JCOM_SEND_OBJS = ${JCOM_SEND_SOURCE:.cpp=.o}

JCOM_SEND~_SOURCE = jcom.send~.cpp jcom.send~.def
JCOM_SEND~_OBJS = ${JCOM_SEND~_SOURCE:.cpp=.o}

JCOM_STATS_SOURCE = jcom.stats.cpp jcom.stats.def
JCOM_STATS_OBJS = ${JCOM_STATS_SOURCE:.cpp=.o}

JCOM_SUM%_SOURCE = jcom.sum%.cpp jcom.sum%.def
JCOM_SUM%_OBJS = ${JCOM_SUM%_SOURCE:.cpp=.o}

JCOM_TB_BITS_SOURCE = jcom.teabox.bits~.cpp jcom.teabox.bits~.def
JCOM_TB_BITS_OBJS = ${JCOM_TB_BITS_SOURCE:.cpp=.o}

JCOM_TB_COUNT_SOURCE = jcom.teabox.count~.cpp jcom.teabox.count~.def
JCOM_TB_COUNT_OBJS = ${JCOM_TB_COUNT_SOURCE:.cpp=.o}

JCOM_TEABOX_SOURCE = jcom.teabox~.cpp jcom.teabox~.def
JCOM_TEABOX_OBJS = ${JCOM_TEABOX_SOURCE:.cpp=.o}

JCOM_VELOCITY_SOURCE = jcom.velocity.cpp jcom.velocity.def
JCOM_VELOCITY_OBJS = ${JCOM_VELOCITY_SOURCE:.cpp=.o}

JCOM_XFADE~_SOURCE = jcom.xfade~.cpp jcom.xfade~.def
JCOM_XFADE~_OBJS = ${JCOM_XFADE~_SOURCE:.cpp=.o}

JCOM_ZEROX~_SOURCE = jcom.zerox~.cpp jcom.zerox~.def
JCOM_ZEROX~_OBJS = ${JCOM_ZEROX~_SOURCE:.cpp=.o}

JCOM_AED2XYZ_SOURCE = jcom.aed2xyz.cpp jcom.aed2xyz.def
JCOM_AED2XYZ_OBJS = ${JCOM_AED2XYZ_SOURCE:.cpp=.o}

JCOM_XYZ2AED_SOURCE = jcom.xyz2aed.cpp jcom.xyz2aed.def
JCOM_XYZ2AED_OBJS = ${JCOM_XYZ2AED_SOURCE:.cpp=.o}

JCOM_MAP_SOURCE = jcom.map.cpp jcom.map.def
JCOM_MAP_OBJS = ${JCOM_MAP_SOURCE:.cpp=.o}


#JCOM_PHASOR~_SOURCE = jcom.phasor~.cpp jcom.phasor~.def
#JCOM_PHASOR~_OBJS = ${JCOM_PHASOR~_SOURCE:.cpp=.o}


ALL_OBJECTS = ${JCOM_CHANGE_OBJS} ${JCOM_COLORCHANGE_OBJS} ${JCOM_CUBIC_INTERPOLATE_OBJS} \
			  ${JCOM_DELTA_OBJS} ${JCOM_DELTA2_OBJS} ${JCOM_GAIN~_OBJS} ${JCOM_GANG_OBJS} \
			  ${JCOM_HUB_OBJS}, ${JCOM_IN_OBJS}, ${JCOM_INIT_OBJS}, ${JCOM_LIMITER~_OBJS} \
			  ${JCOM_METER~_OBJS} ${JCOM_MKDIR_OBJS} ${JCOM_OSCROUTE_OBJS} ${JCOM_OUT_OBJS} \
			  ${JCOM_PARAMETER_OBJS} ${JCOM_ROUTE_OBJS} \
			  ${JCOM_SATURATION~_OBJS} ${JCOM_SEND_OBJS} ${JCOM_STATS_OBJS} \
			  ${JCOM_SUM%_OBJS}


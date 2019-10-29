SUBDIRS = config

bin_PROGRAMS = dtlogin dtgreet dtchooser

XDMDIR = $(CDE_LOGFILES_TOP)

if LINUX
AM_LDADD += -lm -lcrypt
AM_CFLAGS += -DXDMCP -DUNIXCONN -DTCPCONN -DHASDES -DHASXDMAUTH \
	     -DSILLYEXPORTRULE
XBINDIR = /usr/bin/X11
dtlogin_SOURCES += xdmauth.c
endif

if FREEBSD
XBINDIR = /usr/local/bin
AM_LDADD += -lm -lcrypt
endif

if OPENBSD
XBINDIR = /usr/X11R6/bin
dtlogin_CFLAGS += -DHASDES
dtlogin_SOURCES += xdmauth.c
endif

if NETBSD
XBINDIR = /usr/X11R7/bin
AM_LDADD += -lm -lcrypt
endif

if SOLARIS
XBINDIR = /usr/bin/X11
AM_LDADD += -lm -ldl -lgen -lresolv -lbsm -lcmd
dtlogin_SOURCES += solaris.c
endif

if AIX
XBINDIR = /usr/bin/X11
AM_CFLAGS += -D_ILS_MACROS -DBSD44SOCKETS -D__NetBSD__ -DENABLE_DYNAMIC_LANGLIST
AM_LDADD += -ls
endif

if HPUX
XBINDIR = /usr/bin/X11
AM_CFLAGS += -D_XPG2 -DAUDIT -DBYPASSLOGIN -DXOS -DBSTORE -DSOFTWARE_CURSOR \
	     -DSCREEN_PIXMAPS -DMERGE_SAVE_UNDERS -DHAS_IFREQ \
	     -DFORCE_SEPARATE_PRIVATE -DINCLUDE_ALLOCA_H
AM_LDADD += -lsec
endif

AM_CFLAGS = -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
            -DCDE_INSTALLATION_TOP=${prefix} \
            -DCDE_LOGFILES_TOP=$(CDE_LOGFILES_TOP \
	    -I$(x_includes)/freetype2 -DUSE_XINERAMA -DBINDIR=\"$(XBINDIR)\" \
	    -DXDMDIR=\"$(XDMDIR)\"

AM_LDADD = -lXinerama $(LIBXIN) ${X_LIBS}

DEF_SERVER = $(XBINDIR)/X
DEF_USER_PATH = $(PATH):/usr/ccs/bin:$(XBINDIR)
DEF_SYSTEM_PATH = $(PATH):$(XBINDIR)
CPP_PROGRAM = $(CPP)
DEF_BM_PATH = $(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B%M.bm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B%M.pm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B%M.bm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B%M.pm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B:${prefix}/appconfig/icons/%L/%B%M.bm:${prefix}/appconfig/icons/%L/%B%M.pm:${prefix}/appconfig/icons/%L/%B:${prefix}/appconfig/icons/C/%B%M.bm:${prefix}/appconfig/icons/C/%B%M.pm:${prefix}/appconfig/icons/C/%B
DEF_PM_PATH = $(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B%M.pm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B%M.bm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/%L/%B:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B%M.pm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B%M.bm:$(CDE_CONFIGURATION_TOP)/appconfig/icons/C/%B:${prefix}/appconfig/icons/%L/%B%M.pm:${prefix}/appconfig/icons/%L/%B%M.bm:${prefix}/appconfig/icons/%L/%B:${prefix}/appconfig/icons/C/%B%M.pm:${prefix}/appconfig/icons/C/%B%M.bm:${prefix}/appconfig/icons/C/%B

dtlogin_CFLAGS = -DDEF_SESSION="${prefix}/bin/Xsession" \
		 -DDEF_SYSTEM_SHELL="/bin/sh" \
                 -DDEF_CHOOSER="${prefix}/bin/dtchooser" \
                 -DDEF_XDM_CONFIG="Xconfig" -DSIGNALRETURNSINT \
		 -DDEF_SERVER_LINE=":0 Local local $(DEF_SERVER) :0" \
                 -DXRDB_PROGRAM="$(XBINDIR)/xrdb" \
                 -DDEF_USER_PATH="$(DEF_USER_PATH)" \
                 -DDEF_SYSTEM_PATH="$(DEF_SYSTEM_PATH)" \
                 -DDEF_FAILSAFE_CLIENT="$(XBINDIR)/xterm" \
                 -DDEF_AUTH_FILE="$(XDMDIR)/auth-server" \
                 -DDEF_AUTH_DIR="$(XDMDIR)" \
                 -DCPP_PROGRAM="$(CPP_PROGRAM)" \
                 -DDEF_PM_SEARCH_PATH="$(DEF_PM_PATH)" \
                 -DDEF_BM_SEARCH_PATH="$(DEF_BM_PATH)"

dtlogin_SOURCES = access.c account.c auth.c genauth.c daemon.c dm.c \
                  dpylist.c error.c file.c mitauth.c protodpy.c policy.c \
                  reset.c resource.c server.c session.c socket.c util.c \
                  verify.c sysauth.c fontpath.c qualify.c choose.c netaddr.c \
		  xdmcp.c

dtgreet_SOURCES = vgcallback.c vglogo.c vgmain.c vgutil.c vglang.c

dtchooser_SOURCES = chooser.c dtchooser.c vglogo.c vgutil.c vgcallback.c \
		    vglang.c

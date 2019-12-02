
AM_CPPFLAGS = -DCDE_CONFIGURATION_TOP=$(CDE_CONFIGURATION_TOP) \
            -DCDE_INSTALLATION_TOP=${prefix} \
            -DCDE_LOGFILES_TOP=$(CDE_LOGFILES_TOP) \
	    -DKORNSHELL=$(KSH)

if FREEBSD
AM_CPPFLAGS += -DFREEBSD
endif

CPP_TARGETS = 0060.dtsysenv Dtlogin Xaccess Xconfig Xconfig.con	\
	Xconfig.nc Xfailsafe Xreset Xresources Xresources.ive	\
	Xservers Xservers.con Xservers.nc Xsession Xsession.ive	\
	Xsetup Xstartup current.session display.current.session	\
	display.home.session dtlslocale dtprofile home.session	\
	sys.dtprofile

BUILT_SOURCES = $(CPP_TARGETS)
CLEANFILES = $(CPP_TARGETS)

# Some of these are installed here, others are installed via
# programs/localization/

configsdir=$(CDE_INSTALLATION_TOP)/config
dist_configs_DATA = Xaccess Xconfig Xfailsafe Xreset Xservers Xsetup \
	Xstartup sys.dtprofile

xsessdir=$(CDE_INSTALLATION_TOP)/config/Xsession.d
dist_xsess_DATA = 0060.dtsysenv


# fake - installed under a different name
sys.dtprofile: dtprofile
	$(RM) $@
	$(LN_S) $< $@

# regular targets
0060.dtsysenv: 0060.dtsysenv.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS)  $< > $@

Dtlogin: Dtlogin.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xaccess: Xaccess.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xconfig: Xconfig.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xconfig.con: Xconfig.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xconfig.nc: Xconfig.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) -DNO_CONSOLE $< > $@

Xfailsafe: Xfailsafe.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xreset: Xreset.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xresources: Xresources.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xresources.ive: Xresources.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) -DIVE $< > $@

Xservers: Xservers.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xservers.con: Xservers.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xservers.nc: Xservers.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) -DNO_CONSOLE $< > $@

Xsession: Xsession.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xsession.ive: Xsession.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) -DIVE $< > $@

Xsetup: Xsetup.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

Xstartup: Xstartup.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

current.session: current.session.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

display.current.session: display.current.session.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

display.home.session: display.home.session.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

dtlslocale: dtlslocale.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

dtprofile: dtprofile.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@

home.session: home.session.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(AM_CPPFLAGS) $< > $@


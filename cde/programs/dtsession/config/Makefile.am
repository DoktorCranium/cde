MAINTAINERCLEANFILES = Makefile.in

CPP_TARGET = pam.d.dtsession

BUILT_SOURCES = $(CPP_TARGET)
CLEANFILES = $(CPP_TARGET)

cfgdir = $(CDE_INSTALLATION_TOP)/config
dist_cfg_DATA = $(CPP_TARGET)


if FREEBSD
PAM_AUTHENTICATION_MODULE = /usr/local/lib/security/pam_pwauth_suid.so
endif

if NETBSD
PAM_AUTHENTICATION_MODULE = /usr/pkg/lib/security/pam_pwauth_suid.so
endif

pam.d.dtsession: pam.d.dtsession.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# -DPAM_AUTHENTICATION_MODULE=$(PAM_AUTHENTICATION_MODULE) $< > $@


MAINTAINERCLEANFILES = Makefile.in

appdefaultsdir = ${prefix}/app-defaults/C

ABINCLUDES = -I../include -I../include/ab_private -I../libABil

bin_PROGRAMS = dtbuilder

appdefaults_DATA = Dtbuilder

DTCODEGENCAT = NLSPATH=$(top_builddir)/programs/dtappbuilder/src/abmf/dtcodegen.cat

DTCODEGEN = $(DTCODEGENCAT) ../abmf/dtcodegen

# Due to the way dtcodegen works, especially with the -merge option, we need
# to disable parallel builds (-j) here to avoid corrupting everything.
.NOTPARALLEL:

if BSD
UTILLIB = -lutil
endif

AB_MAKEFILES = \
        Makefile.aix \
        Makefile.hpux \
        Makefile.sunos \
        Makefile.linux \
        Makefile.freebsd \
        Makefile.netbsd \
        Makefile.openbsd

CLEANFILES = AB_MAKEFILES *.res *_ui.c *_ui.h .dtcodegen.log *.delta dtbuilder.c dtbuilder.msg

SOURCES.msg = \
                dtbuilder.msg   \
                ../libAButil/libAButil.msg \
                ../libABobjXm/libABobjXm.msg \
                ../libABil/libABil.msg

dtbuilder_LDADD = ../libABil/libABil.a  ../libABobjXm/libABobjXm.a  \
        ../libABobj/libABobj.a ../libAButil/libAButil.a \
        $(LIBWIDGET) $(LIBTERM) $(LIBHELP) $(LIBSVC) \
        $(LIBTT) $(LIBXIN) -lUil $(MRESOURCELIB) -lXm $(XTOOLLIB) ${X_LIB} \
        $(UTILLIB) -lm

dtbuilder_CFLAGS = -DPIXMAP_WORKAROUND $(ABINCLUDES)

dtbuilder_SOURCES = dtb_utils.c \
		    appfw_ui.c \
		    about_box_ui.c \
		    brws_ui.c \
		    color_chooser_ui.c \
		    conn_ui.c \
		    dnd_ed_ui.c \
		    help_ed_ui.c \
		    attch_ed_ui.c \
		    proj_ui.c \
		    revolv_ui.c \
		    button_ui.c \
		    choice_ui.c \
		    combobox_ui.c \
		    cpanel_ui.c \
		    custdlg_ui.c \
		    drawp_ui.c \
		    group_ui.c \
		    label_ui.c \
		    list_ui.c \
		    mainwin_ui.c \
		    menu_ui.c \
		    menubar_ui.c \
		    scale_ui.c \
		    sep_ui.c \
		    spinbox_ui.c \
		    termp_ui.c \
		    textf_ui.c \
		    textp_ui.c \
		    cgen_win_ui.c \
		    cgen_props_ui.c \
		    cgen_env_ui.c \
		    fchooser_ui.c \
		    message_ed_ui.c \
		    panedwin_ed_ui.c \
		    palette_ui.c \
		    appfw_stubs.c \
		    brws_stubs.c \
		    color_chooser_stubs.c \
		    conn_stubs.c \
		    dnd_ed_stubs.c \
		    help_ed_stubs.c \
		    attch_ed_stubs.c \
		    proj_stubs.c \
		    revolv_stubs.c \
		    button_stubs.c \
		    choice_stubs.c \
		    combobox_stubs.c \
		    cpanel_stubs.c \
		    custdlg_stubs.c \
		    drawp_stubs.c \
		    group_stubs.c \
		    label_stubs.c \
		    list_stubs.c \
		    mainwin_stubs.c \
		    menu_stubs.c \
		    menubar_stubs.c \
		    scale_stubs.c \
		    sep_stubs.c \
		    spinbox_stubs.c \
		    termp_stubs.c \
		    textf_stubs.c \
		    textp_stubs.c \
		    cgen_win_stubs.c \
		    cgen_props_stubs.c \
		    cgen_env_stubs.c \
		    fchooser_stubs.c \
		    message_ed_stubs.c \
		    palette_stubs.c \
		    about_box_stubs.c \
		    dtbuilder.c \
		    ab_utils.c \
		    ab_bil.c \
		    ab_dnd.c \
		    ab_globals.c \
		    abobj_align.c \
		    abobj_edit.c \
		    abobj_list.c \
		    abobj_events.c \
		    abobj_layers.c \
		    abobj_layout.c \
		    abobj_menu.c \
		    abobj_move.c \
		    abobj_resize.c \
		    abobj_select.c \
		    abobj_set.c \
		    abobj_util.c \
		    brws.c \
		    brws_find.c \
		    brws_mthds.c \
		    brws_utils.c \
		    cgen_utils.c \
		    conn_drag.c \
		    conn_interpret.c \
		    conn_obj.c \
		    pal.c \
		    pal_create.c \
		    pal_button.c \
		    pal_choice.c \
		    pal_combobox.c \
		    pal_cpanel.c \
		    pal_custdlg.c \
		    pal_drawp.c \
		    pal_fchooser.c \
		    pal_group.c \
		    pal_label.c \
		    pal_list.c \
		    pal_mainwin.c \
		    pal_menu.c \
		    pal_menubar.c \
		    pal_panedwin.c \
		    pal_scale.c \
		    pal_sep.c \
		    pal_spinbox.c \
		    pal_termp.c \
		    pal_textf.c \
		    pal_textp.c \
		    proj.c \
		    proj_utils.c \
		    projP_utils.c \
		    prop.c \
		    prop_items.c \
		    tmode.c \
		    tmodeP.c \
		    ui_msg.c \
		    ui_list.c \
		    ui_util.c \
		    vwr.c \
		    x_util.c



dtbuilder.msg: dtbuilder.msg.src
	$(CP) $? $@ && chmod ug+w $@
dtbuilder.c: dtbuilder.c.src
	$(CP) $? $@ && chmod ug+w $@

Dtbuilder: Dtbuilder.src
	$(RM) $@
	$(GENCPP) -P -DXCOMM=# $(LOCAL_CPP_DEFINES) $< > $@

if SOLARIS

dtbuilder.h + dtb_utils.c + dtb_utils.h: dtbuilder.bip dtbuilder.c dtbuilder.msg
	$(DTCODEGEN) -changed -merge -p dtbuilder.bip -main
dtbuilder.o: dtbuilder.c dtbuilder.bip $(TARGETS.h) $(TARGETS.h.merged)

PROJFILE = dtbuilder

about_box_ui.c + about_box_ui.h + about_box_stubs.c: $(PROJFILE).bip about_box.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip about_box.bil
about_box_ui.o: about_box_ui.c about_box_ui.h about_box.bil
about_box_stubs.o: about_box_stubs.c about_box_ui.c about_box_ui.h about_box.bil

appfw_ui.c + appfw_ui.h + appfw_stubs.c: $(PROJFILE).bip appfw.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip appfw.bil
appfw_ui.o: appfw_ui.c appfw_ui.h appfw.bil
appfw_stubs.o: appfw_stubs.c appfw_ui.c appfw_ui.h appfw.bil

attch_ed_ui.c + attch_ed_ui.h + attch_ed_stubs.c: $(PROJFILE).bip attch_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip attch_ed.bil
attch_ed_ui.o: attch_ed_ui.c attch_ed_ui.h attch_ed.bil
attch_ed_stubs.o: attch_ed_stubs.c attch_ed_ui.c attch_ed_ui.h attch_ed.bil

brws_ui.c + brws_ui.h + brws_stubs.c: $(PROJFILE).bip brws.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip brws.bil
brws_ui.o: brws_ui.c brws_ui.h brws.bil
brws_stubs.o: brws_stubs.c brws_ui.c brws_ui.h brws.bil

button_ui.c + button_ui.h + button_stubs.c: $(PROJFILE).bip button.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip button.bil
button_ui.o: button_ui.c button_ui.h button.bil
button_stubs.o: button_stubs.c button_ui.c button_ui.h button.bil

cgen_env_ui.c + cgen_env_ui.h + cgen_env_stubs.c: $(PROJFILE).bip cgen_env.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_env.bil
cgen_env_ui.o: cgen_env_ui.c cgen_env_ui.h cgen_env.bil
cgen_env_stubs.o: cgen_env_stubs.c cgen_env_ui.c cgen_env_ui.h cgen_env.bil

cgen_props_ui.c + cgen_props_ui.h + cgen_props_stubs.c: $(PROJFILE).bip cgen_props.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_props.bil
cgen_props_ui.o: cgen_props_ui.c cgen_props_ui.h cgen_props.bil
cgen_props_stubs.o: cgen_props_stubs.c cgen_props_ui.c cgen_props_ui.h cgen_props.bil

cgen_win_ui.c + cgen_win_ui.h + cgen_win_stubs.c: $(PROJFILE).bip cgen_win.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_win.bil
cgen_win_ui.o: cgen_win_ui.c cgen_win_ui.h cgen_win.bil
cgen_win_stubs.o: cgen_win_stubs.c cgen_win_ui.c cgen_win_ui.h cgen_win.bil

choice_ui.c + choice_ui.h + choice_stubs.c: $(PROJFILE).bip choice.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip choice.bil
choice_ui.o: choice_ui.c choice_ui.h choice.bil
choice_stubs.o: choice_stubs.c choice_ui.c choice_ui.h choice.bil

color_chooser_ui.c + color_chooser_ui.h + color_chooser_stubs.c: $(PROJFILE).bip color_chooser.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip color_chooser.bil
color_chooser_ui.o: color_chooser_ui.c color_chooser_ui.h color_chooser.bil
color_chooser_stubs.o: color_chooser_stubs.c color_chooser_ui.c color_chooser_ui.h color_chooser.bil

combobox_ui.c + combobox_ui.h + combobox_stubs.c: $(PROJFILE).bip combobox.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip combobox.bil
combobox_ui.o: combobox_ui.c combobox_ui.h combobox.bil
combobox_stubs.o: combobox_stubs.c combobox_ui.c combobox_ui.h combobox.bil

conn_ui.c + conn_ui.h + conn_stubs.c: $(PROJFILE).bip conn.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip conn.bil
conn_ui.o: conn_ui.c conn_ui.h conn.bil
conn_stubs.o: conn_stubs.c conn_ui.c conn_ui.h conn.bil

cpanel_ui.c + cpanel_ui.h + cpanel_stubs.c: $(PROJFILE).bip cpanel.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cpanel.bil
cpanel_ui.o: cpanel_ui.c cpanel_ui.h cpanel.bil
cpanel_stubs.o: cpanel_stubs.c cpanel_ui.c cpanel_ui.h cpanel.bil

custdlg_ui.c + custdlg_ui.h + custdlg_stubs.c: $(PROJFILE).bip custdlg.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip custdlg.bil
custdlg_ui.o: custdlg_ui.c custdlg_ui.h custdlg.bil
custdlg_stubs.o: custdlg_stubs.c custdlg_ui.c custdlg_ui.h custdlg.bil

dnd_ed_ui.c + dnd_ed_ui.h + dnd_ed_stubs.c: $(PROJFILE).bip dnd_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip dnd_ed.bil
dnd_ed_ui.o: dnd_ed_ui.c dnd_ed_ui.h dnd_ed.bil
dnd_ed_stubs.o: dnd_ed_stubs.c dnd_ed_ui.c dnd_ed_ui.h dnd_ed.bil

drawp_ui.c + drawp_ui.h + drawp_stubs.c: $(PROJFILE).bip drawp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip drawp.bil
drawp_ui.o: drawp_ui.c drawp_ui.h drawp.bil
drawp_stubs.o: drawp_stubs.c drawp_ui.c drawp_ui.h drawp.bil

fchooser_ui.c + fchooser_ui.h + fchooser_stubs.c: $(PROJFILE).bip fchooser.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip fchooser.bil
fchooser_ui.o: fchooser_ui.c fchooser_ui.h fchooser.bil
fchooser_stubs.o: fchooser_stubs.c fchooser_ui.c fchooser_ui.h fchooser.bil

group_ui.c + group_ui.h + group_stubs.c: $(PROJFILE).bip group.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip group.bil
group_ui.o: group_ui.c group_ui.h group.bil
group_stubs.o: group_stubs.c group_ui.c group_ui.h group.bil

help_ed_ui.c + help_ed_ui.h + help_ed_stubs.c: $(PROJFILE).bip help_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip help_ed.bil
help_ed_ui.o: help_ed_ui.c help_ed_ui.h help_ed.bil
help_ed_stubs.o: help_ed_stubs.c help_ed_ui.c help_ed_ui.h help_ed.bil

label_ui.c + label_ui.h + label_stubs.c: $(PROJFILE).bip label.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip label.bil
label_ui.o: label_ui.c label_ui.h label.bil
label_stubs.o: label_stubs.c label_ui.c label_ui.h label.bil

list_ui.c + list_ui.h + list_stubs.c: $(PROJFILE).bip list.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip list.bil
list_ui.o: list_ui.c list_ui.h list.bil
list_stubs.o: list_stubs.c list_ui.c list_ui.h list.bil

mainwin_ui.c + mainwin_ui.h + mainwin_stubs.c: $(PROJFILE).bip mainwin.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip mainwin.bil
mainwin_ui.o: mainwin_ui.c mainwin_ui.h mainwin.bil
mainwin_stubs.o: mainwin_stubs.c mainwin_ui.c mainwin_ui.h mainwin.bil

menu_ui.c + menu_ui.h + menu_stubs.c: $(PROJFILE).bip menu.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip menu.bil
menu_ui.o: menu_ui.c menu_ui.h menu.bil
menu_stubs.o: menu_stubs.c menu_ui.c menu_ui.h menu.bil

menubar_ui.c + menubar_ui.h + menubar_stubs.c: $(PROJFILE).bip menubar.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip menubar.bil
menubar_ui.o: menubar_ui.c menubar_ui.h menubar.bil
menubar_stubs.o: menubar_stubs.c menubar_ui.c menubar_ui.h menubar.bil

message_ed_ui.c + message_ed_ui.h + message_ed_stubs.c: $(PROJFILE).bip message_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip message_ed.bil
message_ed_ui.o: message_ed_ui.c message_ed_ui.h message_ed.bil
message_ed_stubs.o: message_ed_stubs.c message_ed_ui.c message_ed_ui.h message_ed.bil

palette_ui.c + palette_ui.h + palette_stubs.c: $(PROJFILE).bip palette.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip palette.bil
palette_ui.o: palette_ui.c palette_ui.h palette.bil
palette_stubs.o: palette_stubs.c palette_ui.c palette_ui.h palette.bil

panedwin_ed_ui.c + panedwin_ed_ui.h + panedwin_ed_stubs.c: $(PROJFILE).bip panedwin_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip panedwin_ed.bil
panedwin_ed_ui.o: panedwin_ed_ui.c panedwin_ed_ui.h panedwin_ed.bil
panedwin_ed_stubs.o: panedwin_ed_stubs.c panedwin_ed_ui.c panedwin_ed_ui.h panedwin_ed.bil

proj_ui.c + proj_ui.h + proj_stubs.c: $(PROJFILE).bip proj.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip proj.bil
proj_ui.o: proj_ui.c proj_ui.h proj.bil
proj_stubs.o: proj_stubs.c proj_ui.c proj_ui.h proj.bil

revolv_ui.c + revolv_ui.h + revolv_stubs.c: $(PROJFILE).bip revolv.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip revolv.bil
revolv_ui.o: revolv_ui.c revolv_ui.h revolv.bil
revolv_stubs.o: revolv_stubs.c revolv_ui.c revolv_ui.h revolv.bil

scale_ui.c + scale_ui.h + scale_stubs.c: $(PROJFILE).bip scale.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip scale.bil
scale_ui.o: scale_ui.c scale_ui.h scale.bil
scale_stubs.o: scale_stubs.c scale_ui.c scale_ui.h scale.bil

sep_ui.c + sep_ui.h + sep_stubs.c: $(PROJFILE).bip sep.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip sep.bil
sep_ui.o: sep_ui.c sep_ui.h sep.bil
sep_stubs.o: sep_stubs.c sep_ui.c sep_ui.h sep.bil

spinbox_ui.c + spinbox_ui.h + spinbox_stubs.c: $(PROJFILE).bip spinbox.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip spinbox.bil
spinbox_ui.o: spinbox_ui.c spinbox_ui.h spinbox.bil
spinbox_stubs.o: spinbox_stubs.c spinbox_ui.c spinbox_ui.h spinbox.bil

termp_ui.c + termp_ui.h + termp_stubs.c: $(PROJFILE).bip termp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip termp.bil
termp_ui.o: termp_ui.c termp_ui.h termp.bil
termp_stubs.o: termp_stubs.c termp_ui.c termp_ui.h termp.bil

textf_ui.c + textf_ui.h + textf_stubs.c: $(PROJFILE).bip textf.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip textf.bil
textf_ui.o: textf_ui.c textf_ui.h textf.bil
textf_stubs.o: textf_stubs.c textf_ui.c textf_ui.h textf.bil

textp_ui.c + textp_ui.h + textp_stubs.c: $(PROJFILE).bip textp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip textp.bil
textp_ui.o: textp_ui.c textp_ui.h textp.bil
textp_stubs.o: textp_stubs.c textp_ui.c textp_ui.h textp.bil

else

dtbuilder.h dtb_utils.c dtb_utils.h: dtbuilder.bip dtbuilder.c dtbuilder.msg
	$(DTCODEGEN) -changed -merge -p dtbuilder.bip -main
dtbuilder.o: dtbuilder.c dtbuilder.bip $(TARGETS.h) $(TARGETS.h.merged)

PROJFILE = dtbuilder

about_box_ui.c about_box_ui.h about_box_stubs.c: $(PROJFILE).bip about_box.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip about_box.bil
about_box_ui.o: about_box_ui.c about_box_ui.h about_box.bil
about_box_stubs.o: about_box_stubs.c about_box_ui.c about_box_ui.h about_box.bil

appfw_ui.c appfw_ui.h appfw_stubs.c: $(PROJFILE).bip appfw.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip appfw.bil
appfw_ui.o: appfw_ui.c appfw_ui.h appfw.bil
appfw_stubs.o: appfw_stubs.c appfw_ui.c appfw_ui.h appfw.bil

attch_ed_ui.c attch_ed_ui.h attch_ed_stubs.c: $(PROJFILE).bip attch_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip attch_ed.bil
attch_ed_ui.o: attch_ed_ui.c attch_ed_ui.h attch_ed.bil
attch_ed_stubs.o: attch_ed_stubs.c attch_ed_ui.c attch_ed_ui.h attch_ed.bil

brws_ui.c brws_ui.h brws_stubs.c: $(PROJFILE).bip brws.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip brws.bil
brws_ui.o: brws_ui.c brws_ui.h brws.bil
brws_stubs.o: brws_stubs.c brws_ui.c brws_ui.h brws.bil

button_ui.c button_ui.h button_stubs.c: $(PROJFILE).bip button.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip button.bil
button_ui.o: button_ui.c button_ui.h button.bil
button_stubs.o: button_stubs.c button_ui.c button_ui.h button.bil

cgen_env_ui.c cgen_env_ui.h cgen_env_stubs.c: $(PROJFILE).bip cgen_env.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_env.bil
cgen_env_ui.o: cgen_env_ui.c cgen_env_ui.h cgen_env.bil
cgen_env_stubs.o: cgen_env_stubs.c cgen_env_ui.c cgen_env_ui.h cgen_env.bil

cgen_props_ui.c cgen_props_ui.h cgen_props_stubs.c: $(PROJFILE).bip cgen_props.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_props.bil
cgen_props_ui.o: cgen_props_ui.c cgen_props_ui.h cgen_props.bil
cgen_props_stubs.o: cgen_props_stubs.c cgen_props_ui.c cgen_props_ui.h cgen_props.bil

cgen_win_ui.c cgen_win_ui.h cgen_win_stubs.c: $(PROJFILE).bip cgen_win.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cgen_win.bil
cgen_win_ui.o: cgen_win_ui.c cgen_win_ui.h cgen_win.bil
cgen_win_stubs.o: cgen_win_stubs.c cgen_win_ui.c cgen_win_ui.h cgen_win.bil

choice_ui.c choice_ui.h choice_stubs.c: $(PROJFILE).bip choice.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip choice.bil
choice_ui.o: choice_ui.c choice_ui.h choice.bil
choice_stubs.o: choice_stubs.c choice_ui.c choice_ui.h choice.bil

color_chooser_ui.c color_chooser_ui.h color_chooser_stubs.c: $(PROJFILE).bip color_chooser.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip color_chooser.bil
color_chooser_ui.o: color_chooser_ui.c color_chooser_ui.h color_chooser.bil
color_chooser_stubs.o: color_chooser_stubs.c color_chooser_ui.c color_chooser_ui.h color_chooser.bil

combobox_ui.c combobox_ui.h combobox_stubs.c: $(PROJFILE).bip combobox.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip combobox.bil
combobox_ui.o: combobox_ui.c combobox_ui.h combobox.bil
combobox_stubs.o: combobox_stubs.c combobox_ui.c combobox_ui.h combobox.bil

conn_ui.c conn_ui.h conn_stubs.c: $(PROJFILE).bip conn.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip conn.bil
conn_ui.o: conn_ui.c conn_ui.h conn.bil
conn_stubs.o: conn_stubs.c conn_ui.c conn_ui.h conn.bil

cpanel_ui.c cpanel_ui.h cpanel_stubs.c: $(PROJFILE).bip cpanel.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip cpanel.bil
cpanel_ui.o: cpanel_ui.c cpanel_ui.h cpanel.bil
cpanel_stubs.o: cpanel_stubs.c cpanel_ui.c cpanel_ui.h cpanel.bil

custdlg_ui.c custdlg_ui.h custdlg_stubs.c: $(PROJFILE).bip custdlg.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip custdlg.bil
custdlg_ui.o: custdlg_ui.c custdlg_ui.h custdlg.bil
custdlg_stubs.o: custdlg_stubs.c custdlg_ui.c custdlg_ui.h custdlg.bil

dnd_ed_ui.c dnd_ed_ui.h dnd_ed_stubs.c: $(PROJFILE).bip dnd_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip dnd_ed.bil
dnd_ed_ui.o: dnd_ed_ui.c dnd_ed_ui.h dnd_ed.bil
dnd_ed_stubs.o: dnd_ed_stubs.c dnd_ed_ui.c dnd_ed_ui.h dnd_ed.bil

drawp_ui.c drawp_ui.h drawp_stubs.c: $(PROJFILE).bip drawp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip drawp.bil
drawp_ui.o: drawp_ui.c drawp_ui.h drawp.bil
drawp_stubs.o: drawp_stubs.c drawp_ui.c drawp_ui.h drawp.bil

fchooser_ui.c fchooser_ui.h fchooser_stubs.c: $(PROJFILE).bip fchooser.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip fchooser.bil
fchooser_ui.o: fchooser_ui.c fchooser_ui.h fchooser.bil
fchooser_stubs.o: fchooser_stubs.c fchooser_ui.c fchooser_ui.h fchooser.bil

group_ui.c group_ui.h group_stubs.c: $(PROJFILE).bip group.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip group.bil
group_ui.o: group_ui.c group_ui.h group.bil
group_stubs.o: group_stubs.c group_ui.c group_ui.h group.bil

help_ed_ui.c help_ed_ui.h help_ed_stubs.c: $(PROJFILE).bip help_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip help_ed.bil
help_ed_ui.o: help_ed_ui.c help_ed_ui.h help_ed.bil
help_ed_stubs.o: help_ed_stubs.c help_ed_ui.c help_ed_ui.h help_ed.bil

label_ui.c label_ui.h label_stubs.c: $(PROJFILE).bip label.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip label.bil
label_ui.o: label_ui.c label_ui.h label.bil
label_stubs.o: label_stubs.c label_ui.c label_ui.h label.bil

list_ui.c list_ui.h list_stubs.c: $(PROJFILE).bip list.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip list.bil
list_ui.o: list_ui.c list_ui.h list.bil
list_stubs.o: list_stubs.c list_ui.c list_ui.h list.bil

mainwin_ui.c mainwin_ui.h mainwin_stubs.c: $(PROJFILE).bip mainwin.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip mainwin.bil
mainwin_ui.o: mainwin_ui.c mainwin_ui.h mainwin.bil
mainwin_stubs.o: mainwin_stubs.c mainwin_ui.c mainwin_ui.h mainwin.bil

menu_ui.c menu_ui.h menu_stubs.c: $(PROJFILE).bip menu.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip menu.bil
menu_ui.o: menu_ui.c menu_ui.h menu.bil
menu_stubs.o: menu_stubs.c menu_ui.c menu_ui.h menu.bil

menubar_ui.c menubar_ui.h menubar_stubs.c: $(PROJFILE).bip menubar.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip menubar.bil
menubar_ui.o: menubar_ui.c menubar_ui.h menubar.bil
menubar_stubs.o: menubar_stubs.c menubar_ui.c menubar_ui.h menubar.bil

message_ed_ui.c message_ed_ui.h message_ed_stubs.c: $(PROJFILE).bip message_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip message_ed.bil
message_ed_ui.o: message_ed_ui.c message_ed_ui.h message_ed.bil
message_ed_stubs.o: message_ed_stubs.c message_ed_ui.c message_ed_ui.h message_ed.bil

palette_ui.c palette_ui.h palette_stubs.c: $(PROJFILE).bip palette.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip palette.bil
palette_ui.o: palette_ui.c palette_ui.h palette.bil
palette_stubs.o: palette_stubs.c palette_ui.c palette_ui.h palette.bil

panedwin_ed_ui.c panedwin_ed_ui.h panedwin_ed_stubs.c: $(PROJFILE).bip panedwin_ed.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip panedwin_ed.bil
panedwin_ed_ui.o: panedwin_ed_ui.c panedwin_ed_ui.h panedwin_ed.bil
panedwin_ed_stubs.o: panedwin_ed_stubs.c panedwin_ed_ui.c panedwin_ed_ui.h panedwin_ed.bil

proj_ui.c proj_ui.h proj_stubs.c: $(PROJFILE).bip proj.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip proj.bil
proj_ui.o: proj_ui.c proj_ui.h proj.bil
proj_stubs.o: proj_stubs.c proj_ui.c proj_ui.h proj.bil

revolv_ui.c revolv_ui.h revolv_stubs.c: $(PROJFILE).bip revolv.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip revolv.bil
revolv_ui.o: revolv_ui.c revolv_ui.h revolv.bil
revolv_stubs.o: revolv_stubs.c revolv_ui.c revolv_ui.h revolv.bil

scale_ui.c scale_ui.h scale_stubs.c: $(PROJFILE).bip scale.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip scale.bil
scale_ui.o: scale_ui.c scale_ui.h scale.bil
scale_stubs.o: scale_stubs.c scale_ui.c scale_ui.h scale.bil

sep_ui.c sep_ui.h sep_stubs.c: $(PROJFILE).bip sep.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip sep.bil
sep_ui.o: sep_ui.c sep_ui.h sep.bil
sep_stubs.o: sep_stubs.c sep_ui.c sep_ui.h sep.bil

spinbox_ui.c spinbox_ui.h spinbox_stubs.c: $(PROJFILE).bip spinbox.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip spinbox.bil
spinbox_ui.o: spinbox_ui.c spinbox_ui.h spinbox.bil
spinbox_stubs.o: spinbox_stubs.c spinbox_ui.c spinbox_ui.h spinbox.bil

termp_ui.c termp_ui.h termp_stubs.c: $(PROJFILE).bip termp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip termp.bil
termp_ui.o: termp_ui.c termp_ui.h termp.bil
termp_stubs.o: termp_stubs.c termp_ui.c termp_ui.h termp.bil

textf_ui.c textf_ui.h textf_stubs.c: $(PROJFILE).bip textf.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip textf.bil
textf_ui.o: textf_ui.c textf_ui.h textf.bil
textf_stubs.o: textf_stubs.c textf_ui.c textf_ui.h textf.bil

textp_ui.c textp_ui.h textp_stubs.c: $(PROJFILE).bip textp.bil
	$(DTCODEGEN) -changed -merge -p $(PROJFILE).bip textp.bil
textp_ui.o: textp_ui.c textp_ui.h textp.bil
textp_stubs.o: textp_stubs.c textp_ui.c textp_ui.h textp.bil

endif

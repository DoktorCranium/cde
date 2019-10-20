MAINTAINERCLEANFILES = Makefile.in

DBTOMAN = $(srcdir)/doc/util/dbtoman/dbtoman
DBENVSETUP = CDETOP=$(srcdir)

ALLFILES = man1/dsdm.1 man1/dtaction.1 man1/dtappgather.1 \
	   man1/dtappintegrate.1 man1/dtbuilder.1 man1/dtcalc.1 \
	   man1/dtchooser.1 man1/dtcm.1 man1/dtcm_delete.1 man1/dtcm_editor.1 \
	   man1/dtcm_insert.1 man1/dtcm_lookup.1 man1/dtcodegen.1 \
	   man1/dtconfig.1 man1/dtconvertvf.1 man1/dtcreate.1 man1/dtdocbook.1 \
	   man1/dtexec.1 man1/dtfile.1 man1/dtfile_copy.1 man1/dtfile_error.1 \
	   man1/dtfplist.1 man1/dtgreet.1 man1/dthello.1 man1/dthelp_ctag1.1 \
	   man1/dthelp_htag1.1 man1/dthelp_htag2.1 man1/dthelpgen.1 \
	   man1/dthelpprint.1 man1/dthelptag.1 man1/dthelpview.1 man1/dticon.1 \
	   man1/dtimsstart.1 man1/dtinfo.1 man1/dtinfogen.1 man1/dtksh.1 \
	   man1/dtlogin.1 man1/dtlp.1 man1/dtmail.1 man1/dtmailpr.1 \
	   man1/dtpad.1 man1/dtpdm.1 man1/dtpdmd.1 man1/dtprintinfo.1 \
	   man1/dtscreen.1 man1/dtsearchpath.1 man1/dtsession.1 \
	   man1/dtsession_res.1 man1/dtsrcreate.1 man1/dtsrdbrec.1 \
	   man1/dtsrhan.1 man1/dtsrindex.1 man1/dtsrkdump.1 man1/dtsrload.1 \
	   man1/dtstyle.1 man1/dtterm.1 man1/dttypes.1 man1/dtudcexch.1 \
	   man1/dtudcfonted.1 man1/dtwm.1 man1/huffcode.1 man1/ksh.1 \
	   man1/tt_type_comp.1 man1/ttcp.1 man1/ttmv.1 man1/ttrm.1 \
	   man1/ttrmdir.1 man1/ttsession.1 man1/tttar.1 man1/tttrace.1 \
	   man1m/dtspcd.1m man1m/rpc.cmsd.1m man1m/ttdbck.1m \
	   man1m/ttdbserver.1m man1m/ttdbserverd.1m \
	   man3/DtActionCallbackProc.3 man3/DtActionDescription.3 \
	   man3/DtActionExists.3 man3/DtActionIcon.3 man3/DtActionInvoke.3 \
	   man3/DtActionLabel.3 man3/DtAppInitialize.3 man3/DtInitialize.3 \
	   man3/DtComboBox.3 man3/DtComboBoxAddItem.3 \
	   man3/DtComboBoxDeletePos.3 man3/DtComboBoxSelectItem.3 \
	   man3/DtComboBoxSetItem.3 man3/DtCreateComboBox.3 \
	   man3/DtCreateEditor.3 man3/DtCreateHelpDialog.3 \
	   man3/DtCreateHelpQuickDialog.3 man3/DtCreateMenuButton.3 \
	   man3/DtCreatePrintSetupBox.3 man3/DtCreatePrintSetupDialog.3 \
	   man3/DtCreateSpinBox.3 man3/DtCreateTerm.3 man3/DtDbLoad.3 \
	   man3/DtDbReloadNotify.3 man3/DtDndCreateSourceIcon.3 \
	   man3/DtDndDragStart.3 man3/DtDndVaDragStart.3 \
	   man3/DtDndDropRegister.3 man3/DtDndVaDropRegister.3 \
	   man3/DtDndDropUnregister.3 man3/DtDtsBufferToAttributeList.3 \
	   man3/DtDtsBufferToAttributeValue.3 man3/DtDtsBufferToDataType.3 \
	   man3/DtDtsDataToDataType.3 man3/DtDtsDataTypeIsAction.3 \
	   man3/DtDtsDataTypeNames.3 man3/DtDtsDataTypeToAttributeList.3 \
	   man3/DtDtsDataTypeToAttributeValue.3 \
	   man3/DtDtsFileToAttributeList.3 man3/DtDtsFileToAttributeValue.3 \
	   man3/DtDtsFileToDataType.3 man3/DtDtsFindAttribute.3 \
	   man3/DtDtsFreeAttributeList.3 man3/DtDtsFreeAttributeValue.3 \
	   man3/DtDtsFreeDataType.3 man3/DtDtsFreeDataTypeNames.3 \
	   man3/DtDtsIsTrue.3 man3/DtDtsLoadDataTypes.3 man3/DtDtsRelease.3 \
	   man3/DtDtsSetDataType.3 man3/DtEditor.3 man3/DtEditorAppend.3 \
	   man3/DtEditorAppendFromFile.3 man3/DtEditorChange.3 \
	   man3/DtEditorCheckForUnsavedChanges.3 man3/DtEditorClearSelection.3 \
	   man3/DtEditorCopyToClipboard.3 man3/DtEditorCutToClipboard.3 \
	   man3/DtEditorDeleteSelection.3 man3/DtEditorDeselect.3 \
	   man3/DtEditorDisableRedisplay.3 man3/DtEditorEnableRedisplay.3 \
	   man3/DtEditorFind.3 man3/DtEditorFormat.3 \
	   man3/DtEditorGetContents.3 man3/DtEditorGetInsertionPosition.3 \
	   man3/DtEditorGetLastPosition.3 man3/DtEditorGetMessageTextFieldID.3 \
	   man3/DtEditorGetSizeHints.3 man3/DtEditorGoToLine.3 \
	   man3/DtEditorInsert.3 man3/DtEditorInsertFromFile.3 \
	   man3/DtEditorInvokeFindChangeDialog.3 \
	   man3/DtEditorInvokeFormatDialog.3 man3/DtEditorInvokeSpellDialog.3 \
	   man3/DtEditorPasteFromClipboard.3 man3/DtEditorReplace.3 \
	   man3/DtEditorReplaceFromFile.3 man3/DtEditorReset.3 \
	   man3/DtEditorSaveContentsToFile.3 man3/DtEditorSelectAll.3 \
	   man3/DtEditorSetContents.3 man3/DtEditorSetContentsFromFile.3 \
	   man3/DtEditorSetInsertionPosition.3 man3/DtEditorTraverseToEditor.3 \
	   man3/DtEditorUndoEdit.3 man3/DtHelpDialog.3 \
	   man3/DtHelpQuickDialog.3 man3/DtHelpQuickDialogGetChild.3 \
	   man3/DtHelpReturnSelectedWidgetId.3 man3/DtHelpSetCatalogName.3 \
	   man3/DtInfoShowTopic.3 man3/DtMenuButton.3 \
	   man3/DtMmdbBookCaseFreeInfo.3 man3/DtMmdbBookCaseGetInfo.3 \
	   man3/DtMmdbBookGetLicense.3 man3/DtMmdbBookGetLongTitle.3 \
	   man3/DtMmdbBookGetSeqNum.3 man3/DtMmdbBookGetShortTitle.3 \
	   man3/DtMmdbBookGetTabList.3 man3/DtMmdbBookGetTocObjectId.3 \
	   man3/DtMmdbCloseInfoLib.3 man3/DtMmdbDlpGetNextSectionId.3 \
	   man3/DtMmdbDlpGetPrevSectionId.3 man3/DtMmdbFreeGraphicInfo.3 \
	   man3/DtMmdbFreeHandle.3 man3/DtMmdbFreeHandleList.3 \
	   man3/DtMmdbGetBookCaseByIndex.3 man3/DtMmdbGetBookCaseByLoc.3 \
	   man3/DtMmdbGetBookCaseByLocs.3 man3/DtMmdbGetBookCaseByName.3 \
	   man3/DtMmdbGraphicGetData.3 man3/DtMmdbGraphicGetInfo.3 \
	   man3/DtMmdbInfoLibFreeInfo.3 man3/DtMmdbInfoLibGetInfo.3 \
	   man3/DtMmdbInit.3 man3/DtMmdbLocatorGetSectionLoc.3 \
	   man3/DtMmdbLocatorGetSectionObjectId.3 man3/DtMmdbOpenInfoLib.3 \
	   man3/DtMmdbQuit.3 man3/DtMmdbSectionGetBookId.3 \
	   man3/DtMmdbSectionGetData.3 man3/DtMmdbSectionGetDataSize.3 \
	   man3/DtMmdbSectionGetLoc.3 man3/DtMmdbSectionGetLongTitle.3 \
	   man3/DtMmdbSectionGetShortTitle.3 \
	   man3/DtMmdbSectionGetStyleSheetId.3 man3/DtMmdbSectionGetTocLoc.3 \
	   man3/DtMmdbStylesheetGetData.3 man3/DtMmdbStylesheetGetName.3 \
	   man3/DtMmdbTocGetChildIds.3 man3/DtMmdbTocGetNumOfChildren.3 \
	   man3/DtMmdbTocGetParentId.3 man3/DtMrmInitialize.3 \
	   man3/DtMsgLogMessage.3 man3/DtMsgLogOpenFile.3 \
	   man3/DtMsgLogSetHandler.3 man3/DtPrintCopySetupData.3 \
	   man3/DtPrintFillSetupData.3 man3/DtPrintFreeSetupData.3 \
	   man3/DtPrintResetConnection.3 man3/DtPrintSetupBox.3 \
	   man3/DtPrintSetupProc.3 man3/DtSaverGetWindows.3 \
	   man3/DtSearchExit.3 man3/DtSearchFreeResults.3 \
	   man3/DtSearchGetKeytypes.3 man3/DtSearchGetMaxResults.3 \
	   man3/DtSearchHighlight.3 man3/DtSearchInit.3 \
	   man3/DtSearchMergeResults.3 man3/DtSearchHasMessages.3 \
	   man3/DtSearchAddMessage.3 man3/DtSearchFreeMessages.3 \
	   man3/DtSearchGetMessages.3 man3/DtSearchQuery.3 \
	   man3/DtSearchReinit.3 man3/DtSearchRetrieve.3 \
	   man3/DtSearchSetMaxResults.3 man3/DtSearchSortResults.3 \
	   man3/DtSearchValidDateString.3 man3/DtSessionRestorePath.3 \
	   man3/DtSessionSavePath.3 man3/DtSpinBox.3 man3/DtSpinBoxAddItem.3 \
	   man3/DtSpinBoxDeletePos.3 man3/DtSpinBoxSetItem.3 man3/DtSrAPI.3 \
	   man3/DtTerm.3 man3/DtTermDisplaySend.3 man3/DtTermInitialize.3 \
	   man3/DtTermSubprocReap.3 man3/DtTermSubprocSend.3 \
	   man3/DtWsmAddCurrentWorkspaceCallback.3 man3/DtWsmAddWorkspace.3 \
	   man3/DtWsmAddWorkspaceFunctions.3 \
	   man3/DtWsmAddWorkspaceModifiedCallback.3 man3/DtWsmChangeBackdrop.3 \
	   man3/DtWsmDeleteWorkspace.3 man3/DtWsmFreeWorkspaceInfo.3 \
	   man3/DtWsmGetCurrentBackdropWindow.3 \
	   man3/DtWsmGetCurrentWorkspace.3 man3/DtWsmGetWorkspaceInfo.3 \
	   man3/DtWsmGetWorkspaceList.3 man3/DtWsmGetWorkspacesOccupied.3 \
	   man3/DtWsmOccupyAllWorkspaces.3 man3/DtWsmRemoveWorkspaceCallback.3 \
	   man3/DtWsmRemoveWorkspaceFunctions.3 \
	   man3/DtWsmSetCurrentWorkspace.3 man3/DtWsmSetWorkspacesOccupied.3 \
	   man3/DtWsmSetWorkspaceTitle.3 man3/csa_add_calendar.3 \
	   man3/csa_add_entry.3 man3/csa_call_callbacks.3 \
	   man3/csa_delete_calendar.3 man3/csa_delete_entry.3 man3/csa_free.3 \
	   man3/csa_free_time_search.3 man3/csa_list_calendar_attributes.3 \
	   man3/csa_list_calendars.3 man3/csa_list_entries.3 \
	   man3/csa_list_entry_attributes.3 man3/csa_list_entry_sequence.3 \
	   man3/csa_logoff.3 man3/csa_logon.3 man3/csa_look_up.3 \
	   man3/csa_query_configuration.3 man3/csa_read_calendar_attributes.3 \
	   man3/csa_read_entry_attributes.3 man3/csa_read_next_reminder.3 \
	   man3/csa_register_callback.3 man3/csa_restore.3 man3/csa_save.3 \
	   man3/csa_unregister_callback.3 \
	   man3/csa_update_calendar_attributes.3 \
	   man3/csa_update_entry_attributes.3 man3/csa_x_process_updates.3 \
	   man3/tt_X_session.3 man3/tt_bcontext_join.3 man3/tt_bcontext_quit.3 \
	   man3/tt_close.3 man3/tt_context_join.3 man3/tt_context_quit.3 \
	   man3/tt_default_file.3 man3/tt_default_file_set.3 \
	   man3/tt_default_procid.3 man3/tt_default_procid_set.3 \
	   man3/tt_default_ptype.3 man3/tt_default_ptype_set.3 \
	   man3/tt_default_session.3 man3/tt_default_session_set.3 \
	   man3/tt_error.3 man3/tt_error_int.3 man3/tt_error_pointer.3 \
	   man3/tt_fd.3 man3/tt_feature_enabled.3 man3/tt_feature_required.3 \
	   man3/tt_file_copy.3 man3/tt_file_destroy.3 man3/tt_file_join.3 \
	   man3/tt_file_move.3 man3/tt_file_netfile.3 \
	   man3/tt_file_objects_query.3 man3/tt_file_quit.3 man3/tt_free.3 \
	   man3/tt_host_file_netfile.3 man3/tt_host_netfile_file.3 \
	   man3/tt_icontext_join.3 man3/tt_icontext_quit.3 \
	   man3/tt_initial_session.3 man3/tt_int_error.3 man3/tt_is_err.3 \
	   man3/tt_malloc.3 man3/tt_mark.3 man3/tt_message_abstainer.3 \
	   man3/tt_message_abstainers_count.3 man3/tt_message_accept.3 \
	   man3/tt_message_accepter.3 man3/tt_message_accepters_count.3 \
	   man3/tt_message_address.3 man3/tt_message_address_set.3 \
	   man3/tt_message_arg_add.3 man3/tt_message_arg_bval.3 \
	   man3/tt_message_arg_bval_set.3 man3/tt_message_arg_ival.3 \
	   man3/tt_message_arg_ival_set.3 man3/tt_message_arg_mode.3 \
	   man3/tt_message_arg_type.3 man3/tt_message_arg_val.3 \
	   man3/tt_message_arg_val_set.3 man3/tt_message_arg_xval.3 \
	   man3/tt_message_arg_xval_set.3 man3/tt_message_args_count.3 \
	   man3/tt_message_barg_add.3 man3/tt_message_bcontext_set.3 \
	   man3/tt_message_callback_add.3 man3/tt_message_class.3 \
	   man3/tt_message_class_set.3 man3/tt_message_context_bval.3 \
	   man3/tt_message_context_ival.3 man3/tt_message_context_set.3 \
	   man3/tt_message_context_slotname.3 man3/tt_message_context_val.3 \
	   man3/tt_message_context_xval.3 man3/tt_message_contexts_count.3 \
	   man3/tt_message_create.3 man3/tt_message_create_super.3 \
	   man3/tt_message_destroy.3 man3/tt_message_disposition.3 \
	   man3/tt_message_disposition_set.3 man3/tt_message_fail.3 \
	   man3/tt_message_file.3 man3/tt_message_file_set.3 \
	   man3/tt_message_gid.3 man3/tt_message_handler.3 \
	   man3/tt_message_handler_ptype.3 man3/tt_message_handler_ptype_set.3 \
	   man3/tt_message_handler_set.3 man3/tt_message_iarg_add.3 \
	   man3/tt_message_icontext_set.3 man3/tt_message_id.3 \
	   man3/tt_message_object.3 man3/tt_message_object_set.3 \
	   man3/tt_message_op.3 man3/tt_message_op_set.3 \
	   man3/tt_message_opnum.3 man3/tt_message_otype.3 \
	   man3/tt_message_otype_set.3 man3/tt_message_pattern.3 \
	   man3/tt_message_print.3 man3/tt_message_receive.3 \
	   man3/tt_message_reject.3 man3/tt_message_rejecter.3 \
	   man3/tt_message_rejecters_count.3 man3/tt_message_reply.3 \
	   man3/tt_message_scope.3 man3/tt_message_scope_set.3 \
	   man3/tt_message_send.3 man3/tt_message_send_on_exit.3 \
	   man3/tt_message_sender.3 man3/tt_message_sender_ptype.3 \
	   man3/tt_message_sender_ptype_set.3 man3/tt_message_session.3 \
	   man3/tt_message_session_set.3 man3/tt_message_state.3 \
	   man3/tt_message_status.3 man3/tt_message_status_set.3 \
	   man3/tt_message_status_string.3 man3/tt_message_status_string_set.3 \
	   man3/tt_message_uid.3 man3/tt_message_user.3 \
	   man3/tt_message_user_set.3 man3/tt_message_xarg_add.3 \
	   man3/tt_message_xcontext_set.3 man3/tt_netfile_file.3 \
	   man3/tt_objid_equal.3 man3/tt_objid_objkey.3 \
	   man3/tt_onotice_create.3 man3/tt_open.3 man3/tt_orequest_create.3 \
	   man3/tt_otype_base.3 man3/tt_otype_derived.3 \
	   man3/tt_otype_deriveds_count.3 man3/tt_otype_hsig_arg_mode.3 \
	   man3/tt_otype_hsig_arg_type.3 man3/tt_otype_hsig_args_count.3 \
	   man3/tt_otype_hsig_count.3 man3/tt_otype_hsig_op.3 \
	   man3/tt_otype_is_derived.3 man3/tt_otype_opnum_callback_add.3 \
	   man3/tt_otype_osig_arg_mode.3 man3/tt_otype_osig_arg_type.3 \
	   man3/tt_otype_osig_args_count.3 man3/tt_otype_osig_count.3 \
	   man3/tt_otype_osig_op.3 man3/tt_pattern_address_add.3 \
	   man3/tt_pattern_arg_add.3 man3/tt_pattern_barg_add.3 \
	   man3/tt_pattern_bcontext_add.3 man3/tt_pattern_callback_add.3 \
	   man3/tt_pattern_category.3 man3/tt_pattern_category_set.3 \
	   man3/tt_pattern_class_add.3 man3/tt_pattern_context_add.3 \
	   man3/tt_pattern_create.3 man3/tt_pattern_destroy.3 \
	   man3/tt_pattern_disposition_add.3 man3/tt_pattern_file_add.3 \
	   man3/tt_pattern_iarg_add.3 man3/tt_pattern_icontext_add.3 \
	   man3/tt_pattern_object_add.3 man3/tt_pattern_op_add.3 \
	   man3/tt_pattern_opnum_add.3 man3/tt_pattern_otype_add.3 \
	   man3/tt_pattern_print.3 man3/tt_pattern_register.3 \
	   man3/tt_pattern_scope_add.3 man3/tt_pattern_sender_add.3 \
	   man3/tt_pattern_sender_ptype_add.3 man3/tt_pattern_session_add.3 \
	   man3/tt_pattern_state_add.3 man3/tt_pattern_unregister.3 \
	   man3/tt_pattern_user.3 man3/tt_pattern_user_set.3 \
	   man3/tt_pattern_xarg_add.3 man3/tt_pattern_xcontext_add.3 \
	   man3/tt_pnotice_create.3 man3/tt_pointer_error.3 \
	   man3/tt_prequest_create.3 man3/tt_procid_session.3 \
	   man3/tt_ptr_error.3 man3/tt_ptype_declare.3 man3/tt_ptype_exists.3 \
	   man3/tt_ptype_opnum_callback_add.3 man3/tt_ptype_undeclare.3 \
	   man3/tt_release.3 man3/tt_session_bprop.3 \
	   man3/tt_session_bprop_add.3 man3/tt_session_bprop_set.3 \
	   man3/tt_session_join.3 man3/tt_session_prop.3 \
	   man3/tt_session_prop_add.3 man3/tt_session_prop_count.3 \
	   man3/tt_session_prop_set.3 man3/tt_session_propname.3 \
	   man3/tt_session_propnames_count.3 man3/tt_session_quit.3 \
	   man3/tt_session_types_load.3 man3/tt_spec_bprop.3 \
	   man3/tt_spec_bprop_add.3 man3/tt_spec_bprop_set.3 \
	   man3/tt_spec_create.3 man3/tt_spec_destroy.3 man3/tt_spec_file.3 \
	   man3/tt_spec_move.3 man3/tt_spec_prop.3 man3/tt_spec_prop_add.3 \
	   man3/tt_spec_prop_count.3 man3/tt_spec_prop_set.3 \
	   man3/tt_spec_propname.3 man3/tt_spec_propnames_count.3 \
	   man3/tt_spec_type.3 man3/tt_spec_type_set.3 man3/tt_spec_write.3 \
	   man3/tt_status_message.3 man3/tt_thread_procid.3 \
	   man3/tt_thread_procid_set.3 man3/tt_thread_session.3 \
	   man3/tt_thread_session_set.3 man3/tt_trace_control.3 \
	   man3/tt_xcontext_join.3 man3/tt_xcontext_quit.3 \
	   man3/ttdt_Get_Modified.3 man3/ttdt_Revert.3 man3/ttdt_Save.3 \
	   man3/ttdt_close.3 man3/ttdt_file_event.3 man3/ttdt_file_join.3 \
	   man3/ttdt_file_notice.3 man3/ttdt_file_quit.3 \
	   man3/ttdt_file_request.3 man3/ttdt_message_accept.3 \
	   man3/ttdt_open.3 man3/ttdt_sender_imprint_on.3 \
	   man3/ttdt_session_join.3 man3/ttdt_session_quit.3 \
	   man3/ttdt_subcontract_manage.3 man3/ttmedia_Deposit.3 \
	   man3/ttmedia_load.3 man3/ttmedia_load_reply.3 \
	   man3/ttmedia_ptype_declare.3 man3/tttk_Xt_input_handler.3 \
	   man3/tttk_block_while.3 man3/tttk_message_abandon.3 \
	   man3/tttk_message_create.3 man3/tttk_message_destroy.3 \
	   man3/tttk_message_fail.3 man3/tttk_message_reject.3 \
	   man3/tttk_op_string.3 man3/tttk_string_op.3 man4/BIL.4 \
	   man4/Deposit.4 man4/Display.4 man4/DtDndProtocol.4 \
	   man4/DtInfo_LoadInfoLib.4 man4/DtInfo_PrintInfoAtLoc.4 \
	   man4/DtInfo_Quit.4 man4/DtInfo_ShowInfoAtLoc.4 man4/Edit.4 \
	   man4/Get_Environment.4 man4/Get_Geometry.4 man4/Get_Iconified.4 \
	   man4/Get_Locale.4 man4/Get_Mapped.4 man4/Get_Modified.4 \
	   man4/Get_Situation.4 man4/Get_Status.4 man4/Get_Sysinfo.4 \
	   man4/Get_XInfo.4 man4/Instantiate.4 man4/Lower.4 man4/Mail.4 \
	   man4/Modified.4 man4/Pause.4 man4/Print.4 man4/Quit.4 man4/Raise.4 \
	   man4/Resume.4 man4/Revert.4 man4/Reverted.4 man4/Save.4 \
	   man4/Saved.4 man4/Set_Environment.4 man4/Set_Geometry.4 \
	   man4/Set_Iconified.4 man4/Set_Locale.4 man4/Set_Mapped.4 \
	   man4/Set_Situation.4 man4/Signal.4 man4/Started.4 man4/Status.4 \
	   man4/Stopped.4 man4/Translate.4 man4/dtactionfile.4 man4/dtbmfile.4 \
	   man4/dtcm_archive.4 man4/dtcm_entry.4 man4/dtdpfile.4 \
	   man4/dtdtfile.4 man4/dtdtsfile.4 man4/dtfile_config.4 \
	   man4/dtfpfile.4 man4/dthelptagdtd.4 man4/dthffile.4 \
	   man4/dticonfile.4 man4/dtlocator.4 man4/dtpmfile.4 \
	   man4/dtresourcesfile.4 man4/dtsdldtd.4 man4/dtsdlfile.4 \
	   man4/dtsessiondb.4 man4/dtsessionfile.4 man4/dtspcdenv.4 \
	   man4/dtsrdbfiles.4 man4/dtsrfzkfiles.4 man4/dtsrhanfile.4 \
	   man4/dtsrlangfiles.4 man4/dtsrocffile.4 man4/dtwmrc.4 \
	   man4/mt-libtt-intro.4 man4/startlog.4 man4/tttracefile.4 \
	   man5/Dt.5 man5/DtAction.5 man5/DtComboBox.5 man5/DtDnd.5 \
	   man5/DtDts.5 man5/DtEditor.5 man5/DtHelp.5 man5/DtHelpDialog.5 \
	   man5/DtHelpQuickD.5 man5/DtInfoLib.5 man5/DtMenuButton.5 \
	   man5/DtMmdbBookCase.5 man5/DtMmdbGraphicInfo.5 man5/DtMmdbHandle.5 \
	   man5/DtMmdbInfoLibInfo.5 man5/DtMmdbInfoRequest.5 man5/DtMrm.5 \
	   man5/DtMsgLog.5 man5/DtPrint.5 man5/DtSaver.5 man5/DtSearch.5 \
	   man5/DtSession.5 man5/DtSpinBox.5 man5/DtStdAppFontNames.5 \
	   man5/DtStdInterfaceFontNames.5 man5/DtTerm.5 man5/DtWsm.5 \
	   man5/Tttt_c.5 man5/Tttttk.5 man5/csacsa.5 man5/dtactionaction.5 \
	   man5/dtappaction.5 man5/dtbuilderaction.5 man5/dtcalcaction.5 \
	   man5/dtcalendaraction.5 man5/dtenvvar.5 man5/dtfileaction.5 \
	   man5/dtfilsys.5 man5/dthelpaction.5 man5/dticonaction.5 \
	   man5/dtimsstartaction.5 man5/dtinfoBookdtd.5 man5/dtinfoStyledtd.5 \
	   man5/dtinfoTOCdtd.5 man5/dtinfoaction.5 man5/dtinfoaf.5 \
	   man5/dtmailaction.5 man5/dtmanaction.5 man5/dtprintinfoaction.5 \
	   man5/dtsessionaction.5 man5/dtstyleaction.5 man5/dtterm.5 \
	   man5/dttermaction.5 man5/dttextaction.5 man5/dttrashaction.5 \
	   man6/ttsnoop.6

dist_man_MANS = $(ALLFILES)

all:: dirs $(ALLFILES)

dirs::
        @for flag in ${MAKEFLAGS} ''; do \
          case "$$flag" in *=*) ;; *[i]*) set +e;; esac; done; \
        for i in man1 man1m man3 man4 man5 man6; do if [ -d $(DESTDIR)$$i ]; then
                set +x; else (set -x; $(MKDIR_P) $(DESTDIR)$$i); fi \
        done

clean::
        $(RM) -r man1 man1m man3 man4 man5 man6

# hack alert, automake has no macro functionality that I'm aware of, so we use
# variables and includes to substitute former imake macros

MANTARGET = man1/dsdm.1
MANSRC = ../guides/man/man1/dsdm.sgm
include manpage.tmpl

MANTARGET = man1/dtaction.1
MANSRC = ../guides/man/man1_dt/action.sgm
include manpage.tmpl

MANTARGET = man1/dtappgather.1
MANSRC = ../guides/man/man1_dt/appgathe.sgm
include manpage.tmpl

MANTARGET = man1/dtappintegrate.1
MANSRC = ../guides/man/man1_dt/appinteg.sgm
include manpage.tmpl

MANTARGET = man1/dtbuilder.1
MANSRC = ../guides/man/man1_dt/builder.sgm
include manpage.tmpl

MANTARGET = man1/dtcalc.1
MANSRC = ../guides/man/man1_dt/calc.sgm
include manpage.tmpl

MANTARGET = man1/dtchooser.1
MANSRC = ../guides/man/man1_dt/chooser.sgm
include manpage.tmpl

MANTARGET = man1/dtcm.1
MANSRC = ../guides/man/man1_dt/cm.sgm
include manpage.tmpl

MANTARGET = man1/dtcm_delete.1
MANSRC = ../guides/man/man1_dt/cm_delet.sgm
include manpage.tmpl

MANTARGET = man1/dtcm_editor.1
MANSRC = ../guides/man/man1_dt/cm_edito.sgm
include manpage.tmpl

MANTARGET = man1/dtcm_insert.1
MANSRC = ../guides/man/man1_dt/cm_inser.sgm
include manpage.tmpl

MANTARGET = man1/dtcm_lookup.1
MANSRC = ../guides/man/man1_dt/cm_looku.sgm
include manpage.tmpl

MANTARGET = man1/dtcodegen.1
MANSRC = ../guides/man/man1_dt/codegen.sgm
include manpage.tmpl

MANTARGET = man1/dtconfig.1
MANSRC = ../guides/man/man1_dt/config.sgm
include manpage.tmpl

MANTARGET = man1/dtconvertvf.1
MANSRC = ../guides/man/man1_dt/convertv.sgm
include manpage.tmpl

MANTARGET = man1/dtcreate.1
MANSRC = ../guides/man/man1_dt/create.sgm
include manpage.tmpl

MANTARGET = man1/dtdocbook.1
MANSRC = ../guides/man/man1_dt/docbook.sgm
include manpage.tmpl

MANTARGET = man1/dtexec.1
MANSRC = ../guides/man/man1_dt/exec.sgm
include manpage.tmpl

MANTARGET = man1/dtfile.1
MANSRC = ../guides/man/man1_dt/file.sgm
include manpage.tmpl

MANTARGET = man1/dtfile_copy.1
MANSRC = ../guides/man/man1_dt/file_cop.sgm
include manpage.tmpl

MANTARGET = man1/dtfile_error.1
MANSRC = ../guides/man/man1_dt/file_err.sgm
include manpage.tmpl

MANTARGET = man1/dtfplist.1
MANSRC = ../guides/man/man1_dt/fplist.sgm
include manpage.tmpl

MANTARGET = man1/dtgreet.1
MANSRC = ../guides/man/man1_dt/greet.sgm
include manpage.tmpl

MANTARGET = man1/dthello.1
MANSRC = ../guides/man/man1_dt/hello.sgm
include manpage.tmpl

MANTARGET = man1/dthelp_ctag1.1
MANSRC = ../guides/man/man1_dt/he_ctag1.sgm
include manpage.tmpl

MANTARGET = man1/dthelp_htag1.1
MANSRC = ../guides/man/man1_dt/he_htag1.sgm
include manpage.tmpl

MANTARGET = man1/dthelp_htag2.1
MANSRC = ../guides/man/man1_dt/he_htag2.sgm
include manpage.tmpl

MANTARGET = man1/dthelpgen.1
MANSRC = ../guides/man/man1_dt/helpgen.sgm
include manpage.tmpl

MANTARGET = man1/dthelpprint.1
MANSRC = ../guides/man/man1_dt/helpprin.sgm
include manpage.tmpl

MANTARGET = man1/dthelptag.1
MANSRC = ../guides/man/man1_dt/helptag.sgm
include manpage.tmpl

MANTARGET = man1/dthelpview.1
MANSRC = ../guides/man/man1_dt/helpview.sgm
include manpage.tmpl

MANTARGET = man1/dticon.1
MANSRC = ../guides/man/man1_dt/icon.sgm
include manpage.tmpl

MANTARGET = man1/dtimsstart.1
MANSRC = ../guides/man/man1_dt/imsstart.sgm
include manpage.tmpl

MANTARGET = man1/dtinfo.1
MANSRC = ../guides/man/man1_dt/info.sgm
include manpage.tmpl

MANTARGET = man1/dtinfogen.1
MANSRC = ../guides/man/man1_dt/infogen.sgm
include manpage.tmpl

MANTARGET = man1/dtksh.1
MANSRC = ../guides/man/man1_dt/ksh.sgm
include manpage.tmpl

MANTARGET = man1/dtlogin.1
MANSRC = ../guides/man/man1_dt/login.sgm
include manpage.tmpl

MANTARGET = man1/dtlp.1
MANSRC = ../guides/man/man1_dt/lp.sgm
include manpage.tmpl

MANTARGET = man1/dtmail.1
MANSRC = ../guides/man/man1_dt/mail.sgm
include manpage.tmpl

MANTARGET = man1/dtmailpr.1
MANSRC = ../guides/man/man1_dt/mailpr.sgm
include manpage.tmpl

MANTARGET = man1/dtpad.1
MANSRC = ../guides/man/man1_dt/pad.sgm
include manpage.tmpl

MANTARGET = man1/dtpdm.1
MANSRC = ../guides/man/man1_dt/pdm.sgm
include manpage.tmpl

MANTARGET = man1/dtpdmd.1
MANSRC = ../guides/man/man1_dt/pdmd.sgm
include manpage.tmpl

MANTARGET = man1/dtprintinfo.1
MANSRC = ../guides/man/man1_dt/printinf.sgm
include manpage.tmpl

MANTARGET = man1/dtscreen.1
MANSRC = ../guides/man/man1_dt/screen.sgm
include manpage.tmpl

MANTARGET = man1/dtsearchpath.1
MANSRC = ../guides/man/man1_dt/searchpa.sgm
include manpage.tmpl

MANTARGET = man1/dtsession.1
MANSRC = ../guides/man/man1_dt/session.sgm
include manpage.tmpl

MANTARGET = man1/dtsession_res.1
MANSRC = ../guides/man/man1_dt/sess_res.sgm
include manpage.tmpl

MANTARGET = man1/dtsrcreate.1
MANSRC = ../guides/man/man1_dt/srcreate.sgm
include manpage.tmpl

MANTARGET = man1/dtsrdbrec.1
MANSRC = ../guides/man/man1_dt/srdbrec.sgm
include manpage.tmpl

MANTARGET = man1/dtsrhan.1
MANSRC = ../guides/man/man1_dt/srhan.sgm
include manpage.tmpl

MANTARGET = man1/dtsrindex.1
MANSRC = ../guides/man/man1_dt/srindex.sgm
include manpage.tmpl

MANTARGET = man1/dtsrkdump.1
MANSRC = ../guides/man/man1_dt/srkdump.sgm
include manpage.tmpl

MANTARGET = man1/dtsrload.1
MANSRC = ../guides/man/man1_dt/srload.sgm
include manpage.tmpl

MANTARGET = man1/dtstyle.1
MANSRC = ../guides/man/man1_dt/style.sgm
include manpage.tmpl

MANTARGET = man1/dtterm.1
MANSRC = ../guides/man/man1_dt/term.sgm
include manpage.tmpl

MANTARGET = man1/dttypes.1
MANSRC = ../guides/man/man1_dt/types.sgm
include manpage.tmpl

MANTARGET = man1/dtudcexch.1
MANSRC = ../guides/man/man1_dt/udcexch.sgm
include manpage.tmpl

MANTARGET = man1/dtudcfonted.1
MANSRC = ../guides/man/man1_dt/udcfonte.sgm
include manpage.tmpl

MANTARGET = man1/dtwm.1
MANSRC = ../guides/man/man1_dt/wm.sgm
include manpage.tmpl

MANTARGET = man1/huffcode.1
MANSRC = ../guides/man/man1_dt/huffcode.sgm
include manpage.tmpl

MANTARGET = man1/ksh.1
MANSRC = ../guides/man/man1/ksh93.sgm
include manpage.tmpl

MANTARGET = man1/tt_type_comp.1
MANSRC = ../guides/man/man1/tt_typ_c.sgm,
include manpage.tmpl

MANTARGET = man1/ttcp.1
MANSRC = ../guides/man/man1/ttcp.sgm
include manpage.tmpl

MANTARGET = man1/ttmv.1
MANSRC = ../guides/man/man1/ttmv.sgm
include manpage.tmpl

MANTARGET = man1/ttrm.1
MANSRC = ../guides/man/man1/ttrm.sgm
include manpage.tmpl

MANTARGET = man1/ttrmdir.1
MANSRC = ../guides/man/man1/ttrmdir.sgm
include manpage.tmpl

MANTARGET = man1/ttsession.1
MANSRC = ../guides/man/man1/ttsessio.sgm
include manpage.tmpl

MANTARGET = man1/tttar.1
MANSRC = ../guides/man/man1/tttar.sgm
include manpage.tmpl

MANTARGET = man1/tttrace.1
MANSRC = ../guides/man/man1/tttrace.sgm
include manpage.tmpl

MANTARGET = man1m/dtspcd.1m
MANSRC = ../guides/man/man1m/dtspcd.sgm
include manpage.tmpl

MANTARGET = man1m/rpc.cmsd.1m
MANSRC = ../guides/man/man1m/rpccmsd.sgm
include manpage.tmpl

MANTARGET = man1m/ttdbck.1m
MANSRC = ../guides/man/man1m/ttdbck.sgm
include manpage.tmpl

MANTARGET = man1m/ttdbserver.1m
MANSRC = ../guides/man/man1m/rpcttdbs.sgm
include manpage.tmpl

MANTARGET = man1m/ttdbserverd.1m
MANSRC = ../guides/man/man1m/ttdbserv.sgm
include manpage.tmpl

MANTARGET = man3/DtActionCallbackProc.3
MANSRC = ../guides/man/m3_Dt/ActionCa.sgm
include manpage.tmpl

MANTARGET = man3/DtActionDescription.3
MANSRC = ../guides/man/m3_Dt/ActionDe.sgm
include manpage.tmpl

MANTARGET = man3/DtActionExists.3
MANSRC = ../guides/man/m3_Dt/ActionEx.sgm
include manpage.tmpl

MANTARGET = man3/DtActionIcon.3
MANSRC = ../guides/man/m3_Dt/ActionIc.sgm
include manpage.tmpl

MANTARGET = man3/DtActionInvoke.3
MANSRC = ../guides/man/m3_Dt/ActionIn.sgm
include manpage.tmpl

MANTARGET = man3/DtActionLabel.3
MANSRC = ../guides/man/m3_Dt/ActionLa.sgm
include manpage.tmpl

MANTARGET = man3/DtAppInitialize.3
MANSRC = ../guides/man/m3_Dt/Initiali.sgm
include manpage.tmpl

ALIASTARGET = man3/DtInitialize.3
ALIASSRC = man3/DtAppInitialize.3
include manalias.tmpl

MANTARGET = man3/DtComboBox.3
MANSRC = ../guides/man/m3_Dt/ComboBox.sgm
include manpage.tmpl

MANTARGET = man3/DtComboBoxAddItem.3
MANSRC = ../guides/man/m3_Dt/ComboAdd.sgm
include manpage.tmpl

MANTARGET = man3/DtComboBoxDeletePos.3
MANSRC = ../guides/man/m3_Dt/ComboDel.sgm
include manpage.tmpl

MANTARGET = man3/DtComboBoxSelectItem.3
MANSRC = ../guides/man/m3_Dt/ComboSel.sgm
include manpage.tmpl

MANTARGET = man3/DtComboBoxSetItem.3
MANSRC = ../guides/man/m3_Dt/ComboSet.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateComboBox.3
MANSRC = ../guides/man/m3_Dt/CreCombo.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateEditor.3
MANSRC = ../guides/man/m3_Dt/CreEdito.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateHelpDialog.3
MANSRC = ../guides/man/m3_Dt/CreHelpD.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateHelpQuickDialog.3
MANSRC = ../guides/man/m3_Dt/CreHelpQ.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateMenuButton.3
MANSRC = ../guides/man/m3_Dt/CreMenuB.sgm
include manpage.tmpl

MANTARGET = man3/DtCreatePrintSetupBox.3
MANSRC = ../guides/man/m3_Dt/CreatePr.sgm
include manpage.tmpl

MANTARGET = man3/DtCreatePrintSetupDialog.3
MANSRC = ../guides/man/m3_Dt/CrePrntD.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateSpinBox.3
MANSRC = ../guides/man/m3_Dt/CreSpinB.sgm
include manpage.tmpl

MANTARGET = man3/DtCreateTerm.3
MANSRC = ../guides/man/m3_Dt/CreTerm.sgm
include manpage.tmpl

MANTARGET = man3/DtDbLoad.3
MANSRC = ../guides/man/m3_Dt/DbLoad.sgm
include manpage.tmpl

MANTARGET = man3/DtDbReloadNotify.3
MANSRC = ../guides/man/m3_Dt/DbReload.sgm
include manpage.tmpl

MANTARGET = man3/DtDndCreateSourceIcon.3
MANSRC = ../guides/man/m3_Dt/DndCreSI.sgm
include manpage.tmpl

MANTARGET = man3/DtDndDragStart.3
MANSRC = ../guides/man/m3_Dt/DndDragS.sgm
include manpage.tmpl

ALIASTARGET = man3/DtDndVaDragStart.3
ALIASSRC = man3/DtDndDragStart.3
include manalias.tmpl

MANTARGET = man3/DtDndDropRegister.3
MANSRC = ../guides/man/m3_Dt/DndDropR.sgm
include manalias.tmpl

ALIASTARGET = man3/DtDndVaDropRegister.3
ALIASSRC = man3/DtDndDropRegister.3
include manalias.tmpl

MANTARGET = man3/DtDndDropUnregister.3
MANSRC = ../guides/man/m3_Dt/DndDropU.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsBufferToAttributeList.3
MANSRC = ../guides/man/m3_DtDts/BufToAtL.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsBufferToAttributeValue.3
MANSRC = ../guides/man/m3_DtDts/BufToAtV.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsBufferToDataType.3
MANSRC = ../guides/man/m3_DtDts/BufToDaT.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsDataToDataType.3
MANSRC = ../guides/man/m3_DtDts/DatToDaT.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsDataTypeIsAction.3
MANSRC = ../guides/man/m3_DtDts/DaTIsAct.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsDataTypeNames.3
MANSRC = ../guides/man/m3_DtDts/DaTNames.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsDataTypeToAttributeList.3
MANSRC = ../guides/man/m3_DtDts/DaTToAtL.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsDataTypeToAttributeValue.3
MANSRC = ../guides/man/m3_DtDts/DaTToAtV.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFileToAttributeList.3
MANSRC = ../guides/man/m3_DtDts/FilToAtL.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFileToAttributeValue.3
MANSRC = ../guides/man/m3_DtDts/FilToAtV.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFileToDataType.3
MANSRC = ../guides/man/m3_DtDts/FilToDaT.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFindAttribute.3
MANSRC = ../guides/man/m3_DtDts/FindAttr.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFreeAttributeList.3
MANSRC = ../guides/man/m3_DtDts/FreeAtL.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFreeAttributeValue.3
MANSRC = ../guides/man/m3_DtDts/FreeAtV.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFreeDataType.3
MANSRC = ../guides/man/m3_DtDts/FreeDaT.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsFreeDataTypeNames.3
MANSRC = ../guides/man/m3_DtDts/FreeDaTN.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsIsTrue.3
MANSRC = ../guides/man/m3_DtDts/IsTrue.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsLoadDataTypes.3
MANSRC = ../guides/man/m3_DtDts/LoadDaTs.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsRelease.3
MANSRC = ../guides/man/m3_DtDts/Release.sgm
include manpage.tmpl

MANTARGET = man3/DtDtsSetDataType.3
MANSRC = ../guides/man/m3_DtDts/SetDaT.sgm
include manpage.tmpl

MANTARGET = man3/DtEditor.3
MANSRC = ../guides/man/m3_Dt/Editor.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorAppend.3
MANSRC = ../guides/man/m3_Dt/EdAppend.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorAppendFromFile.3
MANSRC = ../guides/man/m3_Dt/EdAppFF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorChange.3
MANSRC = ../guides/man/m3_Dt/EdChange.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorCheckForUnsavedChanges.3
MANSRC = ../guides/man/m3_Dt/EdCheckF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorClearSelection.3
MANSRC = ../guides/man/m3_Dt/EdClearS.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorCopyToClipboard.3
MANSRC = ../guides/man/m3_Dt/EdCopyTo.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorCutToClipboard.3
MANSRC = ../guides/man/m3_Dt/EdCutToC.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorDeleteSelection.3
MANSRC = ../guides/man/m3_Dt/EdDelete.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorDeselect.3
MANSRC = ../guides/man/m3_Dt/EdDesele.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorDisableRedisplay.3
MANSRC = ../guides/man/m3_Dt/EdDisabl.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorEnableRedisplay.3
MANSRC = ../guides/man/m3_Dt/EdEnable.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorFind.3
MANSRC = ../guides/man/m3_Dt/EdFind.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorFormat.3
MANSRC = ../guides/man/m3_Dt/EdFormat.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGetContents.3
MANSRC = ../guides/man/m3_Dt/EdGetCon.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGetInsertionPosition.3
MANSRC = ../guides/man/m3_Dt/EdGetIns.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGetLastPosition.3
MANSRC = ../guides/man/m3_Dt/EdGetLas.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGetMessageTextFieldID.3
MANSRC = ../guides/man/m3_Dt/EdGetMes.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGetSizeHints.3
MANSRC = ../guides/man/m3_Dt/EdGetSiz.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorGoToLine.3
MANSRC = ../guides/man/m3_Dt/EdGoToLi.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorInsert.3
MANSRC = ../guides/man/m3_Dt/EdInsert.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorInsertFromFile.3
MANSRC = ../guides/man/m3_Dt/EdInsFF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorInvokeFindChangeDialog.3
MANSRC = ../guides/man/m3_Dt/EdInvFin.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorInvokeFormatDialog.3
MANSRC = ../guides/man/m3_Dt/EdInvFor.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorInvokeSpellDialog.3
MANSRC = ../guides/man/m3_Dt/EdInvSpe.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorPasteFromClipboard.3
MANSRC = ../guides/man/m3_Dt/EdPasteF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorReplace.3
MANSRC = ../guides/man/m3_Dt/EdReplac.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorReplaceFromFile.3
MANSRC = ../guides/man/m3_Dt/EdReplFF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorReset.3
MANSRC = ../guides/man/m3_Dt/EdReset.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorSaveContentsToFile.3
MANSRC = ../guides/man/m3_Dt/EdSaveCo.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorSelectAll.3
MANSRC = ../guides/man/m3_Dt/EdSelect.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorSetContents.3
MANSRC = ../guides/man/m3_Dt/EdSetCon.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorSetContentsFromFile.3
MANSRC = ../guides/man/m3_Dt/EdSetCFF.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorSetInsertionPosition.3
MANSRC = ../guides/man/m3_Dt/EdSetIns.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorTraverseToEditor.3
MANSRC = ../guides/man/m3_Dt/EdTraver.sgm
include manpage.tmpl

MANTARGET = man3/DtEditorUndoEdit.3
MANSRC = ../guides/man/m3_Dt/EdUndoEd.sgm
include manpage.tmpl

MANTARGET = man3/DtHelpDialog.3
MANSRC = ../guides/man/m3_Dt/HelpDial.sgm
include manpage.tmpl

MANTARGET = man3/DtHelpQuickDialog.3
MANSRC = ../guides/man/m3_Dt/HelpQDia.sgm
include manpage.tmpl

MANTARGET = man3/DtHelpQuickDialogGetChild.3
MANSRC = ../guides/man/m3_Dt/HelpQDGC.sgm
include manpage.tmpl

MANTARGET = man3/DtHelpReturnSelectedWidgetId.3
MANSRC = ../guides/man/m3_Dt/HelpRetu.sgm
include manpage.tmpl

MANTARGET = man3/DtHelpSetCatalogName.3
MANSRC = ../guides/man/m3_Dt/HelpSetC.sgm
include manpage.tmpl

MANTARGET = man3/DtInfoShowTopic.3
MANSRC = ../guides/man/m3_Dt/InfoShow.sgm
include manpage.tmpl

MANTARGET = man3/DtMenuButton.3
MANSRC = ../guides/man/m3_Dt/MenuButt.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbBookCaseFreeInfo.3
MANSRC = ../guides/man/m3_Dt/MmdbBCFI.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbBookCaseGetInfo.3
MANSRC = ../guides/man/m3_Dt/MmdbBCGI.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbBookGetLicense.3
MANSRC = ../guides/man/m3_Dt/MmdbBkGL.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbBookGetLongTitle.3
MANSRC = ../guides/man/m3_Dt/MmdbBGLT.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbSectionGetShortTitle.3
MANSRC = ../guides/man/m3_Dt/MmdbSGST.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbSectionGetStyleSheetId.3
MANSRC = ../guides/man/m3_Dt/MmdbSGSS.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbSectionGetTocLoc.3
MANSRC = ../guides/man/m3_Dt/MmdbSGTL.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbStylesheetGetData.3
MANSRC = ../guides/man/m3_Dt/MmdbSsGD.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbStylesheetGetName.3
MANSRC = ../guides/man/m3_Dt/MmdbSsGN.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbTocGetChildIds.3
MANSRC = ../guides/man/m3_Dt/MmdbTGCI.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbTocGetNumOfChildren.3
MANSRC = ../guides/man/m3_Dt/MmdbTGNC.sgm
include manpage.tmpl

MANTARGET = man3/DtMmdbTocGetParentId.3
MANSRC = ../guides/man/m3_Dt/MmdbTGPI.sgm
include manpage.tmpl

MANTARGET = man3/DtMrmInitialize.3
MANSRC = ../guides/man/m3_Dt/MrmInit.sgm
include manpage.tmpl

MANTARGET = man3/DtMsgLogMessage.3
MANSRC = ../guides/man/m3_Dt/MsgLogM.sgm
include manpage.tmpl

MANTARGET = man3/DtMsgLogOpenFile.3
MANSRC = ../guides/man/m3_Dt/MsgLogO.sgm
include manpage.tmpl

MANTARGET = man3/DtMsgLogSetHandler.3
MANSRC = ../guides/man/m3_Dt/MsgLogS.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintCopySetupData.3
MANSRC = ../guides/man/m3_Dt/PrintCop.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintFillSetupData.3
MANSRC = ../guides/man/m3_Dt/PrintFil.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintFreeSetupData.3
MANSRC = ../guides/man/m3_Dt/PrintFre.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintResetConnection.3
MANSRC = ../guides/man/m3_Dt/PrintRes.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintSetupBox.3
MANSRC = ../guides/man/m3_Dt/PrintSet.sgm
include manpage.tmpl

MANTARGET = man3/DtPrintSetupProc.3
MANSRC = ../guides/man/m3_Dt/PrSetupP.sgm
include manpage.tmpl

MANTARGET = man3/DtSaverGetWindows.3
MANSRC = ../guides/man/m3_Dt/SaverGet.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchExit.3
MANSRC = ../guides/man/m3_Dt/SrchExit.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchFreeResults.3
MANSRC = ../guides/man/m3_Dt/SrchFree.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchGetKeytypes.3
MANSRC = ../guides/man/m3_Dt/SrchGetK.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchGetMaxResults.3
MANSRC = ../guides/man/m3_Dt/SrchGetM.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchHighlight.3
MANSRC = ../guides/man/m3_Dt/SrchHigh.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchInit.3
MANSRC = ../guides/man/m3_Dt/SrchInit.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchMergeResults.3
MANSRC = ../guides/man/m3_Dt/SrchMrge.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchHasMessages.3
MANSRC = ../guides/man/m3_Dt/SrchMsgs.sgm
include manpage.tmpl

ALIASTARGET = man3/DtSearchAddMessage.3
ALIASSRC = man3/DtSearchHasMessages.3
include manalias.tmpl

ALIASTARGET = man3/DtSearchFreeMessages.3
ALIASSRC = man3/DtSearchHasMessages.3
include manalias.tmpl

ALIASTARGET = man3/DtSearchGetMessages.3
ALIASSRC = man3/DtSearchHasMessages.3
include manalias.tmpl

MANTARGET = man3/DtSearchQuery.3
MANSRC = ../guides/man/m3_Dt/SrchQery.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchReinit.3
MANSRC = ../guides/man/m3_Dt/SrchRein.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchRetrieve.3
MANSRC = ../guides/man/m3_Dt/SrchRetr.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchSetMaxResults.3
MANSRC = ../guides/man/m3_Dt/SrchSetM.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchSortResults.3
MANSRC = ../guides/man/m3_Dt/SrchSort.sgm
include manpage.tmpl

MANTARGET = man3/DtSearchValidDateString.3
MANSRC = ../guides/man/m3_Dt/SrchVali.sgm
include manpage.tmpl

MANTARGET = man3/DtSessionRestorePath.3
MANSRC = ../guides/man/m3_Dt/SessionR.sgm
include manpage.tmpl

MANTARGET = man3/DtSessionSavePath.3
MANSRC = ../guides/man/m3_Dt/SessionS.sgm
include manpage.tmpl

MANTARGET = man3/DtSpinBox.3
MANSRC = ../guides/man/m3_Dt/SpinBox.sgm
include manpage.tmpl

MANTARGET = man3/DtSpinBoxAddItem.3
MANSRC = ../guides/man/m3_Dt/SpinBoxA.sgm
include manpage.tmpl

MANTARGET = man3/DtSpinBoxDeletePos.3
MANSRC = ../guides/man/m3_Dt/SpinBoxD.sgm
include manpage.tmpl

MANTARGET = man3/DtSpinBoxSetItem.3
MANSRC = ../guides/man/m3_Dt/SpinBoxS.sgm
include manpage.tmpl

MANTARGET = man3/DtSrAPI.3
MANSRC = ../guides/man/m3_Dt/SrAPI.sgm
include manpage.tmpl

MANTARGET = man3/DtTerm.3
MANSRC = ../guides/man/m3_Dt/Term.sgm
include manpage.tmpl

MANTARGET = man3/DtTermDisplaySend.3
MANSRC = ../guides/man/m3_Dt/TermDisp.sgm
include manpage.tmpl

MANTARGET = man3/DtTermInitialize.3
MANSRC = ../guides/man/m3_Dt/TermInit.sgm
include manpage.tmpl

MANTARGET = man3/DtTermSubprocReap.3
MANSRC = ../guides/man/m3_Dt/TermSubR.sgm
include manpage.tmpl

MANTARGET = man3/DtTermSubprocSend.3
MANSRC = ../guides/man/m3_Dt/TermSubS.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmAddCurrentWorkspaceCallback.3
MANSRC = ../guides/man/m3_DtWsm/AddCWsCb.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmAddWorkspace.3
MANSRC = ../guides/man/m3_DtWsm/AddWs.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmAddWorkspaceFunctions.3
MANSRC = ../guides/man/m3_DtWsm/AddWsFun.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmAddWorkspaceModifiedCallback.3
MANSRC = ../guides/man/m3_DtWsm/AddWsMCb.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmChangeBackdrop.3
MANSRC = ../guides/man/m3_DtWsm/ChBackDr.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmDeleteWorkspace.3
MANSRC = ../guides/man/m3_DtWsm/DelWs.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmFreeWorkspaceInfo.3
MANSRC = ../guides/man/m3_DtWsm/FreeWsIn.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmGetCurrentBackdropWindow.3
MANSRC = ../guides/man/m3_DtWsm/GetCurBW.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmGetCurrentWorkspace.3
MANSRC = ../guides/man/m3_DtWsm/GetCurWs.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmGetWorkspaceInfo.3
MANSRC = ../guides/man/m3_DtWsm/GetWsInf.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmGetWorkspaceList.3
MANSRC = ../guides/man/m3_DtWsm/GetWsLis.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmGetWorkspacesOccupied.3
MANSRC = ../guides/man/m3_DtWsm/GetWsOcc.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmOccupyAllWorkspaces.3
MANSRC = ../guides/man/m3_DtWsm/OccAllWs.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmRemoveWorkspaceCallback.3
MANSRC = ../guides/man/m3_DtWsm/RemWsCb.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmRemoveWorkspaceFunctions.3
MANSRC = ../guides/man/m3_DtWsm/RemWsFun.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmSetCurrentWorkspace.3
MANSRC = ../guides/man/m3_DtWsm/SetCurWs.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmSetWorkspacesOccupied.3
MANSRC = ../guides/man/m3_DtWsm/SetWsOcc.sgm
include manpage.tmpl

MANTARGET = man3/DtWsmSetWorkspaceTitle.3
MANSRC = ../guides/man/m3_DtWsm/SetWsTi.sgm
include manpage.tmpl

MANTARGET = man3/csa_add_calendar.3
MANSRC = ../guides/man/m3_csa/add_cale.sgm
include manpage.tmpl

MANTARGET = man3/csa_add_entry.3
MANSRC = ../guides/man/m3_csa/add_entr.sgm
include manpage.tmpl

MANTARGET = man3/csa_call_callbacks.3
MANSRC = ../guides/man/m3_csa/call_cal.sgm
include manpage.tmpl

MANTARGET = man3/csa_delete_calendar.3
MANSRC = ../guides/man/m3_csa/del_cale.sgm
include manpage.tmpl

MANTARGET = man3/csa_delete_entry.3
MANSRC = ../guides/man/m3_csa/del_entr.sgm
include manpage.tmpl

MANTARGET = man3/csa_free.3
MANSRC = ../guides/man/m3_csa/free.sgm
include manpage.tmpl

MANTARGET = man3/csa_free_time_search.3
MANSRC = ../guides/man/m3_csa/free_tim.sgm
include manpage.tmpl

MANTARGET = man3/csa_list_calendar_attributes.3
MANSRC = ../guides/man/m3_csa/list_caa.sgm
include manpage.tmpl

MANTARGET = man3/csa_list_calendars.3
MANSRC = ../guides/man/m3_csa/list_cal.sgm
include manpage.tmpl

MANTARGET = man3/csa_list_entries.3
MANSRC = ../guides/man/m3_csa/list_ent.sgm
include manpage.tmpl

MANTARGET = man3/csa_list_entry_attributes.3
MANSRC = ../guides/man/m3_csa/list_ena.sgm
include manpage.tmpl

MANTARGET = man3/csa_list_entry_sequence.3
MANSRC = ../guides/man/m3_csa/list_ens.sgm
include manpage.tmpl

MANTARGET = man3/csa_logoff.3
MANSRC = ../guides/man/m3_csa/logoff.sgm
include manpage.tmpl

MANTARGET = man3/csa_logon.3
MANSRC = ../guides/man/m3_csa/logon.sgm
include manpage.tmpl

MANTARGET = man3/csa_look_up.3
MANSRC = ../guides/man/m3_csa/look_up.sgm
include manpage.tmpl

MANTARGET = man3/csa_query_configuration.3
MANSRC = ../guides/man/m3_csa/query_co.sgm
include manpage.tmpl

MANTARGET = man3/csa_read_calendar_attributes.3
MANSRC = ../guides/man/m3_csa/read_cal.sgm
include manpage.tmpl

MANTARGET = man3/csa_read_entry_attributes.3
MANSRC = ../guides/man/m3_csa/read_ent.sgm
include manpage.tmpl

MANTARGET = man3/csa_read_next_reminder.3
MANSRC = ../guides/man/m3_csa/read_nex.sgm
include manpage.tmpl

MANTARGET = man3/csa_register_callback.3
MANSRC = ../guides/man/m3_csa/register.sgm
include manpage.tmpl

MANTARGET = man3/csa_restore.3
MANSRC = ../guides/man/m3_csa/restore.sgm
include manpage.tmpl

MANTARGET = man3/csa_save.3
MANSRC = ../guides/man/m3_csa/save.sgm
include manpage.tmpl

MANTARGET = man3/csa_unregister_callback.3
MANSRC = ../guides/man/m3_csa/unregist.sgm
include manpage.tmpl

MANTARGET = man3/csa_update_calendar_attributes.3
MANSRC = ../guides/man/m3_csa/update_c.sgm
include manpage.tmpl

MANTARGET = man3/csa_update_entry_attributes.3
MANSRC = ../guides/man/m3_csa/update_e.sgm
include manpage.tmpl

MANTARGET = man3/csa_x_process_updates.3
MANSRC = ../guides/man/m3_csa/x_proces.sgm
include manpage.tmpl

MANTARGET = man3/tt_X_session.3
MANSRC = ../guides/man/m3_tt/X_sessio.sgm
include manpage.tmpl

MANTARGET = man3/tt_bcontext_join.3
MANSRC = ../guides/man/m3_tt/bco_join.sgm
inlucde manpage.tmpl

MANTARGET = sgm,man3/tt_bcontext_quit.3
MANSRC = ../guides/man/m3_tt/bco_quit.sgm
include manpage.tmpl

MANTARGET = man3/tt_close.3
MANSRC = ../guides/man/m3_tt/close.sgm
include manpage.tmpl

MANTARGET = man3/tt_context_join.3
MANSRC = ../guides/man/m3_tt/con_join.sgm
include manpage.tmpl

MANTARGET = man3/tt_context_quit.3
MANSRC = ../guides/man/m3_tt/con_quit.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_file.3
MANSRC = ../guides/man/m3_tt/def_file.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_file_set.3
MANSRC = ../guides/man/m3_tt/def_fi_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_procid.3
MANSRC = ../guides/man/m3_tt/def_proc.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_procid_set.3
MANSRC = ../guides/man/m3_tt/def_pr_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_ptype.3
MANSRC = ../guides/man/m3_tt/def_ptyp.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_ptype_set.3
MANSRC = ../guides/man/m3_tt/def_pt_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_session.3
MANSRC = ../guides/man/m3_tt/def_sess.sgm
include manpage.tmpl

MANTARGET = man3/tt_default_session_set.3
MANSRC = ../guides/man/m3_tt/def_se_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_error.3
MANSRC = ../guides/man/m3_tt/error.sgm
include manpage.tmpl

MANTARGET = man3/tt_error_int.3
MANSRC = ../guides/man/m3_tt/err_int.sgm
include manpage.tmpl

MANTARGET = man3/tt_error_pointer.3
MANSRC = ../guides/man/m3_tt/err_poin.sgm
include manpage.tmpl

MANTARGET = man3/tt_fd.3
MANSRC = ../guides/man/m3_tt/fd.sgm
include manpage.tmpl

MANTARGET = man3/tt_feature_enabled.3
MANSRC = ../guides/man/m3_tt/feat_ena.sgm
include manpage.tmpl

MANTARGET = man3/tt_feature_required.3
MANSRC = ../guides/man/m3_tt/feat_req.sgm

MANTARGET = man3/tt_file_copy.3
MANSRC = ../guides/man/m3_tt/fil_copy.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_destroy.3
MANSRC = ../guides/man/m3_tt/fil_dest.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_join.3
MANSRC = ../guides/man/m3_tt/fil_join.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_move.3
MANSRC = ../guides/man/m3_tt/fil_move.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_netfile.3
MANSRC = ../guides/man/m3_tt/fil_netf.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_objects_query.3
MANSRC = ../guides/man/m3_tt/fil_ob_q.sgm
include manpage.tmpl

MANTARGET = man3/tt_file_quit.3
MANSRC = ../guides/man/m3_tt/fil_quit.sgm
include manpage.tmpl

MANTARGET = man3/tt_free.3
MANSRC = ../guides/man/m3_tt/free.sgm
include manpage.tmpl

MANTARGET = man3/tt_host_file_netfile.3
MANSRC = ../guides/man/m3_tt/h_f_netf.sgm
include manpage.tmpl

MANTARGET = man3/tt_host_netfile_file.3
MANSRC = ../guides/man/m3_tt/h_netf_f.sgm
include manpage.tmpl

MANTARGET = man3/tt_icontext_join.3
MANSRC = ../guides/man/m3_tt/ico_join.sgm
include manpage.tmpl

MANTARGET = man3/tt_icontext_quit.3
MANSRC = ../guides/man/m3_tt/ico_quit.sgm
include manpage.tmpl

MANTARGET = man3/tt_initial_session.3
MANSRC = ../guides/man/m3_tt/init_ses.sgm
include manpage.tmpl

MANTARGET = man3/tt_int_error.3
MANSRC = ../guides/man/m3_tt/int_err.sgm
include manpage.tmpl

MANTARGET = man3/tt_is_err.3
MANSRC = ../guides/man/m3_tt/is_err.sgm
include manpage.tmpl

MANTARGET = man3/tt_malloc.3
MANSRC = ../guides/man/m3_tt/malloc.sgm
include manpage.tmpl

MANTARGET = man3/tt_mark.3
MANSRC = ../guides/man/m3_tt/mark.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_abstainer.3
MANSRC = ../guides/man/m3_tt_message/abstain.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_abstainers_count.3
MANSRC = ../guides/man/m3_tt_message/abstai_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_accept.3
MANSRC = ../guides/man/m3_tt_message/accept.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_accepter.3
MANSRC = ../guides/man/m3_tt_message/accepter.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_accepters_count.3
MANSRC = ../guides/man/m3_tt_message/accept_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_address.3
MANSRC = ../guides/man/m3_tt_message/address.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_address_set.3
MANSRC = ../guides/man/m3_tt_message/addr_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_add.3
MANSRC = ../guides/man/m3_tt_message/arg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_bval.3
MANSRC = ../guides/man/m3_tt_message/arg_bval.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_bval_set.3
MANSRC = ../guides/man/m3_tt_message/arg_bv_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_ival.3
MANSRC = ../guides/man/m3_tt_message/arg_ival.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_ival_set.3
MANSRC = ../guides/man/m3_tt_message/arg_iv_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_mode.3
MANSRC = ../guides/man/m3_tt_message/arg_mode.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_type.3
MANSRC = ../guides/man/m3_tt_message/arg_type.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_val.3
MANSRC = ../guides/man/m3_tt_message/arg_val.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_val_set.3
MANSRC = ../guides/man/m3_tt_message/arg_va_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_xval.3
MANSRC = ../guides/man/m3_tt_message/arg_xval.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_arg_xval_set.3
MANSRC = ../guides/man/m3_tt_message/arg_xv_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_args_count.3
MANSRC = ../guides/man/m3_tt_message/args_cnt.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_barg_add.3
MANSRC = ../guides/man/m3_tt_message/barg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_bcontext_set.3
MANSRC = ../guides/man/m3_tt_message/bcon_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_callback_add.3
MANSRC = ../guides/man/m3_tt_message/call_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_class.3
MANSRC = ../guides/man/m3_tt_message/class.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_class_set.3
MANSRC = ../guides/man/m3_tt_message/class_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_bval.3
MANSRC = ../guides/man/m3_tt_message/con_bval.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_ival.3
MANSRC = ../guides/man/m3_tt_message/con_ival.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_set.3
MANSRC = ../guides/man/m3_tt_message/con_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_slotname.3
MANSRC = ../guides/man/m3_tt_message/con_slot.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_val.3
MANSRC = ../guides/man/m3_tt_message/con_val.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_context_xval.3
MANSRC = ../guides/man/m3_tt_message/con_xval.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_contexts_count.3
MANSRC = ../guides/man/m3_tt_message/cons_cnt.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_create.3
MANSRC = ../guides/man/m3_tt_message/create.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_create_super.3
MANSRC = ../guides/man/m3_tt_message/cr_super.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_destroy.3
MANSRC = ../guides/man/m3_tt_message/destroy.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_disposition.3
MANSRC = ../guides/man/m3_tt_message/disposit.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_disposition_set.3
MANSRC = ../guides/man/m3_tt_message/disp_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_fail.3
MANSRC = ../guides/man/m3_tt_message/fail.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_file.3
MANSRC = ../guides/man/m3_tt_message/file.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_file_set.3
MANSRC = ../guides/man/m3_tt_message/file_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_gid.3
MANSRC = ../guides/man/m3_tt_message/gid.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_handler.3
MANSRC = ../guides/man/m3_tt_message/handler.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_handler_ptype.3
MANSRC = ../guides/man/m3_tt_message/han_pty.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_handler_ptype_set.3
MANSRC = ../guides/man/m3_tt_message/han_pt_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_handler_set.3
MANSRC = ../guides/man/m3_tt_message/han_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_iarg_add.3
MANSRC = ../guides/man/m3_tt_message/iarg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_icontext_set.3
MANSRC = ../guides/man/m3_tt_message/ico_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_id.3
MANSRC = ../guides/man/m3_tt_message/id.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_object.3
MANSRC = ../guides/man/m3_tt_message/object.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_object_set.3
MANSRC = ../guides/man/m3_tt_message/object_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_op.3
MANSRC = ../guides/man/m3_tt_message/op.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_op_set.3
MANSRC = ../guides/man/m3_tt_message/op_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_opnum.3
MANSRC = ../guides/man/m3_tt_message/opnum.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_otype.3
MANSRC = ../guides/man/m3_tt_message/otype.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_otype_set.3
MANSRC = ../guides/man/m3_tt_message/otype_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_pattern.3
MANSRC = ../guides/man/m3_tt_message/pattern.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_print.3
MANSRC = ../guides/man/m3_tt_message/print.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_receive.3
MANSRC = ../guides/man/m3_tt_message/receive.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_reject.3
MANSRC = ../guides/man/m3_tt_message/reject.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_rejecter.3
MANSRC = ../guides/man/m3_tt_message/rejecter.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_rejecters_count.3
MANSRC = ../guides/man/m3_tt_message/reject_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_reply.3
MANSRC = ../guides/man/m3_tt_message/reply.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_scope.3
MANSRC = ../guides/man/m3_tt_message/scope.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_scope_set.3
MANSRC = ../guides/man/m3_tt_message/scope_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_send.3
MANSRC = ../guides/man/m3_tt_message/send.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_send_on_exit.3
MANSRC = ../guides/man/m3_tt_message/snd_on_e.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_sender.3
MANSRC = ../guides/man/m3_tt_message/sender.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_sender_ptype.3
MANSRC = ../guides/man/m3_tt_message/snd_pty.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_sender_ptype_set.3
MANSRC = ../guides/man/m3_tt_message/snd_pt_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_session.3
MANSRC = ../guides/man/m3_tt_message/session.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_session_set.3
MANSRC = ../guides/man/m3_tt_message/sessio_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_state.3
MANSRC = ../guides/man/m3_tt_message/state.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_status.3
MANSRC = ../guides/man/m3_tt_message/status.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_status_set.3
MANSRC = ../guides/man/m3_tt_message/status_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_status_string.3
MANSRC = ../guides/man/m3_tt_message/st_str.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_status_string_set.3
MANSRC = ../guides/man/m3_tt_message/st_str_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_uid.3
MANSRC = ../guides/man/m3_tt_message/uid.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_user.3
MANSRC = ../guides/man/m3_tt_message/user.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_user_set.3
MANSRC = ../guides/man/m3_tt_message/user_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_xarg_add.3
MANSRC = ../guides/man/m3_tt_message/xarg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_message_xcontext_set.3
MANSRC = ../guides/man/m3_tt_message/xco_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_netfile_file.3
MANSRC = ../guides/man/m3_tt/netf_fil.sgm
include manpage.tmpl

MANTARGET = man3/tt_objid_equal.3
MANSRC = ../guides/man/m3_tt/objid_eq.sgm
include manpage.tmpl

MANTARGET = man3/tt_objid_objkey.3
MANSRC = ../guides/man/m3_tt/objid_ob.sgm
include manpage.tmpl

MANTARGET = man3/tt_onotice_create.3
MANSRC = ../guides/man/m3_tt/onot_cre.sgm
include manpage.tmpl

MANTARGET = man3/tt_open.3
MANSRC = ../guides/man/m3_tt/open.sgm
include manpage.tmpl

MANTARGET = man3/tt_orequest_create.3
MANSRC = ../guides/man/m3_tt/oreq_cre.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_base.3
MANSRC = ../guides/man/m3_tt_otype/base.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_derived.3
MANSRC = ../guides/man/m3_tt_otype/derived.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_deriveds_count.3
MANSRC = ../guides/man/m3_tt_otype/deri_cnt.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_hsig_arg_mode.3
MANSRC = ../guides/man/m3_tt_otype/h_arg_mo.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_hsig_arg_type.3
MANSRC = ../guides/man/m3_tt_otype/h_arg_ty.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_hsig_args_count.3
MANSRC = ../guides/man/m3_tt_otype/h_args_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_hsig_count.3
MANSRC = ../guides/man/m3_tt_otype/h_count.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_hsig_op.3
MANSRC = ../guides/man/m3_tt_otype/hsig_op.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_is_derived.3
MANSRC = ../guides/man/m3_tt_otype/is_deriv.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_opnum_callback_add.3
MANSRC = ../guides/man/m3_tt_otype/o_cb_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_osig_arg_mode.3
MANSRC = ../guides/man/m3_tt_otype/o_arg_mo.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_osig_arg_type.3
MANSRC = ../guides/man/m3_tt_otype/o_arg_ty.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_osig_args_count.3
MANSRC = ../guides/man/m3_tt_otype/o_args_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_osig_count.3
MANSRC = ../guides/man/m3_tt_otype/o_count.sgm
include manpage.tmpl

MANTARGET = man3/tt_otype_osig_op.3
MANSRC = ../guides/man/m3_tt_otype/osig_op.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_address_add.3
MANSRC = ../guides/man/m3_tt_pattern/addr_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_arg_add.3
MANSRC = ../guides/man/m3_tt_pattern/arg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_barg_add.3
MANSRC = ../guides/man/m3_tt_pattern/barg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_bcontext_add.3
MANSRC = ../guides/man/m3_tt_pattern/bcon_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_callback_add.3
MANSRC = ../guides/man/m3_tt_pattern/call_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_category.3
MANSRC = ../guides/man/m3_tt_pattern/category.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_category_set.3
MANSRC = ../guides/man/m3_tt_pattern/cat_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_class_add.3
MANSRC = ../guides/man/m3_tt_pattern/clas_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_context_add.3
MANSRC = ../guides/man/m3_tt_pattern/cont_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_create.3
MANSRC = ../guides/man/m3_tt_pattern/create.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_destroy.3
MANSRC = ../guides/man/m3_tt_pattern/destroy.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_disposition_add.3
MANSRC = ../guides/man/m3_tt_pattern/disp_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_file_add.3
MANSRC = ../guides/man/m3_tt_pattern/file_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_iarg_add.3
MANSRC = ../guides/man/m3_tt_pattern/iarg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_icontext_add.3
MANSRC = ../guides/man/m3_tt_pattern/icon_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_object_add.3
MANSRC = ../guides/man/m3_tt_pattern/obj_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_op_add.3
MANSRC = ../guides/man/m3_tt_pattern/op_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_opnum_add.3
MANSRC = ../guides/man/m3_tt_pattern/opnu_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_otype_add.3
MANSRC = ../guides/man/m3_tt_pattern/otyp_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_print.3
MANSRC = ../guides/man/m3_tt_pattern/print.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_register.3
MANSRC = ../guides/man/m3_tt_pattern/register.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_scope_add.3
MANSRC = ../guides/man/m3_tt_pattern/scop_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_sender_add.3
MANSRC = ../guides/man/m3_tt_pattern/send_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_sender_ptype_add.3
MANSRC = ../guides/man/m3_tt_pattern/s_pt_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_session_add.3
MANSRC = ../guides/man/m3_tt_pattern/sess_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_state_add.3
MANSRC = ../guides/man/m3_tt_pattern/stat_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_unregister.3
MANSRC = ../guides/man/m3_tt_pattern/unregist.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_user.3
MANSRC = ../guides/man/m3_tt_pattern/user.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_user_set.3
MANSRC = ../guides/man/m3_tt_pattern/user_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_xarg_add.3
MANSRC = ../guides/man/m3_tt_pattern/xarg_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pattern_xcontext_add.3
MANSRC = ../guides/man/m3_tt_pattern/xcon_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_pnotice_create.3
MANSRC = ../guides/man/m3_tt/pnot_cre.sgm
include manpage.tmpl

MANTARGET = man3/tt_pointer_error.3
MANSRC = ../guides/man/m3_tt/poin_err.sgm
include manpage.tmpl

MANTARGET = man3/tt_prequest_create.3
MANSRC = ../guides/man/m3_tt/preq_cre.sgm
include manpage.tmpl

MANTARGET = man3/tt_procid_session.3
MANSRC = ../guides/man/m3_tt/pr_sess.sgm
include manpage.tmpl

MANTARGET = man3/tt_ptr_error.3
MANSRC = ../guides/man/m3_tt/ptr_err.sgm
include manpage.tmpl

MANTARGET = man3/tt_ptype_declare.3
MANSRC = ../guides/man/m3_tt/pty_decl.sgm
include manpage.tmpl

MANTARGET = man3/tt_ptype_exists.3
MANSRC = ../guides/man/m3_tt/pty_exis.sgm
include manpage.tmpl

MANTARGET = man3/tt_ptype_opnum_callback_add.3
MANSRC = ../guides/man/m3_tt/pt_o_c_a.sgm
include manpage.tmpl

MANTARGET = man3/tt_ptype_undeclare.3
MANSRC = ../guides/man/m3_tt/pty_unde.sgm
include manpage.tmpl

MANTARGET = man3/tt_release.3
MANSRC = ../guides/man/m3_tt/release.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_bprop.3
MANSRC = ../guides/man/m3_tt_session/bprop.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_bprop_add.3
MANSRC = ../guides/man/m3_tt_session/bpro_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_bprop_set.3
MANSRC = ../guides/man/m3_tt_session/bpro_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_join.3
MANSRC = ../guides/man/m3_tt_session/join.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_prop.3
MANSRC = ../guides/man/m3_tt_session/prop.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_prop_add.3
MANSRC = ../guides/man/m3_tt_session/prop_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_prop_count.3
MANSRC = ../guides/man/m3_tt_session/prop_cnt.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_prop_set.3
MANSRC = ../guides/man/m3_tt_session/prop_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_propname.3
MANSRC = ../guides/man/m3_tt_session/propname.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_propnames_count.3
MANSRC = ../guides/man/m3_tt_session/propna_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_quit.3
MANSRC = ../guides/man/m3_tt_session/quit.sgm
include manpage.tmpl

MANTARGET = man3/tt_session_types_load.3
MANSRC = ../guides/man/m3_tt_session/types_ld.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_bprop.3
MANSRC = ../guides/man/m3_tt_spec/bprop.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_bprop_add.3
MANSRC = ../guides/man/m3_tt_spec/bpro_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_bprop_set.3
MANSRC = ../guides/man/m3_tt_spec/bpro_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_create.3
MANSRC = ../guides/man/m3_tt_spec/create.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_destroy.3
MANSRC = ../guides/man/m3_tt_spec/destroy.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_file.3
MANSRC = ../guides/man/m3_tt_spec/file.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_move.3
MANSRC = ../guides/man/m3_tt_spec/move.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_prop.3
MANSRC = ../guides/man/m3_tt_spec/prop.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_prop_add.3
MANSRC = ../guides/man/m3_tt_spec/prop_add.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_prop_count.3
MANSRC = ../guides/man/m3_tt_spec/prop_cnt.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_prop_set.3
MANSRC = ../guides/man/m3_tt_spec/prop_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_propname.3
MANSRC = ../guides/man/m3_tt_spec/propname.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_propnames_count.3
MANSRC = ../guides/man/m3_tt_spec/propna_c.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_type.3
MANSRC = ../guides/man/m3_tt_spec/type.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_type_set.3
MANSRC = ../guides/man/m3_tt_spec/type_set.sgm
include manpage.tmpl

MANTARGET = man3/tt_spec_write.3
MANSRC = ../guides/man/m3_tt_spec/write.sgm
include manpage.tmpl

MANTARGET = man3/tt_status_message.3
MANSRC = ../guides/man/m3_tt/status_m.sgm
include manpage.tmpl

MANTARGET = man3/tt_thread_procid.3
MANSRC = ../guides/man/m3_tt/thr_proc.sgm
include manpage.tmpl

MANTARGET = man3/tt_thread_procid_set.3
MANSRC = ../guides/man/m3_tt/thr_pr_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_thread_session.3
MANSRC = ../guides/man/m3_tt/thr_sess.sgm
include manpage.tmpl

MANTARGET = man3/tt_thread_session_set.3
MANSRC = ../guides/man/m3_tt/thr_se_s.sgm
include manpage.tmpl

MANTARGET = man3/tt_trace_control.3
MANSRC = ../guides/man/m3_tt/trace_co.sgm
include manpage.tmpl

MANTARGET = man3/tt_xcontext_join.3
MANSRC = ../guides/man/m3_tt/xco_join.sgm
include manpage.tmpl

MANTARGET = man3/tt_xcontext_quit.3
MANSRC = ../guides/man/m3_tt/xco_quit.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_Get_Modified.3
MANSRC = ../guides/man/m3_ttdt/Get_Modi.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_Revert.3
MANSRC = ../guides/man/m3_ttdt/Revert.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_Save.3
MANSRC = ../guides/man/m3_ttdt/Save.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_close.3
MANSRC = ../guides/man/m3_ttdt/close.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_file_event.3
MANSRC = ../guides/man/m3_ttdt/f_event.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_file_join.3
MANSRC = ../guides/man/m3_ttdt/f_join.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_file_notice.3
MANSRC = ../guides/man/m3_ttdt/f_notice.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_file_quit.3
MANSRC = ../guides/man/m3_ttdt/f_quit.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_file_request.3
MANSRC = ../guides/man/m3_ttdt/f_reques.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_message_accept.3
MANSRC = ../guides/man/m3_ttdt/m_accept.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_open.3
MANSRC = ../guides/man/m3_ttdt/open.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_sender_imprint_on.3
MANSRC = ../guides/man/m3_ttdt/s_imp_on.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_session_join.3
MANSRC = ../guides/man/m3_ttdt/ses_join.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_session_quit.3
MANSRC = ../guides/man/m3_ttdt/ses_quit.sgm
include manpage.tmpl

MANTARGET = man3/ttdt_subcontract_manage.3
MANSRC = ../guides/man/m3_ttdt/subc_man.sgm
include manpage.tmpl

MANTARGET = man3/ttmedia_Deposit.3
MANSRC = ../guides/man/m3_ttmedia/Deposit.sgm
include manpage.tmpl

MANTARGET = man3/ttmedia_load.3
MANSRC = ../guides/man/m3_ttmedia/load.sgm
include manpage.tmpl

MANTARGET = man3/ttmedia_load_reply.3
MANSRC = ../guides/man/m3_ttmedia/load_rep.sgm
include manpage.tmpl

MANTARGET = man3/ttmedia_ptype_declare.3
MANSRC = ../guides/man/m3_ttmedia/pty_decl.sgm
include manpage.tmpl

MANTARGET = man3/tttk_Xt_input_handler.3
MANSRC = ../guides/man/m3_tttk/Xt_inp_h.sgm
include manpage.tmpl

MNATARGET = man3/tttk_block_while.3
MANSRC = ../guides/man/m3_tttk/block_wh.sgm
include manpage.tmpl

MANTARGET = man3/tttk_message_abandon.3
MANSRC = ../guides/man/m3_tttk/m_abando.sgm
include manpage.tmpl

MANTARGET = man3/tttk_message_create.3
MANSRC = ../guides/man/m3_tttk/m_create.sgm
include manpage.tmpl

MANTARGET = man3/tttk_message_destroy.3
MANSRC = ../guides/man/m3_tttk/m_destro.sgm
include manpage.tmpl

MANTARGET = man3/tttk_message_fail.3
MANSRC = ../guides/man/m3_tttk/m_fail.sgm
include manpage.tmpl

MANTARGET = man3/tttk_message_reject.3
MANSRC = ../guides/man/m3_tttk/m_reject.sgm
include manpage.tmpl

MANTARGET = man3/tttk_op_string.3
MANSRC = ../guides/man/m3_tttk/op_str.sgm
include manpage.tmpl

MANTARGET = man3/tttk_string_op.3
MANSRC = ../guides/man/m3_tttk/str_op.sgm
include manpage.tmpl

MANTARGET = man4/BIL.4
MANSRC = ../guides/man/man4/bil.sgm
include manpage.tmpl

MANTARGET = man4/Deposit.4
MANSRC = ../guides/man/man4/Deposit.sgm
include manpage.tmpl

MANTARGET = man4/Display.4
MANSRC = ../guides/man/man4/Display.sgm
include manpage.tmpl

MANTARGET = man4/DtDndProtocol.4
MANSRC = ../guides/man/man4/DtDndPro.sgm
include manpage.tmpl

MANTARGET = man4/DtInfo_LoadInfoLib.4
MANSRC = ../guides/man/man4/ifloadil.sgm
include manpage.tmpl

MANTARGET = man4/DtInfo_PrintInfoAtLoc.4
MANSRC = ../guides/man/man4/ifprnial.sgm
include manpage.tmpl

MANTARGET = man4/DtInfo_Quit.4
MANSRC = ../guides/man/man4/ifquit.sgm
include manpage.tmpl

MANTARGET = man4/DtInfo_ShowInfoAtLoc.4
MANSRC = ../guides/man/man4/ifshwial.sgm
include manpage.tmpl

MANTARGET = man4/Edit.4
MANSRC = ../guides/man/man4/Edit.sgm
include manpage.tmpl

MANTARGET = man4/Get_Environment.4
MANSRC = ../guides/man/man4/Get_Env.sgm
include manpage.tmpl

MANTARGET = man4/Get_Geometry.4
MANSRC = ../guides/man/man4/Get_Geom.sgm
include manpage.tmpl

MANTARGET = man4/Get_Iconified.4
MANSRC = ../guides/man/man4/Get_Icon.sgm
include manpage.tmpl

MANTARGET = man4/Get_Locale.4
MANSRC = ../guides/man/man4/Get_Loca.sgm
include manpage.tmpl

MANTARGET = man4/Get_Mapped.4
MANSRC = ../guides/man/man4/Get_Map.sgm
include manpage.tmpl

MANTARGET = man4/Get_Modified.4
MANSRC = ../guides/man/man4/Get_Modi.sgm
include manpage.tmpl

MANTARGET = man4/Get_Situation.4
MANSRC = ../guides/man/man4/Get_Situ.sgm
include manpage.tmpl

MANTARGET = man4/Get_Status.4
MANSRC = ../guides/man/man4/Get_Stat.sgm
include manpage.tmpl

MANTARGET = man4/Get_Sysinfo.4
MANSRC = ../guides/man/man4/Get_Sysi.sgm
include manpage.tmpl

MANTARGET = man4/Get_XInfo.4
MANSRC = ../guides/man/man4/Get_XInf.sgm
include manpage.tmpl

MANTARGET = man4/Instantiate.4
MANSRC = ../guides/man/man4/Instanti.sgm
include manpage.tmpl

MANTARGET = man4/Lower.4
MANSRC = ../guides/man/man4/Lower.sgm
include manpage.tmpl

MANTARGET = man4/Mail.4
MANSRC = ../guides/man/man4/Mail.sgm
include mamnpage.tmpl

MANTARGET = man4/Modified.4
MANSRC = ../guides/man/man4/Modified.sgm
include manpage.tmpl

MANTARGET = man4/Pause.4
MANSRC = ../guides/man/man4/Pause.sgm
include manpage.tmpl

MANTARGET = man4/Print.4
MANSRC = ../guides/man/man4/Print.sgm
include manpage.tmpl

MANTARGET = man4/Quit.4
MANSRC = ../guides/man/man4/Quit.sgm
include manpage.tmpl

MANTARGET = man4/Raise.4
MANSRC = ../guides/man/man4/Raise.sgm
include manpage.tmpl

MANTARGET = man4/Resume.4
MANSRC = ../guides/man/man4/Resume.sgm
include manpage.tmpl

MANTARGET = man4/Revert.4
MANSRC = ../guides/man/man4/Revert.sgm
include manpage.tmpl

MANTARGET = man4/Reverted.4
MANSRC = ../guides/man/man4/Reverted.sgm
include manpage.tmpl

MANTARGET = man4/Save.4
MANSRC = ../guides/man/man4/Save.sgm
include manpage.tmpl

MANTARGET = man4/Saved.4
MANSRC = ../guides/man/man4/Saved.sgm
include manpage.tmpl

MANTARGET = man4/Set_Environment.4
MANSRC = ../guides/man/man4/Set_Env.sgm
include manpage.tmpl

MANTARGET = man4/Set_Geometry.4
MANSRC = ../guides/man/man4/Set_Geom.sgm
include manpage.tmpl

MANTARGET = man4/Set_Iconified.4
MANSRC = ../guides/man/man4/Set_Icon.sgm
include manpage.tmpl

MANTARGET = man4/Set_Locale.4
MANSRC = ../guides/man/man4/Set_Loca.sgm
include manpage.tmpl

MANTARGET = man4/Set_Mapped.4
MANSRC = ../guides/man/man4/Set_Map.sgm
include manpage.tmpl

MANTARGET = man4/Set_Situation.4
MANSRC = ../guides/man/man4/Set_Situ.sgm
include manpage.tmpl

MANTARGET = man4/Signal.4
MANSRC = ../guides/man/man4/Signal.sgm
include manpage.tmpl

MANTARGET = man4/Started.4
MANSRC = ../guides/man/man4/Started.sgm
include manpage.tmpl

MANTARGET = man4/Status.4
MANSRC = ../guides/man/man4/Status.sgm
include manpage.tmpl

MANTARGET = man4/Stopped.4
MANSRC = ../guides/man/man4/Stopped.sgm
include manpage.tmpl

MANTARGET = man4/Translate.4
MANSRC = ../guides/man/man4/Translat.sgm
include manpage.tmpl

MANTARGET = man4/dtactionfile.4
MANSRC = ../guides/man/man4/dtaction.sgm
include manpage.tmpl

MANTARGET = man4/dtbmfile.4
MANSRC = ../guides/man/man4/dtbmfile.sgm
include manpage.tmpl

MANTARGET = man4/dtcm_archive.4
MANSRC = ../guides/man/man4/dtcm_arc.sgm
include manpage.tmpl

MANTARGET = man4/dtcm_entry.4
MANSRC = ../guides/man/man4/dtcm_ent.sgm
include manpage.tmpl

MANTARGET = man4/dtdpfile.4
MANSRC = ../guides/man/man4/dtdpfile.sgm
include manpage.tmpl

MANTARGET = man4/dtdtfile.4
MANSRC = ../guides/man/man4/dtdtfile.sgm
include manpage.tmpl

MANTARGET = man4/dtdtsfile.4
MANSRC = ../guides/man/man4/dtdtsfil.sgm
include manpage.tmpl

MANTARGET = man4/dtfile_config.4
MANSRC = ../guides/man/man4/dtfile_c.sgm
include manpage.tmpl

MANTARGET = man4/dtfpfile.4
MANSRC = ../guides/man/man4/dtfpfile.sgm
include manpage.tmpl

MANTARGET = man4/dthelptagdtd.4
MANSRC = ../guides/man/man4/dthelpta.sgm
include manpage.tmpl

MANTARGET = man4/dthffile.4
MANSRC = ../guides/man/man4/dthffile.sgm
include manpage.tmpl

MANTARGET = man4/dticonfile.4
MANSRC = ../guides/man/man4/dticonfi.sgm
include manpage.tmpl

MANTARGET = man4/dtlocator.4
MANSRC = ../guides/man/man4/genloc.sgm
include manpage.tmpl

MANTARGET = man4/dtpmfile.4
MANSRC = ../guides/man/man4/dtpmfile.sgm
include manpage.tmpl

MANTARGET = man4/dtresourcesfile.4
MANSRC = ../guides/man/man4/dtresour.sgm
include manpage.tmpl

MANTARGET = man4/dtsdldtd.4
MANSRC = ../guides/man/man4/dtsdldtd.sgm
include manpage.tmpl

MANTARGET = man4/dtsdlfile.4
MANSRC = ../guides/man/man4/dtsdlfil.sgm
include manpage.tmpl

MANTARGET = man4/dtsessiondb.4
MANSRC = ../guides/man/man4/dtsessdb.sgm
include manpage.tmpl

MANTARGET = man4/dtsessionfile.4
MANSRC = ../guides/man/man4/dtsessio.sgm
include manpage.tmpl

MANTARGET = man4/dtspcdenv.4
MANSRC = ../guides/man/man4/dtspcden.sgm
include manpage.tmpl

MANTARGET = man4/dtsrdbfiles.4
MANSRC = ../guides/man/man4/dtsrdbfl.sgm
include manpage.tmpl

MANTARGET = man4/dtsrfzkfiles.4
MANSRC = ../guides/man/man4/dtsrfzkf.sgm
include manpage.tmpl

MANTARGET = man4/dtsrhanfile.4
MANSRC = ../guides/man/man4/dtsrhanf.sgm
include manpage.tmpl

MANTARGET = man4/dtsrlangfiles.4
MANSRC = ../guides/man/man4/dtsrlngf.sgm
include manpage.tmpl

MANTARGET = man4/dtsrocffile.4
MANSRC = ../guides/man/man4/dtsrocfl.sgm
include manpage.tmpl

MANTARGET = man4/dtwmrc.4
MANSRC = ../guides/man/man4/dtwmrc.sgm
include manpge.tmpl

MANTARGET = man4/mt-libtt-intro.4
MANSRC = ../guides/man/man4/mt-libtt.sgm
include manpage.tmpl

MANTARGET = man4/startlog.4
MANSRC = ../guides/man/man4/startlog.sgm
include manpage.tmpl

MANTARGET = man4/tttracefile.4
MANSRC = ../guides/man/man4/tttracef.sgm
include manpage.tmpl

MANTARGET = man5/Dt.5
MANSRC = ../guides/man/man5/Dt.sgm
include manpage.tmpl

MANTARGET = man5/DtAction.5
MANSRC = ../guides/man/man5/DtAction.sgm
include manpage.tmpl

MANTARGET = man5/DtComboBox.5
MANSRC = ../guides/man/man5/DtComboB.sgm
include manpage.tmpl

MANTARGET = man5/DtDnd.5
MANSRC = ../guides/man/man5/DtDnd.sgm
include manpage.tmpl

MANTARGET = man5/DtDts.5
MANSRC = ../guides/man/man5/DtDts.sgm
include manpage.tmpl

MANTARGET = man5/DtEditor.5
MANSRC = ../guides/man/man5/DtEditor.sgm
include manpage.tmpl

MANTARGET = man5/DtHelp.5
MANSRC = ../guides/man/man5/DtHelp.sgm
include manpage.tmpl

MANTARGET = man5/DtHelpDialog.5
MANSRC = ../guides/man/man5/DtHelpDi.sgm
include manpage.tmpl

MANTARGET = man5/DtHelpQuickD.5
MANSRC = ../guides/man/man5/DtHelpQD.sgm
include manpage.tmpl

MANTARGET = man5/DtInfoLib.5
MANSRC = ../guides/man/man5/DtInfoLib.sgm
include manpage.tmpl

MANTARGET = man5/DtMenuButton.5
MANSRC = ../guides/man/man5/DtMenuBu.sgm
include manpage.tmpl

MANTARGET = man5/DtMmdbBookCase.5
MANSRC = ../guides/man/man5/dtinfobc.sgm
include manpage.tmpl

MANTARGET = man5/DtMmdbGraphicInfo.5
MANSRC = ../guides/man/man5/mmdbgifo.sgm
include manpage.tmpl

MANTARGET = man5/DtMmdbHandle.5
MANSRC = ../guides/man/man5/mmdbhndl.sgm
include manpage.tmpl

MANTARGET = man5/DtMmdbInfoLibInfo.5
MANSRC = ../guides/man/man5/dtinfdlb.sgm
include manpage.tmpl

MANTARGET = man5/DtMmdbInfoRequest.5
MANSRC = ../guides/man/man5/mmdbireq.sgm
include manpage.tmpl

MANTARGET = man5/DtMrm.5
MANSRC = ../guides/man/man5/DtMrm.sgm
include manpage.tmpl

MANTARGET = man5/DtMsgLog.5
MANSRC = ../guides/man/man5/DtMsgLog.sgm
include manpage.tmpl

MANTARGET = man5/DtPrint.5
MANSRC = ../guides/man/man5/DtPrint.sgm
include manpage.tmpl

MANTARGET = man5/DtSaver.5
MANSRC = ../guides/man/man5/DtSaver.sgm
include manpage.tmpl

MANTARGET = man5/DtSearch.5
MANSRC = ../guides/man/man5/dtsearch.sgm
include manpage.tmpl

MANTARGET = man5/DtSession.5
MANSRC = ../guides/man/man5/DtSessio.sgm
include manpage.tmpl

MANTARGET = man5/DtSpinBox.5
MANSRC = ../guides/man/man5/DtSpinBo.sgm
include manpage.tmpl

MANTARGET = man5/DtStdAppFontNames.5
MANSRC = ../guides/man/man5/DtStdApp.sgm
include manpage.tmpl

MANTARGET = man5/DtStdInterfaceFontNames.5
MANSRC = ../guides/man/man5/DtStdInt.sgm
include manpage.tmpl

MANTARGET = man5/DtTerm.5
MANSRC = ../guides/man/man5/DtTerm.sgm
include manpage.tmpl

MANTARGET = man5/DtWsm.5
MANSRC = ../guides/man/man5/DtWsm.sgm
include manpage.tmpl

MANTARGET = man5/Tttt_c.5
MANSRC = ../guides/man/man5/Tttt_c.sgm
include manpage.tmpl

MANTARGET = man5/Tttttk.5
MANSRC = ../guides/man/man5/Tttttk.sgm
include manpage.tmpl

MANTARGET = man5/csacsa.5
MANSRC = ../guides/man/man5/csacsa.sgm
include manpage.tmpl

MANTARGET = man5/dtactionaction.5
MANSRC = ../guides/man/man5/dtactact.sgm
include manpage.tmpl

MANTARGET = man5/dtappaction.5
MANSRC = ../guides/man/man5/dtappact.sgm
include manpage.tmpl

MANTARGET = man5/dtbuilderaction.5
MANSRC = ../guides/man/man5/dtbuiact.sgm
include manpage.tmpl

MANTARGET = man5/dtcalcaction.5
MANSRC = ../guides/man/man5/dtclcact.sgm
include manpage.tmpl

MANTARGET = man5/dtcalendaraction.5
MANSRC = ../guides/man/man5/dtcalact.sgm
include manpage.tmpl

MANTARGET = man5/dtenvvar.5
MANSRC = ../guides/man/man5/dtenvvar.sgm
include manpage.tmpl

MANTARGET = man5/dtfileaction.5
MANSRC = ../guides/man/man5/dtfilact.sgm
include manpage.tmpl

MANTARGET = man5/dtfilsys.5
MANSRC = ../guides/man/man5/dtfilsys.sgm
include manpage.tmpl

MANTARGET = man5/dthelpaction.5
MANSRC = ../guides/man/man5/dthelact.sgm
include manpage.tmpl

MANTARGET = man5/dticonaction.5
MANSRC = ../guides/man/man5/dticoact.sgm
include manpage.tmpl

MANTARGET = man5/dtimsstartaction.5
MANSRC = ../guides/man/man5/imssact.sgm
include manpage.tmpl

MANTARGET = man5/dtinfoBookdtd.5
MANSRC = ../guides/man/man5/dtinfobk.sgm
include manpage.tmpl

MANTARGET = man5/dtinfoStyledtd.5
MANSRC = ../guides/man/man5/dtinfost.sgm
include manpage.tmpl

MANTARGET = man5/dtinfoTOCdtd.5
MANSRC = ../guides/man/man5/dtinfotc.sgm
include manpage.tmpl

MANTARGET = man5/dtinfoaction.5
MANSRC = ../guides/man/man5/dtinfact.sgm
include manpage.tmpl

MANTARGET = man5/dtinfoaf.5
MANSRC = ../guides/man/man5/dtinfoaf.sgm
include manpage.tmpl

MANTARGET = man5/dtmailaction.5
MANSRC = ../guides/man/man5/dtmaiact.sgm
include manpage.tmpl

MANTARGET = man5/dtmanaction.5
MANSRC = ../guides/man/man5/dtmanact.sgm
include manpage.tmpl

MANTARGET = man5/dtprintinfoaction.5
MANSRC = ../guides/man/man5/dtpriact.sgm
include manpage.tmpl

MANTARGET = man5/dtsessionaction.5
MANSRC = ../guides/man/man5/dtsesact.sgm
include manpage.tmpl

MANTARGET = man5/dtstyleaction.5
MANSRC = ../guides/man/man5/dtstyact.sgm
include manpage.tmpl

MANTARGET = man5/dtterm.5
MANSRC = ../guides/man/man5/dttermes.sgm
include manpage.tmpl

MANTARGET = man5/dttermaction.5
MANSRC = ../guides/man/man5/dtteract.sgm
include manpage.tmpl

MANTARGET = man5/dttextaction.5
MANSRC = ../guides/man/man5/dttexact.sgm
include manpage.tmpl

MANTARGET = man5/dttrashaction.5
MANSRC = ../guides/man/man5/dttraact.sgm
include manpage.tmpl

MANTARGET = man6/ttsnoop.6
MANSRC = ../guides/man/man6/ttsnoop.sgm
include manpage.tmpl

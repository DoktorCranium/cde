
$(CPPTARGET): Makefile $(CPPSRC)
	$(RM) $@
	$(CPP) -P -DXCOMM=# $(AM_CPPFLAGS) $(CPPSRC) -o $@

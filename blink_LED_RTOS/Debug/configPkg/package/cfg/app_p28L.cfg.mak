# invoke SourceDir generated makefile for app.p28L
app.p28L: .libraries,app.p28L
.libraries,app.p28L: package/cfg/app_p28L.xdl
	$(MAKE) -f C:\Users\AARONB~1\workspace_v6_1\blink_LED_RTOS/src/makefile.libs

clean::
	$(MAKE) -f C:\Users\AARONB~1\workspace_v6_1\blink_LED_RTOS/src/makefile.libs clean


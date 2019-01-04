include $(THEOS)/makefiles/common.mk

TWEAK_NAME = JBBad
JBBad_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard; killall -9 Jailbreaking Bad"
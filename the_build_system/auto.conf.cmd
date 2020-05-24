deps_config := \
	../linux/Kconfig \
	../macos/Kconfig \
	../posix/Kconfig \
	../node/Kconfig \
	Kconfig.include \
	Kconfig

auto.conf: \
	$(deps_config)

auto.conf: FORCE

$(deps_config): ;

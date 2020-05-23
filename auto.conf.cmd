deps_config := \
	common/Kconfig \
	platform/Kconfig \
	Kconfig.include \
	Kconfig

auto.conf: \
	$(deps_config)

auto.conf: FORCE

$(deps_config): ;

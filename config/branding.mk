# Set all versions
CUSTOM_BUILD_TYPE ?= UNOFFICIAL

CUSTOM_DATE_YEAR := $(shell date -u +%Y)
CUSTOM_DATE_MONTH := $(shell date -u +%m)
CUSTOM_DATE_DAY := $(shell date -u +%d)
CUSTOM_DATE_HOUR := $(shell date -u +%H)
CUSTOM_DATE_MINUTE := $(shell date -u +%M)
CUSTOM_BUILD_DATE_UTC := $(shell date -d '$(CUSTOM_DATE_YEAR)-$(CUSTOM_DATE_MONTH)-$(CUSTOM_DATE_DAY) $(CUSTOM_DATE_HOUR):$(CUSTOM_DATE_MINUTE) UTC' +%s)
CUSTOM_BUILD_DATE := $(CUSTOM_DATE_YEAR)$(CUSTOM_DATE_MONTH)$(CUSTOM_DATE_DAY)-$(CUSTOM_DATE_HOUR)$(CUSTOM_DATE_MINUTE)

CUSTOM_PLATFORM_VERSION := 10.0
INFINITY_VERSION_PROP := 1.0

TARGET_PRODUCT_SHORT := $(subst aosp_,,$(CUSTOM_BUILD))

CUSTOM_VERSION := Infinity_$(INFINITY_VERSION_PROP)-$(CUSTOM_BUILD)-$(CUSTOM_BUILD_DATE)-$(CUSTOM_BUILD_TYPE)


CUSTOM_PROPERTIES := \
    top.infinity.version=$(INFINITY_VERSION_PROP) \
    top.infinity.version.display=$(CUSTOM_VERSION) \
    top.infinity.build_date=$(CUSTOM_BUILD_DATE) \
    top.infinity.build_date_utc=$(CUSTOM_BUILD_DATE_UTC) \
    top.infinity.build_type=$(CUSTOM_BUILD_TYPE)

ifeq ($(CUSTOM_BUILD_TYPE), OFFICIAL)
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/secure/releasekey
endif

#!/bin/bash

. build/envsetup.sh

# build
repopick 235958 # build: Support systam-as-root A-only backuptool

# frameworks/base
repopick 229606 # ConsumerIR: Support Huawei's DSP chip implementation
repopick 227124 # BatteryService: Add support for oem fast charger detection

# frameworks/opt/telephony
repopick 227125 # RIL: Allow overriding RadioResponse and RadioIndication

# packages/services/Telephony
repopick 229610 # Telephony: Support muting by RIL command

# vendor/lineage
repopick 235959 # lineage: Support systam-as-root A-only backuptool

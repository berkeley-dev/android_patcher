#!/bin/bash

. build/envsetup.sh

# frameworks/base
repopick 229606 # ConsumerIR: Support Huawei's DSP chip implementation
repopick 227124 # BatteryService: Add support for oem fast charger detection

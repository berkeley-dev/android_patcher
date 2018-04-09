#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'device/lineage/sepolicy'
    'frameworks/native'
    'packages/apps/Camera2'
    'system/core'
    'system/sepolicy'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done

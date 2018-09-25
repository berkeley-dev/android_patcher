#!/bin/bash

ROOT="${PWD}"
REPOSITORIES=(
    'frameworks/base'
    'frameworks/native'
    'frameworks/opt/telephony'
    'packages/apps/Camera2'
    'packages/services/Telephony'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done

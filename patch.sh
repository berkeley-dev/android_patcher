ROOT="${PWD}"
REPOSITORIES=(
    'build/make'
    'device/lineage/sepolicy'
    'system/core'
    'system/sepolicy'
    'system/vold'
)

for repository in "${REPOSITORIES[@]}"; do
    cd "${ROOT}/${repository}"

    git am --keep-cr "${ROOT}/patcher/patches/${repository}"/*

    cd "${ROOT}"
done

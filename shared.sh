#!/bin/sh
# Shared definitions for buildroot scripts

# The defconfig from the buildroot directory we use for qemu builds
QEMU_DEFCONFIG=configs/qemu_aarch64_virt_defconfig
# The place we store customizations to the qemu configuration
MODIFIED_QEMU_DEFCONFIG=base_external/configs/pathfinder_qemu_defconfig
# The defconfig from the buildroot directory we use for the project
PATHFINDER_DEFAULT_DEFCONFIG=${QEMU_DEFCONFIG}
PATHFINDER_MODIFIED_DEFCONFIG=${MODIFIED_QEMU_DEFCONFIG}
PATHFINDER_MODIFIED_DEFCONFIG_REL_BUILDROOT=../${PATHFINDER_MODIFIED_DEFCONFIG}

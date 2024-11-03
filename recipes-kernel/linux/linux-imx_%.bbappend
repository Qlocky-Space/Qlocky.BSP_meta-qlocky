FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

# Copy new files to work directory. More readable because
# entire file can be edited
DATADIR = "${QLOCKY_CONF_DIR}/../recipes-kernel/linux/files"
require recipes-kernel/linux/linux-add-qlocky-dts.inc

SRC_URI += " \
	file://0001-qlocky-dt-make.patch \
"

PATCHTOOL = "git"

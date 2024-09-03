#!/bin/sh

. sources/meta-imx/tools/imx-setup-release.sh

echo "" >> $BUILD_DIR/conf/bblayers.conf
echo "BBLAYERS += \"\${BSPDIR}/sources/meta-qlocky\"" >> $BUILD_DIR/conf/bblayers.conf
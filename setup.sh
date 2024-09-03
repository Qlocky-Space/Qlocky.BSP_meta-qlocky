#!/bin/sh

. sources/meta-imx/tools/imx-setup-release.sh

unhook_layer() {
    layer=$1
    line="BBLAYERS += \"\${BSPDIR}/sources/$layer\""

    # Change settings according to environment
    sed "s,$line,,g" -i $BUILD_DIR/conf/bblayers.conf
}

# Some layers have been deleted from default imx setup.
unhook_layer meta-nxp-demo-experience

# add custom Qlocky layers
echo "# Qlocky Release layers" >> $BUILD_DIR/conf/bblayers.conf
hook_in_layer meta-qlocky


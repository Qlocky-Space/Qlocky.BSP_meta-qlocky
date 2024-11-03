do_add_dts_files () {
	cp -f "${DATADIR}/0001-imx8mm-qlocky.dts"  "${WORKDIR}/git/arch/arm64/boot/dts/freescale/imx8mm-qlocky.dts"
	cp -f "${DATADIR}/0001-imx8mm-qlocky.dtsi" "${WORKDIR}/git/arch/arm64/boot/dts/freescale/imx8mm-qlocky.dtsi"
}

addtask add_dts_files before do_patch after do_unpack
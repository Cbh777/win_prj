verdiDockWidgetDisplay -dock widgetDock_WelcomePage
debExit
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         debReload
wvZoom -win $_nWave2 0.000000 119916.310511
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 994285.845858
wvSetCursor -win $_nWave2 81659.103593 -snap {("G2" 0)}
wvZoom -win $_nWave2 0.000000 163893.271295
wvSetCursor -win $_nWave2 45404.787132 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 250247.678553
wvSetCursor -win $_nWave2 58328.406279 -snap {("G2" 0)}
debReload
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 53262.663798 -snap {("G1" 2)}
debReload
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_out_pos" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/test_top/dut/clk_out_pos"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "clk_out_neg" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvAddSignal -win $_nWave2 "/test_top/dut/clk_out_neg"
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 4)}
srcDeselectAll -win $_nTrace1
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G1}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 6)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetCursor -win $_nWave2 40525.939847 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 31262.867882 -snap {("G1" 3)}
wvSelectGroup -win $_nWave2 {G1}
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 0.000000 162103.759387
wvSetCursor -win $_nWave2 37971.094593 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 24282.749382 -snap {("G2" 0)}
wvZoom -win $_nWave2 23907.726225 90005.557554
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 )} 
srcHBSelect "test_top.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "test_top.dut" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 43122.240451 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.000000 88079.469856
wvSetCursor -win $_nWave2 30973.000389 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 50891.492416 -snap {("G1" 3)}
wvSelectSignal -win $_nWave2 {( "G1" 3 4 5 )} 
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 76617.422015 -snap {("G1" 4)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvZoom -win $_nWave2 0.000000 215180.844808
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_pos" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvAddSignal -win $_nWave2 "/test_top/dut/cnt_pos\[2:0\]"
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G1" 3)}
wvSetCursor -win $_nWave2 42314.336168 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 4)}
wvAddSignal -win $_nWave2 "/test_top/dut/cnt_neg\[2:0\]"
wvSetPosition -win $_nWave2 {("G1" 4)}
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSetCursor -win $_nWave2 15058.925519 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSetRadix -win $_nWave2 -format Bin
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_neg" -win $_nTrace1
srcAction -pos 22 2 5 -win $_nTrace1 -name "cnt_neg" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_pos" -win $_nTrace1
srcAction -pos 12 2 3 -win $_nTrace1 -name "cnt_pos" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_pos" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "cnt_pos" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {12 12 4 5 1 1} -backward
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 31362.390336 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 24641.878121 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "510" "190" "900" "700"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
verdiWindowResize -win $_Verdi_1 "655" "111" "900" "700"
verdiWindowResize -win $_Verdi_1 "80" "78" "900" "701"
verdiWindowResize -win $_Verdi_1 "80" "78" "901" "704"
verdiWindowResize -win $_Verdi_1 "80" "78" "905" "710"
verdiWindowResize -win $_Verdi_1 "80" "78" "921" "735"
verdiWindowResize -win $_Verdi_1 "80" "78" "981" "806"
verdiWindowResize -win $_Verdi_1 "80" "78" "1003" "833"
verdiWindowResize -win $_Verdi_1 "80" "78" "1020" "855"
verdiWindowResize -win $_Verdi_1 "80" "78" "1038" "899"
verdiWindowResize -win $_Verdi_1 "80" "78" "1046" "916"
verdiWindowResize -win $_Verdi_1 "80" "78" "970" "271"
verdiWindowResize -win $_Verdi_1 -2 "25" "1920" "1004"
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 5 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 66707.306430 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 44554.506906 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 34349.284654 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 64964.951411 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {23 28 1 1 1 1} -backward
wvSetCursor -win $_nWave2 83633.040897 -snap {("G2" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 74174.542224 -snap {("G1" 4)}
wvSetCursor -win $_nWave2 110266.181897 -snap {("G2" 0)}
wvSetCursor -win $_nWave2 102301.130383 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 46296.861925 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 69196.385028 -snap {("G2" 0)}
srcDeselectAll -win $_nTrace1
wvSetCursor -win $_nWave2 44554.506906 -snap {("G1" 6)}
wvSetCursor -win $_nWave2 44305.599047 -snap {("G1" 7)}
wvSetCursor -win $_nWave2 10454.130112 -snap {("G1" 3)}
wvSetCursor -win $_nWave2 65711.674991 -snap {("G2" 0)}
wvZoom -win $_nWave2 92593.723850 278527.895130
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvSetCursor -win $_nWave2 101516.401208 -snap {("G2" 0)}
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 8 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSelectSignal -win $_nWave2 {( "G1" 7 )} 
wvSetPosition -win $_nWave2 {("G1" 7)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetCursor -win $_nWave2 98075.167269 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 72696.066967 -snap {("G2" 0)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectGroup -win $_nWave2 {G1}
wvSetCursor -win $_nWave2 118292.416662 -snap {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 6 )} {( "G2" 1 )} 
wvSetCursor -win $_nWave2 70545.295755 -snap {("G3" 0)}
wvSearchPrev -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchNext -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSearchPrev -win $_nWave2
wvSetCursor -win $_nWave2 804818.587542 -snap {("G1" 1)}
wvSetCursor -win $_nWave2 889558.973296 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 905904.834507 -snap {("G3" 0)}
wvZoom -win $_nWave2 743736.685120 1020756.017230
wvSetCursor -win $_nWave2 826570.111783 -snap {("G3" 0)}
wvZoom -win $_nWave2 743736.685120 758957.527544
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvZoomOut -win $_nWave2
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 583310.414497 -snap {("G1" 4)}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
wvSetCursor -win $_nWave2 95779.505823 -snap {("G2" 1)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcHBSelect "test_top.dut" -win $_nTrace1
srcSetScope -win $_nTrace1 "test_top.dut" -delim "."
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
sidUpdateSignalValue
debReload
debReload
wvSetCursor -win $_nWave2 84229.624239 -snap {("G3" 0)}
wvDisplayGridCount -win $_nWave2 -off
wvGetSignalClose -win $_nWave2
wvReloadFile -win $_nWave2
srcDeselectAll -win $_nTrace1
verdiWindowResize -win $_Verdi_1 "713" "114" "970" "271"
debExit

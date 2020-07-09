
set TopModule "sobel_filter"
set ClockPeriod "5.000000"
set ClockList {ap_clk}
set multiClockList {}
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag  0
set TrivialPipelineFlag 0
set FloatingPointFlag 0
set ResetLevelFlag 1
set ResetStyle "control"
set ResetSyncFlag 1
set RtlPrefix ""
set ExtraCCFlags ""
set ExtraCLdFlags ""
set SynCheckOptions ""
set PresynOptions ""
set PreprocOptions ""
set SchedOptions ""
set BindOptions ""
set RtlGenOptions ""
set RtlWriterOptions ""
set CbcGenFlag ""
set CasGenFlag ""
set CasMonitorFlag ""
set AutoSimOptions {}
set ExportMCPathFlag "0"
set SCTraceFileName "mytrace"
set SCTraceFileFormat "vcd"
set SCTraceOption "all"
set TargetInfo "xc7z020:clg484:-1"
set SourceFiles {sc {} c ../../sobel.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile {C:/WORK/sobel_variable/axi_sobel/axi_sobel/sobel_rd_prj/solution1/solution1.directive}
set TBFiles {verilog {../../test_1080p.bmp ../../sobel_test.cpp ../../result_1080p_golden.bmp ../../ap_bmp.cpp} bc {../../test_1080p.bmp ../../sobel_test.cpp ../../result_1080p_golden.bmp ../../ap_bmp.cpp} sc {../../test_1080p.bmp ../../sobel_test.cpp ../../result_1080p_golden.bmp ../../ap_bmp.cpp} vhdl {../../test_1080p.bmp ../../sobel_test.cpp ../../result_1080p_golden.bmp ../../ap_bmp.cpp} c {} cas {../../test_1080p.bmp ../../sobel_test.cpp ../../result_1080p_golden.bmp ../../ap_bmp.cpp}}
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set PlatformFiles {{DefaultPlatform {xilinx/zynq/zynq xilinx/zynq/zynq_fpv6}}}
set DefaultPlatform "DefaultPlatform"
set TBTVFileNotFound ""
set AppFile "../vivado_hls.app"
set ApsFile "solution1.aps"
set AvePath "../.."

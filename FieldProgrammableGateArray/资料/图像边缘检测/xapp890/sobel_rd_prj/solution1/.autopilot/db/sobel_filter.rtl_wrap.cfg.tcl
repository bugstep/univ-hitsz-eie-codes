set language "C"
set globalAPint ""
set globalVariable ""
set gportName0 "_iob"
set gportInterface0 "memory"
set structName0 "FILE"
set structMember0 ""
set portName100 "_ptr"
set portInterface100 "memory"
set portData100 "char"
set portPointer100 "1"
set portArrayDim100 0
set portConst100 "0"
set portVolatile100 "0"
set portArrayOpt100 ""
set port100 [list $portName100 $portInterface100 $portData100 $portPointer100 $portArrayDim100 $portConst100 $portVolatile100 $portArrayOpt100]
lappend structMember0 $port100
set portName101 "_cnt"
set portInterface101 "memory"
set portData101 "int"
set portPointer101 "0"
set portArrayDim101 0
set portConst101 "0"
set portVolatile101 "0"
set portArrayOpt101 ""
set port101 [list $portName101 $portInterface101 $portData101 $portPointer101 $portArrayDim101 $portConst101 $portVolatile101 $portArrayOpt101]
lappend structMember0 $port101
set portName102 "_base"
set portInterface102 "memory"
set portData102 "char"
set portPointer102 "1"
set portArrayDim102 0
set portConst102 "0"
set portVolatile102 "0"
set portArrayOpt102 ""
set port102 [list $portName102 $portInterface102 $portData102 $portPointer102 $portArrayDim102 $portConst102 $portVolatile102 $portArrayOpt102]
lappend structMember0 $port102
set portName103 "_flag"
set portInterface103 "memory"
set portData103 "int"
set portPointer103 "0"
set portArrayDim103 0
set portConst103 "0"
set portVolatile103 "0"
set portArrayOpt103 ""
set port103 [list $portName103 $portInterface103 $portData103 $portPointer103 $portArrayDim103 $portConst103 $portVolatile103 $portArrayOpt103]
lappend structMember0 $port103
set portName104 "_file"
set portInterface104 "memory"
set portData104 "int"
set portPointer104 "0"
set portArrayDim104 0
set portConst104 "0"
set portVolatile104 "0"
set portArrayOpt104 ""
set port104 [list $portName104 $portInterface104 $portData104 $portPointer104 $portArrayDim104 $portConst104 $portVolatile104 $portArrayOpt104]
lappend structMember0 $port104
set portName105 "_charbuf"
set portInterface105 "memory"
set portData105 "int"
set portPointer105 "0"
set portArrayDim105 0
set portConst105 "0"
set portVolatile105 "0"
set portArrayOpt105 ""
set port105 [list $portName105 $portInterface105 $portData105 $portPointer105 $portArrayDim105 $portConst105 $portVolatile105 $portArrayOpt105]
lappend structMember0 $port105
set portName106 "_bufsiz"
set portInterface106 "memory"
set portData106 "int"
set portPointer106 "0"
set portArrayDim106 0
set portConst106 "0"
set portVolatile106 "0"
set portArrayOpt106 ""
set port106 [list $portName106 $portInterface106 $portData106 $portPointer106 $portArrayDim106 $portConst106 $portVolatile106 $portArrayOpt106]
lappend structMember0 $port106
set portName107 "_tmpfname"
set portInterface107 "memory"
set portData107 "char"
set portPointer107 "1"
set portArrayDim107 0
set portConst107 "0"
set portVolatile107 "0"
set portArrayOpt107 ""
set port107 [list $portName107 $portInterface107 $portData107 $portPointer107 $portArrayDim107 $portConst107 $portVolatile107 $portArrayOpt107]
lappend structMember0 $port107
set gportData0 [list $structName0 "struct _iobuf " $structMember0 0 0]
set gportPointer0 "0"
set gportArrayDim0 [list 0]
set gportConst0 "0"
set gportVolatile0 "0"
set gportInitilizer0 ""
set gextern0 1
set gport0 [list $gportName0 $gportInterface0 $gportData0 $gportPointer0 $gportArrayDim0 $gportConst0 $gportVolatile0 $gportInitilizer0 $gextern0]
lappend globalVariable $gport0
set staticVariable ""
set moduleName "sobel_filter"
set rawDecl [list "void" "sobel_filter\(AXI_PIXEL inter_pix\[1080\]\[1920\],AXI_PIXEL out_pix\[1080\]\[1920\], int rows, int cols\)"]
set argAPint ""
set returnAPint ""
set portList ""
set portName0 "inter_pix"
set portInterface0 "[list fifo 0]"
set structName0 "AXI_PIXEL"
set structParameter0 [list "int D" "int U" "int TI" "int TD"]
set structArgument0 [list 32 1 1 1]
set structMember0 ""
set portName100 "data"
set portInterface100 "[list fifo 0]"
set portData100 "[list ap_uint D ]"
set portPointer100 "0"
set portArrayDim100 0
set portConst100 "0"
set portVolatile100 "0"
set portArrayOpt100 ""
set port100 [list $portName100 $portInterface100 $portData100 $portPointer100 $portArrayDim100 $portConst100 $portVolatile100 $portArrayOpt100]
lappend structMember0 $port100
set portName101 "strb"
set portInterface101 "[list fifo 0]"
set portData101 "[list ap_uint 7 ]"
set portPointer101 "0"
set portArrayDim101 0
set portConst101 "0"
set portVolatile101 "0"
set portArrayOpt101 ""
set port101 [list $portName101 $portInterface101 $portData101 $portPointer101 $portArrayDim101 $portConst101 $portVolatile101 $portArrayOpt101]
lappend structMember0 $port101
set portName102 "user"
set portInterface102 "[list fifo 0]"
set portData102 "[list ap_uint U ]"
set portPointer102 "0"
set portArrayDim102 0
set portConst102 "0"
set portVolatile102 "0"
set portArrayOpt102 ""
set port102 [list $portName102 $portInterface102 $portData102 $portPointer102 $portArrayDim102 $portConst102 $portVolatile102 $portArrayOpt102]
lappend structMember0 $port102
set portName103 "last"
set portInterface103 "[list fifo 0]"
set portData103 "[list ap_uint 1 ]"
set portPointer103 "0"
set portArrayDim103 0
set portConst103 "0"
set portVolatile103 "0"
set portArrayOpt103 ""
set port103 [list $portName103 $portInterface103 $portData103 $portPointer103 $portArrayDim103 $portConst103 $portVolatile103 $portArrayOpt103]
lappend structMember0 $port103
set portName104 "tdest"
set portInterface104 "[list fifo 0]"
set portData104 "[list ap_uint TD ]"
set portPointer104 "0"
set portArrayDim104 0
set portConst104 "0"
set portVolatile104 "0"
set portArrayOpt104 ""
set port104 [list $portName104 $portInterface104 $portData104 $portPointer104 $portArrayDim104 $portConst104 $portVolatile104 $portArrayOpt104]
lappend structMember0 $port104
set portData0 [list $structName0 "struct ap_axiu " $structMember0 0 0 $structParameter0 $structArgument0]
set portPointer0 "0"
set portArrayDim0 [list 1080 1920]
set portConst0 "0"
set portVolatile0 "0"
set portArrayOpt0 ""
set port0 [list $portName0 $portInterface0 $portData0 $portPointer0 $portArrayDim0 $portConst0 $portVolatile0 $portArrayOpt0]
lappend portList $port0
set portName1 "out_pix"
set portInterface1 "[list fifo 0]"
set structName1 "AXI_PIXEL"
set structParameter1 [list "int D" "int U" "int TI" "int TD"]
set structArgument1 [list 32 1 1 1]
set structMember1 ""
set portName110 "data"
set portInterface110 "[list fifo 0]"
set portData110 "[list ap_uint D ]"
set portPointer110 "0"
set portArrayDim110 0
set portConst110 "0"
set portVolatile110 "0"
set portArrayOpt110 ""
set port110 [list $portName110 $portInterface110 $portData110 $portPointer110 $portArrayDim110 $portConst110 $portVolatile110 $portArrayOpt110]
lappend structMember1 $port110
set portName111 "strb"
set portInterface111 "[list fifo 0]"
set portData111 "[list ap_uint 7 ]"
set portPointer111 "0"
set portArrayDim111 0
set portConst111 "0"
set portVolatile111 "0"
set portArrayOpt111 ""
set port111 [list $portName111 $portInterface111 $portData111 $portPointer111 $portArrayDim111 $portConst111 $portVolatile111 $portArrayOpt111]
lappend structMember1 $port111
set portName112 "user"
set portInterface112 "[list fifo 0]"
set portData112 "[list ap_uint U ]"
set portPointer112 "0"
set portArrayDim112 0
set portConst112 "0"
set portVolatile112 "0"
set portArrayOpt112 ""
set port112 [list $portName112 $portInterface112 $portData112 $portPointer112 $portArrayDim112 $portConst112 $portVolatile112 $portArrayOpt112]
lappend structMember1 $port112
set portName113 "last"
set portInterface113 "[list fifo 0]"
set portData113 "[list ap_uint 1 ]"
set portPointer113 "0"
set portArrayDim113 0
set portConst113 "0"
set portVolatile113 "0"
set portArrayOpt113 ""
set port113 [list $portName113 $portInterface113 $portData113 $portPointer113 $portArrayDim113 $portConst113 $portVolatile113 $portArrayOpt113]
lappend structMember1 $port113
set portName114 "tdest"
set portInterface114 "[list fifo 0]"
set portData114 "[list ap_uint TD ]"
set portPointer114 "0"
set portArrayDim114 0
set portConst114 "0"
set portVolatile114 "0"
set portArrayOpt114 ""
set port114 [list $portName114 $portInterface114 $portData114 $portPointer114 $portArrayDim114 $portConst114 $portVolatile114 $portArrayOpt114]
lappend structMember1 $port114
set portData1 [list $structName1 "struct ap_axiu " $structMember1 0 0 $structParameter1 $structArgument1]
set portPointer1 "0"
set portArrayDim1 [list 1080 1920]
set portConst1 "0"
set portVolatile1 "0"
set portArrayOpt1 ""
set port1 [list $portName1 $portInterface1 $portData1 $portPointer1 $portArrayDim1 $portConst1 $portVolatile1 $portArrayOpt1]
lappend portList $port1
set portName2 "rows"
set portInterface2 "wire"
set portData2 "int"
set portPointer2 "0"
set portArrayDim2 0
set portConst2 "0"
set portVolatile2 "0"
set portArrayOpt2 ""
set port2 [list $portName2 $portInterface2 $portData2 $portPointer2 $portArrayDim2 $portConst2 $portVolatile2 $portArrayOpt2]
lappend portList $port2
set portName3 "cols"
set portInterface3 "wire"
set portData3 "int"
set portPointer3 "0"
set portArrayDim3 0
set portConst3 "0"
set portVolatile3 "0"
set portArrayOpt3 ""
set port3 [list $portName3 $portInterface3 $portData3 $portPointer3 $portArrayDim3 $portConst3 $portVolatile3 $portArrayOpt3]
lappend portList $port3
set dataPackList ""
set module [list $moduleName $portList $rawDecl $argAPint $returnAPint $dataPackList]
set hasCPPAPInt 1
set hasCPPAPFix 0
set hasSCFix 0
set hasCPPComplex 0
set hasCBool 0
set isTemplateTop 0

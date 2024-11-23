// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Aug 30 09:50:27 2024
//
// Verilog Description of module system_top
//

module system_top (i_fpga_clock, F1Q1, F1Q4, F2Q2, F2Q3, i_Done_Trig, 
            o_Master_Trig, i_SPI_MISO, o_SPI_Clk, o_SPI_MOSI, o_SPI_CS_n) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(1[8:18])
    input i_fpga_clock;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    output F1Q1;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[14:18])
    output F1Q4;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[19:23])
    output F2Q2;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[24:28])
    output F2Q3;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[29:33])
    input i_Done_Trig;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(4[8:19])
    output o_Master_Trig;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(5[9:22])
    input i_SPI_MISO;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(6[8:18])
    output o_SPI_Clk /* synthesis .original_dir=IN_OUT */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(7[8:17])
    output o_SPI_MOSI /* synthesis .original_dir=IN_OUT */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(7[19:29])
    inout o_SPI_CS_n;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(7[31:41])
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    
    wire F1Q1_c, F1Q4_c, F2Q2_c, F2Q3_c, i_Done_Trig_c, o_Master_Trig_c, 
        i_SPI_MISO_c, fpga_resetn, FIFO_valid, FIFO_ready;
    wire [7:0]o_RX_Data;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(28[13:22])
    
    wire VCC_net, GND_net;
    wire [4:0]r_Total_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(60[15:28])
    
    wire r_RX_Valid, n3824, n11, n1281, n11_adj_727;
    wire [3:0]w_ptr;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(13[23:28])
    wire [3:0]r_ptr;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(13[30:35])
    
    wire fifo_N_385, empty_N_383;
    wire [5:0]data_count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(37[11:21])
    
    wire w_SPI_Clk, w_SPI_MOSI, r_State_2__N_223, o_SPI_CS_n_N_256;
    wire [7:0]count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    wire [7:0]n4063;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    
    wire PDM_Signal_N_653, PDM_Signal_1_N_657, n1588, i_fpga_clock_c_enable_19, 
        i_fpga_clock_c_enable_67, n4, o_SPI_CS_n_out, n3514;
    
    VHI i5 (.Z(VCC_net));
    OB F1Q4_pad (.I(F1Q4_c), .O(F1Q4));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[19:23])
    OB F1Q1_pad (.I(F1Q1_c), .O(F1Q1));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[14:18])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    BB o_SPI_CS_n_pad (.I(o_SPI_CS_n_N_256), .T(n1588), .B(o_SPI_CS_n), 
       .O(o_SPI_CS_n_out));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(66[3] 132[6])
    ROM128X1 count_1_6__I_0 (.AD0(n4063[0]), .AD1(n4063[1]), .AD2(n4063[2]), 
            .AD3(n4063[3]), .AD4(n4063[4]), .AD5(n4063[5]), .AD6(n4063[6]), 
            .DO0(PDM_Signal_1_N_657)) /* synthesis initstate=0x0000000A9080000204956DFBFFFFEF6A */ ;
    defparam count_1_6__I_0.initval = 128'h0000000A9080000204956DFBFFFFEF6A;
    ROM128X1 count_6__I_0 (.AD0(count[0]), .AD1(count[1]), .AD2(count[2]), 
            .AD3(count[3]), .AD4(count[4]), .AD5(count[5]), .AD6(count[6]), 
            .DO0(PDM_Signal_N_653)) /* synthesis initstate=0x0000000A9080000204956DFBFFFFEF6A */ ;
    defparam count_6__I_0.initval = 128'h0000000A9080000204956DFBFFFFEF6A;
    fsk_gen fsk_gen_inst (.data_count({Open_0, Open_1, Open_2, Open_3, 
            Open_4, data_count[0]}), .i_fpga_clock_c(i_fpga_clock_c), 
            .n3824(n3824), .n1281(n1281), .n3514(n3514), .F2Q3_c(F2Q3_c), 
            .fpga_resetn(fpga_resetn), .FIFO_ready(FIFO_ready), .F1Q1_c(F1Q1_c), 
            .FIFO_valid(FIFO_valid), .\data_count[2] (data_count[2]), .\data_count[1] (data_count[1]), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\count_1[0] (n4063[0]), 
            .\count[0] (count[0]), .F2Q2_c(F2Q2_c), .PDM_Signal_1_N_657(PDM_Signal_1_N_657), 
            .F1Q4_c(F1Q4_c), .PDM_Signal_N_653(PDM_Signal_N_653), .\count[6] (count[6]), 
            .\count[5] (count[5]), .\count[3] (count[3]), .\count[2] (count[2]), 
            .\count[4] (count[4]), .\count[1] (count[1]), .\count_1[6] (n4063[6]), 
            .\count_1[5] (n4063[5]), .\count_1[3] (n4063[3]), .\count_1[2] (n4063[2]), 
            .\count_1[4] (n4063[4]), .\count_1[1] (n4063[1])) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(110[2] 121[3])
    OB F2Q2_pad (.I(F2Q2_c), .O(F2Q2));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[24:28])
    OB F2Q3_pad (.I(F2Q3_c), .O(F2Q3));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(3[29:33])
    OB o_Master_Trig_pad (.I(o_Master_Trig_c), .O(o_Master_Trig));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(5[9:22])
    OBZ o_SPI_Clk_pad (.I(w_SPI_Clk), .T(r_State_2__N_223), .O(o_SPI_Clk));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(138[10:19])
    OBZ o_SPI_MOSI_pad (.I(w_SPI_MOSI), .T(r_State_2__N_223), .O(o_SPI_MOSI));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(139[10:20])
    IB i_fpga_clock_pad (.I(i_fpga_clock), .O(i_fpga_clock_c));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    IB i_Done_Trig_pad (.I(i_Done_Trig), .O(i_Done_Trig_c));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(4[8:19])
    IB i_SPI_MISO_pad (.I(i_SPI_MISO), .O(i_SPI_MISO_c));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(6[8:18])
    TSALL TSALL_INST (.TSALL(GND_net));
    FIFO FIFO_inst (.w_ptr({Open_5, Open_6, Open_7, w_ptr[0]}), .i_fpga_clock_c(i_fpga_clock_c), 
         .n3824(n3824), .n11(n11), .r_ptr({Open_8, Open_9, Open_10, 
         r_ptr[0]}), .n11_adj_4(n11_adj_727), .o_RX_Data({o_RX_Data}), 
         .GND_net(GND_net), .n1281(n1281), .fpga_resetn(fpga_resetn), 
         .empty_N_383(empty_N_383), .FIFO_valid(FIFO_valid), .\data_count[2] (data_count[2]), 
         .\r_Total_Count[4] (r_Total_Count[4]), .r_RX_Valid(r_RX_Valid), 
         .n4(n4), .fifo_N_385(fifo_N_385), .i_fpga_clock_c_enable_19(i_fpga_clock_c_enable_19), 
         .i_fpga_clock_c_enable_67(i_fpga_clock_c_enable_67), .\data_count[0] (data_count[0]), 
         .n3514(n3514), .\data_count[1] (data_count[1])) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(93[7] 104[3])
    GSR GSR_INST (.GSR(fpga_resetn));
    resetn RESET (.i_fpga_clock_c(i_fpga_clock_c), .fpga_resetn(fpga_resetn)) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(32[8] 35[6])
    VLO i1 (.Z(GND_net));
    SPI_Controller SPI_inst (.i_fpga_clock_c(i_fpga_clock_c), .n3824(n3824), 
            .GND_net(GND_net), .\r_Total_Count[4] (r_Total_Count[4]), .o_Master_Trig_c(o_Master_Trig_c), 
            .i_Done_Trig_c(i_Done_Trig_c), .FIFO_ready(FIFO_ready), .n4(n4), 
            .fpga_resetn(fpga_resetn), .o_SPI_CS_n_N_256(o_SPI_CS_n_N_256), 
            .r_State_2__N_223(r_State_2__N_223), .o_SPI_CS_n_out(o_SPI_CS_n_out), 
            .n1588(n1588), .o_RX_Data({o_RX_Data}), .i_SPI_MISO_c(i_SPI_MISO_c), 
            .w_SPI_Clk(w_SPI_Clk), .w_SPI_MOSI(w_SPI_MOSI), .r_RX_Valid(r_RX_Valid), 
            .\w_ptr[0] (w_ptr[0]), .fifo_N_385(fifo_N_385), .n11(n11), 
            .empty_N_383(empty_N_383), .i_fpga_clock_c_enable_19(i_fpga_clock_c_enable_19), 
            .\r_ptr[0] (r_ptr[0]), .n11_adj_3(n11_adj_727), .i_fpga_clock_c_enable_67(i_fpga_clock_c_enable_67)) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(76[20] 91[6])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module fsk_gen
//

module fsk_gen (data_count, i_fpga_clock_c, n3824, n1281, n3514, F2Q3_c, 
            fpga_resetn, FIFO_ready, F1Q1_c, FIFO_valid, \data_count[2] , 
            \data_count[1] , GND_net, VCC_net, \count_1[0] , \count[0] , 
            F2Q2_c, PDM_Signal_1_N_657, F1Q4_c, PDM_Signal_N_653, \count[6] , 
            \count[5] , \count[3] , \count[2] , \count[4] , \count[1] , 
            \count_1[6] , \count_1[5] , \count_1[3] , \count_1[2] , 
            \count_1[4] , \count_1[1] ) /* synthesis syn_module_defined=1 */ ;
    output [5:0]data_count;
    input i_fpga_clock_c;
    input n3824;
    input n1281;
    input n3514;
    output F2Q3_c;
    input fpga_resetn;
    output FIFO_ready;
    output F1Q1_c;
    input FIFO_valid;
    output \data_count[2] ;
    output \data_count[1] ;
    input GND_net;
    input VCC_net;
    output \count_1[0] ;
    output \count[0] ;
    output F2Q2_c;
    input PDM_Signal_1_N_657;
    output F1Q4_c;
    input PDM_Signal_N_653;
    output \count[6] ;
    output \count[5] ;
    output \count[3] ;
    output \count[2] ;
    output \count[4] ;
    output \count[1] ;
    output \count_1[6] ;
    output \count_1[5] ;
    output \count_1[3] ;
    output \count_1[2] ;
    output \count_1[4] ;
    output \count_1[1] ;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    wire [0:0]s_state;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(41[11:18])
    wire [5:0]n160;
    wire [31:0]count_cycles;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(38[12:24])
    wire [31:0]n167;
    
    wire n919, s_state_0__N_430;
    wire [31:0]n50;
    
    wire n3784, F2Q3_N_484, i_fpga_clock_c_enable_6, n3115, i_fpga_clock_c_enable_8, 
        n3817, n2048, i_fpga_clock_c_enable_12, n10, n58, n62, n57, 
        n2378, n3779;
    wire [5:0]data_count_c;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(37[11:21])
    
    wire n2981, n2982, n3011, n3012, n2980, n3010, n3009, n3008, 
        n3007, n3006, n3005, n2988, n2989, n2987, n3004, n2986, 
        n2979, n3020, n2985, n2993, n3003, n3019, n2992, n61_adj_722, 
        n3017, n3016, n2984, n2991, n2983, n3015, n3014, n3013, 
        n2990, n3145, n14, n17, n30, n26, n18, n28, n22, n14_adj_725, 
        n10_adj_726;
    
    FD1P3IX data_count__i0 (.D(n160[0]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(data_count[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i0.GSR = "DISABLED";
    FD1P3IX count_cycles__i0 (.D(n167[0]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i0.GSR = "DISABLED";
    ORCALUT4 i1857_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[2]), 
            .D(n3784), .Z(n167[2])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1857_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut (.A(s_state[0]), .B(n1281), .C(n3514), .Z(F2Q3_N_484)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3IX PDM_Signal_Valid_2_46 (.D(F2Q3_N_484), .SP(i_fpga_clock_c_enable_6), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(F2Q3_c)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam PDM_Signal_Valid_2_46.GSR = "DISABLED";
    ORCALUT4 i1858_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[1]), 
            .D(n3784), .Z(n167[1])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1858_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_2_lut_2_lut_3_lut_4_lut (.A(s_state[0]), .B(fpga_resetn), 
            .C(n1281), .D(n3514), .Z(n3115)) /* synthesis lut_function=(!(((C (D))+!B)+!A)) */ ;
    defparam i2_2_lut_2_lut_3_lut_4_lut.init = 16'h0888;
    FD1P3IX ready_47 (.D(n3817), .SP(i_fpga_clock_c_enable_8), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(FIFO_ready)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam ready_47.GSR = "DISABLED";
    ORCALUT4 i2617_2_lut_rep_76 (.A(s_state[0]), .B(fpga_resetn), .Z(i_fpga_clock_c_enable_8)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i2617_2_lut_rep_76.init = 16'h7777;
    FD1S3IX s_state_0__50 (.D(n2048), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(s_state[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam s_state_0__50.GSR = "DISABLED";
    FD1P3AX PDM_Signal_Valid_1_45 (.D(n3115), .SP(i_fpga_clock_c_enable_12), 
            .CK(i_fpga_clock_c), .Q(F1Q1_c)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam PDM_Signal_Valid_1_45.GSR = "DISABLED";
    ORCALUT4 i2606_2_lut_rep_78 (.A(FIFO_valid), .B(FIFO_ready), .Z(n3817)) /* synthesis lut_function=(!(A (B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(81[22] 86[20])
    defparam i2606_2_lut_rep_78.init = 16'h7777;
    ORCALUT4 i15_3_lut_rep_42_4_lut (.A(FIFO_valid), .B(FIFO_ready), .C(s_state[0]), 
            .D(n3784), .Z(i_fpga_clock_c_enable_6)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(81[22] 86[20])
    defparam i15_3_lut_rep_42_4_lut.init = 16'h07f7;
    ORCALUT4 i2_2_lut (.A(count_cycles[12]), .B(count_cycles[17]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i2_2_lut.init = 16'heeee;
    ORCALUT4 i2649_2_lut_4_lut (.A(n3817), .B(n3784), .C(s_state[0]), 
            .D(fpga_resetn), .Z(i_fpga_clock_c_enable_12)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (D)+!B !(C+!(D))))) */ ;
    defparam i2649_2_lut_4_lut.init = 16'h3aff;
    ORCALUT4 i2_3_lut_rep_45 (.A(n58), .B(n62), .C(n57), .Z(n3784)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_45.init = 16'hfefe;
    ORCALUT4 i1634_1_lut_2_lut_4_lut (.A(n58), .B(n62), .C(n57), .D(s_state_0__N_430), 
            .Z(n2378)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;
    defparam i1634_1_lut_2_lut_4_lut.init = 16'h01ff;
    ORCALUT4 i390_2_lut_rep_40_4_lut (.A(n58), .B(n62), .C(n57), .D(s_state_0__N_430), 
            .Z(n3779)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i390_2_lut_rep_40_4_lut.init = 16'hfe00;
    ORCALUT4 i1817_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[30]), 
            .D(n3784), .Z(n167[30])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1817_2_lut_3_lut_4_lut.init = 16'h2000;
    FD1P3IX count_cycles__i31 (.D(n167[31]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[31])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i31.GSR = "DISABLED";
    FD1P3IX count_cycles__i30 (.D(n167[30]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[30])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i30.GSR = "DISABLED";
    FD1P3IX count_cycles__i29 (.D(n167[29]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[29])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i29.GSR = "DISABLED";
    FD1P3IX count_cycles__i28 (.D(n167[28]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[28])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i28.GSR = "DISABLED";
    FD1P3IX count_cycles__i27 (.D(n167[27]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[27])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i27.GSR = "DISABLED";
    FD1P3IX count_cycles__i26 (.D(n167[26]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[26])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i26.GSR = "DISABLED";
    FD1P3IX count_cycles__i25 (.D(n167[25]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[25])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i25.GSR = "DISABLED";
    FD1P3IX count_cycles__i24 (.D(n167[24]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[24])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i24.GSR = "DISABLED";
    FD1P3IX count_cycles__i23 (.D(n167[23]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[23])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i23.GSR = "DISABLED";
    FD1P3IX count_cycles__i22 (.D(n167[22]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[22])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i22.GSR = "DISABLED";
    FD1P3IX count_cycles__i21 (.D(n167[21]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[21])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i21.GSR = "DISABLED";
    FD1P3IX count_cycles__i20 (.D(n167[20]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[20])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i20.GSR = "DISABLED";
    FD1P3IX count_cycles__i19 (.D(n167[19]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[19])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i19.GSR = "DISABLED";
    FD1P3IX count_cycles__i18 (.D(n167[18]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[18])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i18.GSR = "DISABLED";
    FD1P3IX count_cycles__i17 (.D(n167[17]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[17])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i17.GSR = "DISABLED";
    FD1P3IX count_cycles__i16 (.D(n167[16]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[16])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i16.GSR = "DISABLED";
    FD1P3IX count_cycles__i15 (.D(n167[15]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i15.GSR = "DISABLED";
    FD1P3IX count_cycles__i14 (.D(n167[14]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i14.GSR = "DISABLED";
    FD1P3IX count_cycles__i13 (.D(n167[13]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i13.GSR = "DISABLED";
    FD1P3IX count_cycles__i12 (.D(n167[12]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i12.GSR = "DISABLED";
    FD1P3IX count_cycles__i11 (.D(n167[11]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i11.GSR = "DISABLED";
    FD1P3IX count_cycles__i10 (.D(n167[10]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i10.GSR = "DISABLED";
    FD1P3IX count_cycles__i9 (.D(n167[9]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i9.GSR = "DISABLED";
    FD1P3IX count_cycles__i8 (.D(n167[8]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i8.GSR = "DISABLED";
    FD1P3IX count_cycles__i7 (.D(n167[7]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i7.GSR = "DISABLED";
    FD1P3IX count_cycles__i6 (.D(n167[6]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i6.GSR = "DISABLED";
    FD1P3IX count_cycles__i5 (.D(n167[5]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i5.GSR = "DISABLED";
    FD1P3IX count_cycles__i4 (.D(n167[4]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i4.GSR = "DISABLED";
    FD1P3IX count_cycles__i3 (.D(n167[3]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i3.GSR = "DISABLED";
    FD1P3IX count_cycles__i2 (.D(n167[2]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i2.GSR = "DISABLED";
    FD1P3IX count_cycles__i1 (.D(n167[1]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(count_cycles[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam count_cycles__i1.GSR = "DISABLED";
    ORCALUT4 i1836_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[15]), 
            .D(n3784), .Z(n167[15])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1836_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1816_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[31]), 
            .D(n3784), .Z(n167[31])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1816_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1704_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n3784), 
            .D(n50[0]), .Z(n167[0])) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1704_3_lut_4_lut.init = 16'h2f0f;
    ORCALUT4 i1820_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[29]), 
            .D(n3784), .Z(n167[29])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1820_2_lut_3_lut_4_lut.init = 16'h2000;
    FD1P3IX data_count__i5 (.D(n160[5]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(data_count_c[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i5.GSR = "DISABLED";
    FD1P3IX data_count__i4 (.D(n160[4]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(data_count_c[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i4.GSR = "DISABLED";
    FD1P3IX data_count__i3 (.D(n160[3]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(data_count_c[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i3.GSR = "DISABLED";
    FD1P3IX data_count__i2 (.D(n160[2]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(\data_count[2] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i2.GSR = "DISABLED";
    FD1P3IX data_count__i1 (.D(n160[1]), .SP(s_state[0]), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(\data_count[1] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=2, LSE_RCOL=3, LSE_LLINE=110, LSE_RLINE=121 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam data_count__i1.GSR = "DISABLED";
    ORCALUT4 i1821_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[28]), 
            .D(n3784), .Z(n167[28])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1821_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2 add_15_8 (.A0(count_cycles[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(count_cycles[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2981), .COUT1(n2982), .S0(n50[6]), .S1(n50[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_8.INIT0 = 16'h5aaa;
    defparam add_15_8.INIT1 = 16'h5aaa;
    defparam add_15_8.INJECT1_0 = "NO";
    defparam add_15_8.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_20 (.A0(count_cycles[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[19]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3011), .COUT1(n3012));
    defparam sub_318_add_2_20.INIT0 = 16'hf555;
    defparam sub_318_add_2_20.INIT1 = 16'hf555;
    defparam sub_318_add_2_20.INJECT1_0 = "NO";
    defparam sub_318_add_2_20.INJECT1_1 = "NO";
    CCU2 add_15_6 (.A0(count_cycles[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(count_cycles[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2980), .COUT1(n2981), .S0(n50[4]), .S1(n50[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_6.INIT0 = 16'h5aaa;
    defparam add_15_6.INIT1 = 16'h5aaa;
    defparam add_15_6.INJECT1_0 = "NO";
    defparam add_15_6.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_18 (.A0(count_cycles[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3010), .COUT1(n3011));
    defparam sub_318_add_2_18.INIT0 = 16'hf555;
    defparam sub_318_add_2_18.INIT1 = 16'hf555;
    defparam sub_318_add_2_18.INJECT1_0 = "NO";
    defparam sub_318_add_2_18.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_16 (.A0(count_cycles[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3009), .COUT1(n3010));
    defparam sub_318_add_2_16.INIT0 = 16'h0aaa;
    defparam sub_318_add_2_16.INIT1 = 16'hf555;
    defparam sub_318_add_2_16.INJECT1_0 = "NO";
    defparam sub_318_add_2_16.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_14 (.A0(count_cycles[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3008), .COUT1(n3009));
    defparam sub_318_add_2_14.INIT0 = 16'hf555;
    defparam sub_318_add_2_14.INIT1 = 16'h0aaa;
    defparam sub_318_add_2_14.INJECT1_0 = "NO";
    defparam sub_318_add_2_14.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_12 (.A0(count_cycles[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3007), .COUT1(n3008));
    defparam sub_318_add_2_12.INIT0 = 16'h0aaa;
    defparam sub_318_add_2_12.INIT1 = 16'hf555;
    defparam sub_318_add_2_12.INJECT1_0 = "NO";
    defparam sub_318_add_2_12.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_10 (.A0(count_cycles[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3006), .COUT1(n3007));
    defparam sub_318_add_2_10.INIT0 = 16'h0aaa;
    defparam sub_318_add_2_10.INIT1 = 16'hf555;
    defparam sub_318_add_2_10.INJECT1_0 = "NO";
    defparam sub_318_add_2_10.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_8 (.A0(count_cycles[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3005), .COUT1(n3006));
    defparam sub_318_add_2_8.INIT0 = 16'hf555;
    defparam sub_318_add_2_8.INIT1 = 16'h0aaa;
    defparam sub_318_add_2_8.INJECT1_0 = "NO";
    defparam sub_318_add_2_8.INJECT1_1 = "NO";
    CCU2 add_15_22 (.A0(count_cycles[20]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[21]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2988), .COUT1(n2989), .S0(n50[20]), .S1(n50[21]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_22.INIT0 = 16'h5aaa;
    defparam add_15_22.INIT1 = 16'h5aaa;
    defparam add_15_22.INJECT1_0 = "NO";
    defparam add_15_22.INJECT1_1 = "NO";
    CCU2 add_15_20 (.A0(count_cycles[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[19]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2987), .COUT1(n2988), .S0(n50[18]), .S1(n50[19]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_20.INIT0 = 16'h5aaa;
    defparam add_15_20.INIT1 = 16'h5aaa;
    defparam add_15_20.INJECT1_0 = "NO";
    defparam add_15_20.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_6 (.A0(count_cycles[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3004), .COUT1(n3005));
    defparam sub_318_add_2_6.INIT0 = 16'h0aaa;
    defparam sub_318_add_2_6.INIT1 = 16'h0aaa;
    defparam sub_318_add_2_6.INJECT1_0 = "NO";
    defparam sub_318_add_2_6.INJECT1_1 = "NO";
    CCU2 add_15_18 (.A0(count_cycles[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[17]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2986), .COUT1(n2987), .S0(n50[16]), .S1(n50[17]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_18.INIT0 = 16'h5aaa;
    defparam add_15_18.INIT1 = 16'h5aaa;
    defparam add_15_18.INJECT1_0 = "NO";
    defparam add_15_18.INJECT1_1 = "NO";
    CCU2 add_15_4 (.A0(count_cycles[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(count_cycles[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2979), .COUT1(n2980), .S0(n50[2]), .S1(n50[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_4.INIT0 = 16'h5aaa;
    defparam add_15_4.INIT1 = 16'h5aaa;
    defparam add_15_4.INJECT1_0 = "NO";
    defparam add_15_4.INJECT1_1 = "NO";
    ORCALUT4 i1822_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[27]), 
            .D(n3784), .Z(n167[27])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1822_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2 add_15_2 (.A0(count_cycles[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(count_cycles[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n2979), .S0(n50[0]), .S1(n50[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_2.INIT0 = 16'h5555;
    defparam add_15_2.INIT1 = 16'h5aaa;
    defparam add_15_2.INJECT1_0 = "NO";
    defparam add_15_2.INJECT1_1 = "NO";
    CCU2 add_309_6 (.A0(data_count_c[4]), .B0(n3779), .C0(GND_net), .D0(GND_net), 
         .A1(data_count_c[5]), .B1(n3779), .C1(GND_net), .D1(GND_net), 
         .CIN(n3020), .S0(n160[4]), .S1(n160[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(103[22] 117[20])
    defparam add_309_6.INIT0 = 16'hd222;
    defparam add_309_6.INIT1 = 16'hd222;
    defparam add_309_6.INJECT1_0 = "NO";
    defparam add_309_6.INJECT1_1 = "NO";
    CCU2 add_15_16 (.A0(count_cycles[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[15]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2985), .COUT1(n2986), .S0(n50[14]), .S1(n50[15]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_16.INIT0 = 16'h5aaa;
    defparam add_15_16.INIT1 = 16'h5aaa;
    defparam add_15_16.INJECT1_0 = "NO";
    defparam add_15_16.INJECT1_1 = "NO";
    CCU2 add_15_32 (.A0(count_cycles[30]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[31]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2993), .S0(n50[30]), .S1(n50[31]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_32.INIT0 = 16'h5aaa;
    defparam add_15_32.INIT1 = 16'h5aaa;
    defparam add_15_32.INJECT1_0 = "NO";
    defparam add_15_32.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_4 (.A0(count_cycles[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3003), .COUT1(n3004));
    defparam sub_318_add_2_4.INIT0 = 16'hf555;
    defparam sub_318_add_2_4.INIT1 = 16'h0aaa;
    defparam sub_318_add_2_4.INJECT1_0 = "NO";
    defparam sub_318_add_2_4.INJECT1_1 = "NO";
    CCU2 add_309_4 (.A0(\data_count[2] ), .B0(n3779), .C0(GND_net), .D0(GND_net), 
         .A1(data_count_c[3]), .B1(n3779), .C1(GND_net), .D1(GND_net), 
         .CIN(n3019), .COUT1(n3020), .S0(n160[2]), .S1(n160[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(103[22] 117[20])
    defparam add_309_4.INIT0 = 16'hd222;
    defparam add_309_4.INIT1 = 16'hd222;
    defparam add_309_4.INJECT1_0 = "NO";
    defparam add_309_4.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_2 (.A0(count_cycles[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(VCC_net), .COUT1(n3003));
    defparam sub_318_add_2_2.INIT0 = 16'h0aaa;
    defparam sub_318_add_2_2.INIT1 = 16'hf555;
    defparam sub_318_add_2_2.INJECT1_0 = "NO";
    defparam sub_318_add_2_2.INJECT1_1 = "NO";
    CCU2 add_15_30 (.A0(count_cycles[28]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[29]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2992), .COUT1(n2993), .S0(n50[28]), .S1(n50[29]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_30.INIT0 = 16'h5aaa;
    defparam add_15_30.INIT1 = 16'h5aaa;
    defparam add_15_30.INJECT1_0 = "NO";
    defparam add_15_30.INJECT1_1 = "NO";
    CCU2 add_309_2 (.A0(n61_adj_722), .B0(n62), .C0(data_count[0]), .D0(n2378), 
         .A1(\data_count[1] ), .B1(n3779), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n3019), .S0(n160[0]), .S1(n160[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(103[22] 117[20])
    defparam add_309_2.INIT0 = 16'he111;
    defparam add_309_2.INIT1 = 16'hd222;
    defparam add_309_2.INJECT1_0 = "NO";
    defparam add_309_2.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_32 (.A0(count_cycles[30]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[31]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3017), .COUT1(n919));
    defparam sub_318_add_2_32.INIT0 = 16'hf555;
    defparam sub_318_add_2_32.INIT1 = 16'hf555;
    defparam sub_318_add_2_32.INJECT1_0 = "NO";
    defparam sub_318_add_2_32.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_30 (.A0(count_cycles[28]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[29]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3016), .COUT1(n3017));
    defparam sub_318_add_2_30.INIT0 = 16'hf555;
    defparam sub_318_add_2_30.INIT1 = 16'hf555;
    defparam sub_318_add_2_30.INJECT1_0 = "NO";
    defparam sub_318_add_2_30.INJECT1_1 = "NO";
    CCU2 add_15_14 (.A0(count_cycles[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[13]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2984), .COUT1(n2985), .S0(n50[12]), .S1(n50[13]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_14.INIT0 = 16'h5aaa;
    defparam add_15_14.INIT1 = 16'h5aaa;
    defparam add_15_14.INJECT1_0 = "NO";
    defparam add_15_14.INJECT1_1 = "NO";
    CCU2 add_15_28 (.A0(count_cycles[26]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[27]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2991), .COUT1(n2992), .S0(n50[26]), .S1(n50[27]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_28.INIT0 = 16'h5aaa;
    defparam add_15_28.INIT1 = 16'h5aaa;
    defparam add_15_28.INJECT1_0 = "NO";
    defparam add_15_28.INJECT1_1 = "NO";
    ORCALUT4 i1301_4_lut (.A(FIFO_valid), .B(n3779), .C(s_state[0]), .D(FIFO_ready), 
            .Z(n2048)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam i1301_4_lut.init = 16'h3a30;
    CCU2 add_15_12 (.A0(count_cycles[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[11]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2983), .COUT1(n2984), .S0(n50[10]), .S1(n50[11]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_12.INIT0 = 16'h5aaa;
    defparam add_15_12.INIT1 = 16'h5aaa;
    defparam add_15_12.INJECT1_0 = "NO";
    defparam add_15_12.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_28 (.A0(count_cycles[26]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[27]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3015), .COUT1(n3016));
    defparam sub_318_add_2_28.INIT0 = 16'hf555;
    defparam sub_318_add_2_28.INIT1 = 16'hf555;
    defparam sub_318_add_2_28.INJECT1_0 = "NO";
    defparam sub_318_add_2_28.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_26 (.A0(count_cycles[24]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[25]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3014), .COUT1(n3015));
    defparam sub_318_add_2_26.INIT0 = 16'hf555;
    defparam sub_318_add_2_26.INIT1 = 16'hf555;
    defparam sub_318_add_2_26.INJECT1_0 = "NO";
    defparam sub_318_add_2_26.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_24 (.A0(count_cycles[22]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[23]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3013), .COUT1(n3014));
    defparam sub_318_add_2_24.INIT0 = 16'hf555;
    defparam sub_318_add_2_24.INIT1 = 16'hf555;
    defparam sub_318_add_2_24.INJECT1_0 = "NO";
    defparam sub_318_add_2_24.INJECT1_1 = "NO";
    CCU2 add_15_26 (.A0(count_cycles[24]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[25]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2990), .COUT1(n2991), .S0(n50[24]), .S1(n50[25]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_26.INIT0 = 16'h5aaa;
    defparam add_15_26.INIT1 = 16'h5aaa;
    defparam add_15_26.INJECT1_0 = "NO";
    defparam add_15_26.INJECT1_1 = "NO";
    ORCALUT4 i1823_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[26]), 
            .D(n3784), .Z(n167[26])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1823_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1824_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[25]), 
            .D(n3784), .Z(n167[25])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1824_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1825_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[24]), 
            .D(n3784), .Z(n167[24])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1825_2_lut_3_lut_4_lut.init = 16'h2000;
    CCU2 add_15_10 (.A0(count_cycles[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[9]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2982), .COUT1(n2983), .S0(n50[8]), .S1(n50[9]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_10.INIT0 = 16'h5aaa;
    defparam add_15_10.INIT1 = 16'h5aaa;
    defparam add_15_10.INJECT1_0 = "NO";
    defparam add_15_10.INJECT1_1 = "NO";
    CCU2 add_15_24 (.A0(count_cycles[22]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[23]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2989), .COUT1(n2990), .S0(n50[22]), .S1(n50[23]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(105[41:57])
    defparam add_15_24.INIT0 = 16'h5aaa;
    defparam add_15_24.INIT1 = 16'h5aaa;
    defparam add_15_24.INJECT1_0 = "NO";
    defparam add_15_24.INJECT1_1 = "NO";
    CCU2 sub_318_add_2_22 (.A0(count_cycles[20]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[21]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3012), .COUT1(n3013));
    defparam sub_318_add_2_22.INIT0 = 16'hf555;
    defparam sub_318_add_2_22.INIT1 = 16'hf555;
    defparam sub_318_add_2_22.INJECT1_0 = "NO";
    defparam sub_318_add_2_22.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut (.A(data_count_c[5]), .B(data_count_c[4]), .C(n3145), 
            .D(data_count_c[3]), .Z(s_state_0__N_430)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i2_4_lut.init = 16'hfeee;
    ORCALUT4 i29_2_lut (.A(n57), .B(n58), .Z(n61_adj_722)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i29_2_lut.init = 16'heeee;
    ORCALUT4 i1826_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[23]), 
            .D(n3784), .Z(n167[23])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1826_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_3_lut (.A(\data_count[1] ), .B(\data_count[2] ), .C(data_count[0]), 
            .Z(n3145)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(63[10] 122[6])
    defparam i2_3_lut.init = 16'hfefe;
    ORCALUT4 i1827_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[22]), 
            .D(n3784), .Z(n167[22])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1827_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i7_4_lut (.A(count_cycles[18]), .B(n14), .C(n10), .D(count_cycles[9]), 
            .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i7_4_lut.init = 16'hfffe;
    ORCALUT4 i1828_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[21]), 
            .D(n3784), .Z(n167[21])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1828_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1829_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[20]), 
            .D(n3784), .Z(n167[20])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1829_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1835_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[16]), 
            .D(n3784), .Z(n167[16])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1835_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i6_4_lut (.A(count_cycles[5]), .B(count_cycles[10]), .C(count_cycles[6]), 
            .D(count_cycles[3]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i6_4_lut.init = 16'hfffe;
    ORCALUT4 i1837_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[14]), 
            .D(n3784), .Z(n167[14])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1837_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1832_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[17]), 
            .D(n3784), .Z(n167[17])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1832_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1831_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[18]), 
            .D(n3784), .Z(n167[18])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1831_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1838_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[13]), 
            .D(n3784), .Z(n167[13])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1838_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1839_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[12]), 
            .D(n3784), .Z(n167[12])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1839_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1840_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[11]), 
            .D(n3784), .Z(n167[11])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1840_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1849_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[6]), 
            .D(n3784), .Z(n167[6])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1849_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i15_4_lut (.A(n17), .B(n30), .C(n26), .D(n18), .Z(n62)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i15_4_lut.init = 16'hfffe;
    ORCALUT4 i1852_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[5]), 
            .D(n3784), .Z(n167[5])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1852_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1830_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[19]), 
            .D(n3784), .Z(n167[19])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1830_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut (.A(count_cycles[28]), .B(count_cycles[11]), .Z(n17)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 i12_4_lut (.A(count_cycles[23]), .B(count_cycles[13]), .C(count_cycles[29]), 
            .D(count_cycles[31]), .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i12_4_lut.init = 16'hfffe;
    ORCALUT4 i6_2_lut (.A(count_cycles[22]), .B(count_cycles[15]), .Z(n22)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i6_2_lut.init = 16'heeee;
    ORCALUT4 i7_4_lut_adj_79 (.A(count_cycles[0]), .B(n14_adj_725), .C(n10_adj_726), 
            .D(count_cycles[2]), .Z(n57)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i7_4_lut_adj_79.init = 16'hfffe;
    ORCALUT4 i6_4_lut_adj_80 (.A(count_cycles[24]), .B(count_cycles[4]), 
            .C(count_cycles[1]), .D(count_cycles[20]), .Z(n14_adj_725)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i6_4_lut_adj_80.init = 16'hfffe;
    ORCALUT4 i2_2_lut_adj_81 (.A(count_cycles[8]), .B(count_cycles[16]), 
            .Z(n10_adj_726)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i2_2_lut_adj_81.init = 16'heeee;
    ORCALUT4 i1841_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[10]), 
            .D(n3784), .Z(n167[10])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1841_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i14_4_lut (.A(count_cycles[14]), .B(n28), .C(n22), .D(count_cycles[19]), 
            .Z(n30)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i14_4_lut.init = 16'hfffe;
    ORCALUT4 i10_4_lut (.A(count_cycles[26]), .B(count_cycles[30]), .C(count_cycles[27]), 
            .D(count_cycles[7]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i10_4_lut.init = 16'hfffe;
    ORCALUT4 i1846_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[7]), 
            .D(n3784), .Z(n167[7])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1846_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i2_2_lut_adj_82 (.A(count_cycles[21]), .B(count_cycles[25]), 
            .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(90[21:38])
    defparam i2_2_lut_adj_82.init = 16'heeee;
    ORCALUT4 i1845_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[8]), 
            .D(n3784), .Z(n167[8])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1845_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1842_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[9]), 
            .D(n3784), .Z(n167[9])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1842_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1853_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[4]), 
            .D(n3784), .Z(n167[4])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1853_2_lut_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1854_2_lut_3_lut_4_lut (.A(n919), .B(s_state_0__N_430), .C(n50[3]), 
            .D(n3784), .Z(n167[3])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(114[26] 116[24])
    defparam i1854_2_lut_3_lut_4_lut.init = 16'h2000;
    \PDM_Generator(clk_div=104,clk_div_1=96)  dut_PDM1 (.count_1({Open_11, 
            Open_12, Open_13, Open_14, Open_15, Open_16, Open_17, 
            \count_1[0] }), .i_fpga_clock_c(i_fpga_clock_c), .count({Open_18, 
            Open_19, Open_20, Open_21, Open_22, Open_23, Open_24, 
            \count[0] }), .F2Q2_c(F2Q2_c), .PDM_Signal_1_N_657(PDM_Signal_1_N_657), 
            .F1Q4_c(F1Q4_c), .PDM_Signal_N_653(PDM_Signal_N_653), .F1Q1_c(F1Q1_c), 
            .\count[6] (\count[6] ), .\count[5] (\count[5] ), .\count[3] (\count[3] ), 
            .\count[2] (\count[2] ), .\count[4] (\count[4] ), .\count[1] (\count[1] ), 
            .F2Q3_c(F2Q3_c), .\count_1[6] (\count_1[6] ), .\count_1[5] (\count_1[5] ), 
            .\count_1[3] (\count_1[3] ), .\count_1[2] (\count_1[2] ), .\count_1[4] (\count_1[4] ), 
            .\count_1[1] (\count_1[1] ), .GND_net(GND_net)) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(44[50] 50[4])
    
endmodule
//
// Verilog Description of module \PDM_Generator(clk_div=104,clk_div_1=96) 
//

module \PDM_Generator(clk_div=104,clk_div_1=96)  (count_1, i_fpga_clock_c, 
            count, F2Q2_c, PDM_Signal_1_N_657, F1Q4_c, PDM_Signal_N_653, 
            F1Q1_c, \count[6] , \count[5] , \count[3] , \count[2] , 
            \count[4] , \count[1] , F2Q3_c, \count_1[6] , \count_1[5] , 
            \count_1[3] , \count_1[2] , \count_1[4] , \count_1[1] , 
            GND_net) /* synthesis syn_module_defined=1 */ ;
    output [7:0]count_1;
    input i_fpga_clock_c;
    output [7:0]count;
    output F2Q2_c;
    input PDM_Signal_1_N_657;
    output F1Q4_c;
    input PDM_Signal_N_653;
    input F1Q1_c;
    output \count[6] ;
    output \count[5] ;
    output \count[3] ;
    output \count[2] ;
    output \count[4] ;
    output \count[1] ;
    input F2Q3_c;
    output \count_1[6] ;
    output \count_1[5] ;
    output \count_1[3] ;
    output \count_1[2] ;
    output \count_1[4] ;
    output \count_1[1] ;
    input GND_net;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    
    wire i_fpga_clock_c_enable_64, valid_1_N_618;
    wire [7:0]n249;
    
    wire i_fpga_clock_c_enable_33, valid_N_576;
    wire [7:0]n39;
    wire [31:0]count_cycles;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(31[12:24])
    wire [31:0]n133;
    
    wire PDM_Signal_N_654, n45;
    wire [7:0]n510;
    wire [31:0]n1;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(59[16:30])
    wire [31:0]n133_adj_720;
    wire [7:0]count_c;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    
    wire n3147, n32, n45_adj_686;
    wire [7:0]n520;
    
    wire PDM_Signal_1_N_658;
    wire [7:0]n2;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    
    wire n3146, n32_adj_688, n3093, n3092, n3091, n3090, n3089, 
        n3088, n3087, n3086, n3085, n3084, n3083, n2999, n3000, 
        n3032, n2997, n2996, n2995, n3001, n3082, n3081, n3080, 
        n3079, n3078, n3077, n3076, n3075, n3074, n3073, n3072, 
        n3071, n3070, n3069, n3068, n3067, n3066, n3065, n3064, 
        n3062, n3061, n3060, n3059, n3058, n3057, n3056, n3055, 
        n3054, n3053, n3052, n3051, n3050, n3049, n3048, n3046, 
        n3045, n3044, n3043, n3042, n3041, n3040, n3039, n3038, 
        n3037, n3036, n3035, n3034, n3033;
    
    FD1P3IX count_1__i0 (.D(n249[0]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(count_1[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i0.GSR = "DISABLED";
    FD1P3IX count__i0 (.D(n39[0]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(count[0])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i0.GSR = "DISABLED";
    FD1P3IX PDM_Signal_1_40 (.D(PDM_Signal_1_N_657), .SP(i_fpga_clock_c_enable_64), 
            .CD(valid_1_N_618), .CK(i_fpga_clock_c), .Q(F2Q2_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam PDM_Signal_1_40.GSR = "DISABLED";
    FD1P3IX PDM_Signal_37 (.D(PDM_Signal_N_653), .SP(i_fpga_clock_c_enable_33), 
            .CD(valid_N_576), .CK(i_fpga_clock_c), .Q(F1Q4_c)) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam PDM_Signal_37.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i0 (.D(n133[0]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i0.GSR = "DISABLED";
    ORCALUT4 i423_2_lut (.A(F1Q1_c), .B(PDM_Signal_N_654), .Z(i_fpga_clock_c_enable_33)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam i423_2_lut.init = 16'hdddd;
    ORCALUT4 valid_I_0_1_lut (.A(F1Q1_c), .Z(valid_N_576)) /* synthesis lut_function=(!(A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(35[13:19])
    defparam valid_I_0_1_lut.init = 16'h5555;
    ORCALUT4 i1_2_lut (.A(n45), .B(n510[0]), .Z(n39[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut.init = 16'h4444;
    FD1S3IX count_cycles_1_398__i0 (.D(n133_adj_720[0]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i0.GSR = "DISABLED";
    ORCALUT4 i57_4_lut (.A(count_c[7]), .B(\count[6] ), .C(\count[5] ), 
            .D(n3147), .Z(n45)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i57_4_lut.init = 16'heaaa;
    ORCALUT4 i3_4_lut (.A(\count[3] ), .B(\count[2] ), .C(\count[4] ), 
            .D(n32), .Z(n3147)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i3_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_60 (.A(\count[1] ), .B(count[0]), .Z(n32)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_60.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_61 (.A(n45_adj_686), .B(n520[7]), .Z(n249[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_61.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_62 (.A(n45_adj_686), .B(n520[6]), .Z(n249[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_62.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_63 (.A(n45_adj_686), .B(n520[5]), .Z(n249[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_63.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_64 (.A(n45_adj_686), .B(n520[4]), .Z(n249[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_64.init = 16'h4444;
    FD1P3IX count__i7 (.D(n39[7]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(count_c[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i7.GSR = "DISABLED";
    FD1P3IX count__i6 (.D(n39[6]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i6.GSR = "DISABLED";
    FD1P3IX count__i5 (.D(n39[5]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i5.GSR = "DISABLED";
    FD1P3IX count__i4 (.D(n39[4]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i4.GSR = "DISABLED";
    FD1P3IX count__i3 (.D(n39[3]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i3.GSR = "DISABLED";
    FD1P3IX count__i2 (.D(n39[2]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i2.GSR = "DISABLED";
    FD1P3IX count__i1 (.D(n39[1]), .SP(i_fpga_clock_c_enable_33), .CD(valid_N_576), 
            .CK(i_fpga_clock_c), .Q(\count[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(34[12] 56[8])
    defparam count__i1.GSR = "DISABLED";
    ORCALUT4 i1_2_lut_adj_65 (.A(n45_adj_686), .B(n520[3]), .Z(n249[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_65.init = 16'h4444;
    ORCALUT4 i429_2_lut (.A(F2Q3_c), .B(PDM_Signal_1_N_658), .Z(i_fpga_clock_c_enable_64)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam i429_2_lut.init = 16'hdddd;
    ORCALUT4 valid_1_I_0_1_lut (.A(F2Q3_c), .Z(valid_1_N_618)) /* synthesis lut_function=(!(A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(61[13:21])
    defparam valid_1_I_0_1_lut.init = 16'h5555;
    ORCALUT4 i1_2_lut_adj_66 (.A(n45_adj_686), .B(n520[2]), .Z(n249[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_66.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_67 (.A(n45_adj_686), .B(n520[1]), .Z(n249[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_67.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_68 (.A(n45_adj_686), .B(n520[0]), .Z(n249[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_68.init = 16'h4444;
    ORCALUT4 i57_4_lut_adj_69 (.A(n2[7]), .B(\count_1[6] ), .C(\count_1[5] ), 
            .D(n3146), .Z(n45_adj_686)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i57_4_lut_adj_69.init = 16'heaaa;
    ORCALUT4 i3_4_lut_adj_70 (.A(\count_1[3] ), .B(\count_1[2] ), .C(\count_1[4] ), 
            .D(n32_adj_688), .Z(n3146)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i3_4_lut_adj_70.init = 16'hfffe;
    ORCALUT4 i1_2_lut_adj_71 (.A(\count_1[1] ), .B(count_1[0]), .Z(n32_adj_688)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(58[15:22])
    defparam i1_2_lut_adj_71.init = 16'h8888;
    CCU2 add_2143_32 (.A0(count_cycles[31]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3093), .S1(PDM_Signal_N_654));
    defparam add_2143_32.INIT0 = 16'h5555;
    defparam add_2143_32.INIT1 = 16'h0000;
    defparam add_2143_32.INJECT1_0 = "NO";
    defparam add_2143_32.INJECT1_1 = "NO";
    FD1P3IX count_1__i7 (.D(n249[7]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(n2[7])) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i7.GSR = "DISABLED";
    CCU2 add_2143_30 (.A0(count_cycles[29]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[30]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3092), .COUT1(n3093));
    defparam add_2143_30.INIT0 = 16'h5555;
    defparam add_2143_30.INIT1 = 16'h5555;
    defparam add_2143_30.INJECT1_0 = "NO";
    defparam add_2143_30.INJECT1_1 = "NO";
    CCU2 add_2143_28 (.A0(count_cycles[27]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[28]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3091), .COUT1(n3092));
    defparam add_2143_28.INIT0 = 16'h5555;
    defparam add_2143_28.INIT1 = 16'h5555;
    defparam add_2143_28.INJECT1_0 = "NO";
    defparam add_2143_28.INJECT1_1 = "NO";
    CCU2 add_2143_26 (.A0(count_cycles[25]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[26]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3090), .COUT1(n3091));
    defparam add_2143_26.INIT0 = 16'h5555;
    defparam add_2143_26.INIT1 = 16'h5555;
    defparam add_2143_26.INJECT1_0 = "NO";
    defparam add_2143_26.INJECT1_1 = "NO";
    CCU2 add_2143_24 (.A0(count_cycles[23]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[24]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3089), .COUT1(n3090));
    defparam add_2143_24.INIT0 = 16'h5555;
    defparam add_2143_24.INIT1 = 16'h5555;
    defparam add_2143_24.INJECT1_0 = "NO";
    defparam add_2143_24.INJECT1_1 = "NO";
    CCU2 add_2143_22 (.A0(count_cycles[21]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[22]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3088), .COUT1(n3089));
    defparam add_2143_22.INIT0 = 16'h5555;
    defparam add_2143_22.INIT1 = 16'h5555;
    defparam add_2143_22.INJECT1_0 = "NO";
    defparam add_2143_22.INJECT1_1 = "NO";
    CCU2 add_2143_20 (.A0(count_cycles[19]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[20]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3087), .COUT1(n3088));
    defparam add_2143_20.INIT0 = 16'h5555;
    defparam add_2143_20.INIT1 = 16'h5555;
    defparam add_2143_20.INJECT1_0 = "NO";
    defparam add_2143_20.INJECT1_1 = "NO";
    CCU2 add_2143_18 (.A0(count_cycles[17]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[18]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3086), .COUT1(n3087));
    defparam add_2143_18.INIT0 = 16'h5555;
    defparam add_2143_18.INIT1 = 16'h5555;
    defparam add_2143_18.INJECT1_0 = "NO";
    defparam add_2143_18.INJECT1_1 = "NO";
    CCU2 add_2143_16 (.A0(count_cycles[15]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[16]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3085), .COUT1(n3086));
    defparam add_2143_16.INIT0 = 16'h5555;
    defparam add_2143_16.INIT1 = 16'h5555;
    defparam add_2143_16.INJECT1_0 = "NO";
    defparam add_2143_16.INJECT1_1 = "NO";
    FD1P3IX count_1__i6 (.D(n249[6]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[6] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i6.GSR = "DISABLED";
    FD1P3IX count_1__i5 (.D(n249[5]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[5] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i5.GSR = "DISABLED";
    FD1P3IX count_1__i4 (.D(n249[4]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[4] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i4.GSR = "DISABLED";
    FD1P3IX count_1__i3 (.D(n249[3]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[3] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i3.GSR = "DISABLED";
    FD1P3IX count_1__i2 (.D(n249[2]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[2] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i2.GSR = "DISABLED";
    FD1P3IX count_1__i1 (.D(n249[1]), .SP(i_fpga_clock_c_enable_64), .CD(valid_1_N_618), 
            .CK(i_fpga_clock_c), .Q(\count_1[1] )) /* synthesis LSE_LINE_FILE_ID=5, LSE_LCOL=50, LSE_RCOL=4, LSE_LLINE=44, LSE_RLINE=50 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(60[12] 82[8])
    defparam count_1__i1.GSR = "DISABLED";
    CCU2 add_2143_14 (.A0(count_cycles[13]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[14]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3084), .COUT1(n3085));
    defparam add_2143_14.INIT0 = 16'h5555;
    defparam add_2143_14.INIT1 = 16'h5555;
    defparam add_2143_14.INJECT1_0 = "NO";
    defparam add_2143_14.INJECT1_1 = "NO";
    CCU2 add_2143_12 (.A0(count_cycles[11]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[12]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3083), .COUT1(n3084));
    defparam add_2143_12.INIT0 = 16'h5555;
    defparam add_2143_12.INIT1 = 16'h5555;
    defparam add_2143_12.INJECT1_0 = "NO";
    defparam add_2143_12.INJECT1_1 = "NO";
    CCU2 add_47_4 (.A0(\count[2] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count[3] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2999), .COUT1(n3000), .S0(n510[2]), .S1(n510[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(43[30:39])
    defparam add_47_4.INIT0 = 16'h5aaa;
    defparam add_47_4.INIT1 = 16'h5aaa;
    defparam add_47_4.INJECT1_0 = "NO";
    defparam add_47_4.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_2 (.A0(count_cycles[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[1]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n3032), .S0(n133[0]), .S1(n133[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_2.INIT0 = 16'h0555;
    defparam count_cycles_397_add_4_2.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_2.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_2.INJECT1_1 = "NO";
    CCU2 add_47_2 (.A0(count[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count[1] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n2999), .S0(n510[0]), .S1(n510[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(43[30:39])
    defparam add_47_2.INIT0 = 16'h5555;
    defparam add_47_2.INIT1 = 16'h5aaa;
    defparam add_47_2.INJECT1_0 = "NO";
    defparam add_47_2.INJECT1_1 = "NO";
    CCU2 add_48_8 (.A0(\count_1[6] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n2[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n2997), 
         .S0(n520[6]), .S1(n520[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(69[32:43])
    defparam add_48_8.INIT0 = 16'h5aaa;
    defparam add_48_8.INIT1 = 16'h5aaa;
    defparam add_48_8.INJECT1_0 = "NO";
    defparam add_48_8.INJECT1_1 = "NO";
    CCU2 add_48_6 (.A0(\count_1[4] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count_1[5] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2996), .COUT1(n2997), .S0(n520[4]), .S1(n520[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(69[32:43])
    defparam add_48_6.INIT0 = 16'h5aaa;
    defparam add_48_6.INIT1 = 16'h5aaa;
    defparam add_48_6.INJECT1_0 = "NO";
    defparam add_48_6.INJECT1_1 = "NO";
    CCU2 add_48_4 (.A0(\count_1[2] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count_1[3] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2995), .COUT1(n2996), .S0(n520[2]), .S1(n520[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(69[32:43])
    defparam add_48_4.INIT0 = 16'h5aaa;
    defparam add_48_4.INIT1 = 16'h5aaa;
    defparam add_48_4.INJECT1_0 = "NO";
    defparam add_48_4.INJECT1_1 = "NO";
    CCU2 add_48_2 (.A0(count_1[0]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count_1[1] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n2995), .S0(n520[0]), .S1(n520[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(69[32:43])
    defparam add_48_2.INIT0 = 16'h5555;
    defparam add_48_2.INIT1 = 16'h5aaa;
    defparam add_48_2.INJECT1_0 = "NO";
    defparam add_48_2.INJECT1_1 = "NO";
    CCU2 add_47_8 (.A0(\count[6] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(count_c[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3001), .S0(n510[6]), .S1(n510[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(43[30:39])
    defparam add_47_8.INIT0 = 16'h5aaa;
    defparam add_47_8.INIT1 = 16'h5aaa;
    defparam add_47_8.INJECT1_0 = "NO";
    defparam add_47_8.INJECT1_1 = "NO";
    CCU2 add_2143_10 (.A0(count_cycles[9]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[10]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3082), .COUT1(n3083));
    defparam add_2143_10.INIT0 = 16'h5555;
    defparam add_2143_10.INIT1 = 16'h5555;
    defparam add_2143_10.INJECT1_0 = "NO";
    defparam add_2143_10.INJECT1_1 = "NO";
    CCU2 add_2143_8 (.A0(count_cycles[7]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[8]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3081), .COUT1(n3082));
    defparam add_2143_8.INIT0 = 16'h5555;
    defparam add_2143_8.INIT1 = 16'h5555;
    defparam add_2143_8.INJECT1_0 = "NO";
    defparam add_2143_8.INJECT1_1 = "NO";
    CCU2 add_2143_6 (.A0(count_cycles[5]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[6]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3080), .COUT1(n3081));
    defparam add_2143_6.INIT0 = 16'h5aaa;
    defparam add_2143_6.INIT1 = 16'h5aaa;
    defparam add_2143_6.INJECT1_0 = "NO";
    defparam add_2143_6.INJECT1_1 = "NO";
    CCU2 add_2143_4 (.A0(count_cycles[3]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[4]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3079), .COUT1(n3080));
    defparam add_2143_4.INIT0 = 16'h5555;
    defparam add_2143_4.INIT1 = 16'h5555;
    defparam add_2143_4.INJECT1_0 = "NO";
    defparam add_2143_4.INJECT1_1 = "NO";
    CCU2 add_2143_2 (.A0(count_cycles[1]), .B0(count_cycles[0]), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[2]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(GND_net), .COUT1(n3079));
    defparam add_2143_2.INIT0 = 16'h5666;
    defparam add_2143_2.INIT1 = 16'h5aaa;
    defparam add_2143_2.INJECT1_0 = "NO";
    defparam add_2143_2.INJECT1_1 = "NO";
    CCU2 add_2144_32 (.A0(n1[31]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3078), 
         .S1(PDM_Signal_1_N_658));
    defparam add_2144_32.INIT0 = 16'h5555;
    defparam add_2144_32.INIT1 = 16'h0000;
    defparam add_2144_32.INJECT1_0 = "NO";
    defparam add_2144_32.INJECT1_1 = "NO";
    CCU2 add_2144_30 (.A0(n1[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3077), 
         .COUT1(n3078));
    defparam add_2144_30.INIT0 = 16'h5555;
    defparam add_2144_30.INIT1 = 16'h5555;
    defparam add_2144_30.INJECT1_0 = "NO";
    defparam add_2144_30.INJECT1_1 = "NO";
    CCU2 add_2144_28 (.A0(n1[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3076), 
         .COUT1(n3077));
    defparam add_2144_28.INIT0 = 16'h5555;
    defparam add_2144_28.INIT1 = 16'h5555;
    defparam add_2144_28.INJECT1_0 = "NO";
    defparam add_2144_28.INJECT1_1 = "NO";
    CCU2 add_2144_26 (.A0(n1[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3075), 
         .COUT1(n3076));
    defparam add_2144_26.INIT0 = 16'h5555;
    defparam add_2144_26.INIT1 = 16'h5555;
    defparam add_2144_26.INJECT1_0 = "NO";
    defparam add_2144_26.INJECT1_1 = "NO";
    CCU2 add_2144_24 (.A0(n1[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3074), 
         .COUT1(n3075));
    defparam add_2144_24.INIT0 = 16'h5555;
    defparam add_2144_24.INIT1 = 16'h5555;
    defparam add_2144_24.INJECT1_0 = "NO";
    defparam add_2144_24.INJECT1_1 = "NO";
    CCU2 add_2144_22 (.A0(n1[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3073), 
         .COUT1(n3074));
    defparam add_2144_22.INIT0 = 16'h5555;
    defparam add_2144_22.INIT1 = 16'h5555;
    defparam add_2144_22.INJECT1_0 = "NO";
    defparam add_2144_22.INJECT1_1 = "NO";
    CCU2 add_2144_20 (.A0(n1[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3072), 
         .COUT1(n3073));
    defparam add_2144_20.INIT0 = 16'h5555;
    defparam add_2144_20.INIT1 = 16'h5555;
    defparam add_2144_20.INJECT1_0 = "NO";
    defparam add_2144_20.INJECT1_1 = "NO";
    CCU2 add_2144_18 (.A0(n1[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3071), 
         .COUT1(n3072));
    defparam add_2144_18.INIT0 = 16'h5555;
    defparam add_2144_18.INIT1 = 16'h5555;
    defparam add_2144_18.INJECT1_0 = "NO";
    defparam add_2144_18.INJECT1_1 = "NO";
    CCU2 add_2144_16 (.A0(n1[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3070), 
         .COUT1(n3071));
    defparam add_2144_16.INIT0 = 16'h5555;
    defparam add_2144_16.INIT1 = 16'h5555;
    defparam add_2144_16.INJECT1_0 = "NO";
    defparam add_2144_16.INJECT1_1 = "NO";
    CCU2 add_2144_14 (.A0(n1[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3069), 
         .COUT1(n3070));
    defparam add_2144_14.INIT0 = 16'h5555;
    defparam add_2144_14.INIT1 = 16'h5555;
    defparam add_2144_14.INJECT1_0 = "NO";
    defparam add_2144_14.INJECT1_1 = "NO";
    CCU2 add_2144_12 (.A0(n1[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3068), 
         .COUT1(n3069));
    defparam add_2144_12.INIT0 = 16'h5555;
    defparam add_2144_12.INIT1 = 16'h5555;
    defparam add_2144_12.INJECT1_0 = "NO";
    defparam add_2144_12.INJECT1_1 = "NO";
    CCU2 add_2144_10 (.A0(n1[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3067), 
         .COUT1(n3068));
    defparam add_2144_10.INIT0 = 16'h5555;
    defparam add_2144_10.INIT1 = 16'h5555;
    defparam add_2144_10.INJECT1_0 = "NO";
    defparam add_2144_10.INJECT1_1 = "NO";
    CCU2 add_2144_8 (.A0(n1[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3066), 
         .COUT1(n3067));
    defparam add_2144_8.INIT0 = 16'h5555;
    defparam add_2144_8.INIT1 = 16'h5555;
    defparam add_2144_8.INJECT1_0 = "NO";
    defparam add_2144_8.INJECT1_1 = "NO";
    CCU2 add_2144_6 (.A0(n1[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3065), 
         .COUT1(n3066));
    defparam add_2144_6.INIT0 = 16'h5555;
    defparam add_2144_6.INIT1 = 16'h5aaa;
    defparam add_2144_6.INJECT1_0 = "NO";
    defparam add_2144_6.INJECT1_1 = "NO";
    CCU2 add_2144_4 (.A0(n1[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(n1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3064), 
         .COUT1(n3065));
    defparam add_2144_4.INIT0 = 16'h5aaa;
    defparam add_2144_4.INIT1 = 16'h5aaa;
    defparam add_2144_4.INJECT1_0 = "NO";
    defparam add_2144_4.INJECT1_1 = "NO";
    CCU2 add_2144_2 (.A0(n1[1]), .B0(n1[0]), .C0(GND_net), .D0(GND_net), 
         .A1(n1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(GND_net), 
         .COUT1(n3064));
    defparam add_2144_2.INIT0 = 16'h5666;
    defparam add_2144_2.INIT1 = 16'h5aaa;
    defparam add_2144_2.INJECT1_0 = "NO";
    defparam add_2144_2.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_32 (.A0(n1[30]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3062), .S0(n133_adj_720[30]), .S1(n133_adj_720[31]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_32.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_32.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_32.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_32.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_30 (.A0(n1[28]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3061), .COUT1(n3062), .S0(n133_adj_720[28]), .S1(n133_adj_720[29]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_30.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_30.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_30.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_30.INJECT1_1 = "NO";
    FD1S3IX count_cycles_397__i1 (.D(n133[1]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i1.GSR = "DISABLED";
    CCU2 count_cycles_1_398_add_4_28 (.A0(n1[26]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3060), .COUT1(n3061), .S0(n133_adj_720[26]), .S1(n133_adj_720[27]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_28.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_28.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_28.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_28.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_26 (.A0(n1[24]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3059), .COUT1(n3060), .S0(n133_adj_720[24]), .S1(n133_adj_720[25]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_26.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_26.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_26.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_26.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_24 (.A0(n1[22]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3058), .COUT1(n3059), .S0(n133_adj_720[22]), .S1(n133_adj_720[23]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_24.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_24.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_24.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_24.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_22 (.A0(n1[20]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3057), .COUT1(n3058), .S0(n133_adj_720[20]), .S1(n133_adj_720[21]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_22.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_22.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_22.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_22.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_20 (.A0(n1[18]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3056), .COUT1(n3057), .S0(n133_adj_720[18]), .S1(n133_adj_720[19]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_20.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_20.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_20.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_20.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_18 (.A0(n1[16]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3055), .COUT1(n3056), .S0(n133_adj_720[16]), .S1(n133_adj_720[17]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_18.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_18.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_18.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_18.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_16 (.A0(n1[14]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3054), .COUT1(n3055), .S0(n133_adj_720[14]), .S1(n133_adj_720[15]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_16.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_16.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_16.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_16.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_14 (.A0(n1[12]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3053), .COUT1(n3054), .S0(n133_adj_720[12]), .S1(n133_adj_720[13]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_14.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_14.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_14.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_14.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_12 (.A0(n1[10]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3052), .COUT1(n3053), .S0(n133_adj_720[10]), .S1(n133_adj_720[11]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_12.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_12.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_12.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_12.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_10 (.A0(n1[8]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3051), .COUT1(n3052), .S0(n133_adj_720[8]), .S1(n133_adj_720[9]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_10.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_10.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_10.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_10.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_8 (.A0(n1[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3050), .COUT1(n3051), .S0(n133_adj_720[6]), .S1(n133_adj_720[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_8.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_8.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_8.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_8.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_6 (.A0(n1[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3049), .COUT1(n3050), .S0(n133_adj_720[4]), .S1(n133_adj_720[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_6.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_6.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_6.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_6.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_4 (.A0(n1[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3048), .COUT1(n3049), .S0(n133_adj_720[2]), .S1(n133_adj_720[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_4.INIT0 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_4.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_4.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_4.INJECT1_1 = "NO";
    CCU2 count_cycles_1_398_add_4_2 (.A0(n1[0]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(n1[1]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n3048), .S0(n133_adj_720[0]), .S1(n133_adj_720[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398_add_4_2.INIT0 = 16'h0555;
    defparam count_cycles_1_398_add_4_2.INIT1 = 16'hfaaa;
    defparam count_cycles_1_398_add_4_2.INJECT1_0 = "NO";
    defparam count_cycles_1_398_add_4_2.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_32 (.A0(count_cycles[30]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[31]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3046), .S0(n133[30]), .S1(n133[31]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_32.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_32.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_32.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_32.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_30 (.A0(count_cycles[28]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[29]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3045), .COUT1(n3046), .S0(n133[28]), 
         .S1(n133[29]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_30.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_30.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_30.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_30.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_28 (.A0(count_cycles[26]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[27]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3044), .COUT1(n3045), .S0(n133[26]), 
         .S1(n133[27]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_28.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_28.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_28.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_28.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_26 (.A0(count_cycles[24]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[25]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3043), .COUT1(n3044), .S0(n133[24]), 
         .S1(n133[25]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_26.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_26.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_26.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_26.INJECT1_1 = "NO";
    FD1S3IX count_cycles_397__i2 (.D(n133[2]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i2.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i3 (.D(n133[3]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i3.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i4 (.D(n133[4]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i4.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i5 (.D(n133[5]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i5.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i6 (.D(n133[6]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i6.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i7 (.D(n133[7]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i7.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i8 (.D(n133[8]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i8.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i9 (.D(n133[9]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i9.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i10 (.D(n133[10]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i10.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i11 (.D(n133[11]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i11.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i12 (.D(n133[12]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i12.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i13 (.D(n133[13]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i13.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i14 (.D(n133[14]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i14.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i15 (.D(n133[15]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i15.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i16 (.D(n133[16]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i16.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i17 (.D(n133[17]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i17.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i18 (.D(n133[18]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i18.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i19 (.D(n133[19]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i19.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i20 (.D(n133[20]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i20.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i21 (.D(n133[21]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i21.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i22 (.D(n133[22]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i22.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i23 (.D(n133[23]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i23.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i24 (.D(n133[24]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i24.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i25 (.D(n133[25]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[25])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i25.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i26 (.D(n133[26]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[26])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i26.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i27 (.D(n133[27]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[27])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i27.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i28 (.D(n133[28]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[28])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i28.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i29 (.D(n133[29]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[29])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i29.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i30 (.D(n133[30]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[30])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i30.GSR = "DISABLED";
    FD1S3IX count_cycles_397__i31 (.D(n133[31]), .CK(i_fpga_clock_c), .CD(i_fpga_clock_c_enable_33), 
            .Q(count_cycles[31])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397__i31.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i1 (.D(n133_adj_720[1]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i1.GSR = "DISABLED";
    CCU2 count_cycles_397_add_4_24 (.A0(count_cycles[22]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[23]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3042), .COUT1(n3043), .S0(n133[22]), 
         .S1(n133[23]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_24.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_24.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_24.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_24.INJECT1_1 = "NO";
    CCU2 add_47_6 (.A0(\count[4] ), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
         .A1(\count[5] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n3000), .COUT1(n3001), .S0(n510[4]), .S1(n510[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(43[30:39])
    defparam add_47_6.INIT0 = 16'h5aaa;
    defparam add_47_6.INIT1 = 16'h5aaa;
    defparam add_47_6.INJECT1_0 = "NO";
    defparam add_47_6.INJECT1_1 = "NO";
    FD1S3IX count_cycles_1_398__i2 (.D(n133_adj_720[2]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i2.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i3 (.D(n133_adj_720[3]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i3.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i4 (.D(n133_adj_720[4]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i4.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i5 (.D(n133_adj_720[5]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i5.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i6 (.D(n133_adj_720[6]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i6.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i7 (.D(n133_adj_720[7]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i7.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i8 (.D(n133_adj_720[8]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i8.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i9 (.D(n133_adj_720[9]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i9.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i10 (.D(n133_adj_720[10]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i10.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i11 (.D(n133_adj_720[11]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i11.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i12 (.D(n133_adj_720[12]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i12.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i13 (.D(n133_adj_720[13]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i13.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i14 (.D(n133_adj_720[14]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i14.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i15 (.D(n133_adj_720[15]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i15.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i16 (.D(n133_adj_720[16]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i16.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i17 (.D(n133_adj_720[17]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i17.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i18 (.D(n133_adj_720[18]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i18.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i19 (.D(n133_adj_720[19]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i19.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i20 (.D(n133_adj_720[20]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i20.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i21 (.D(n133_adj_720[21]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i21.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i22 (.D(n133_adj_720[22]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i22.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i23 (.D(n133_adj_720[23]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i23.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i24 (.D(n133_adj_720[24]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i24.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i25 (.D(n133_adj_720[25]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[25])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i25.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i26 (.D(n133_adj_720[26]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[26])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i26.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i27 (.D(n133_adj_720[27]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[27])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i27.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i28 (.D(n133_adj_720[28]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[28])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i28.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i29 (.D(n133_adj_720[29]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[29])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i29.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i30 (.D(n133_adj_720[30]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[30])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i30.GSR = "DISABLED";
    FD1S3IX count_cycles_1_398__i31 (.D(n133_adj_720[31]), .CK(i_fpga_clock_c), 
            .CD(i_fpga_clock_c_enable_64), .Q(n1[31])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(79[35:53])
    defparam count_cycles_1_398__i31.GSR = "DISABLED";
    CCU2 count_cycles_397_add_4_22 (.A0(count_cycles[20]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[21]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3041), .COUT1(n3042), .S0(n133[20]), 
         .S1(n133[21]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_22.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_22.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_22.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_22.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_20 (.A0(count_cycles[18]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[19]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3040), .COUT1(n3041), .S0(n133[18]), 
         .S1(n133[19]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_20.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_20.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_20.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_20.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_18 (.A0(count_cycles[16]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[17]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3039), .COUT1(n3040), .S0(n133[16]), 
         .S1(n133[17]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_18.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_18.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_18.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_72 (.A(n45), .B(n510[7]), .Z(n39[7])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_72.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_73 (.A(n45), .B(n510[6]), .Z(n39[6])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_73.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_74 (.A(n45), .B(n510[5]), .Z(n39[5])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_74.init = 16'h4444;
    CCU2 count_cycles_397_add_4_16 (.A0(count_cycles[14]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[15]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3038), .COUT1(n3039), .S0(n133[14]), 
         .S1(n133[15]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_16.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_16.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_16.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_16.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_14 (.A0(count_cycles[12]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[13]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3037), .COUT1(n3038), .S0(n133[12]), 
         .S1(n133[13]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_14.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_14.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_14.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_14.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_75 (.A(n45), .B(n510[4]), .Z(n39[4])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_75.init = 16'h4444;
    ORCALUT4 i1_2_lut_adj_76 (.A(n45), .B(n510[3]), .Z(n39[3])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_76.init = 16'h4444;
    CCU2 count_cycles_397_add_4_12 (.A0(count_cycles[10]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[11]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3036), .COUT1(n3037), .S0(n133[10]), 
         .S1(n133[11]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_12.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_12.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_12.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_77 (.A(n45), .B(n510[2]), .Z(n39[2])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_77.init = 16'h4444;
    CCU2 count_cycles_397_add_4_10 (.A0(count_cycles[8]), .B0(GND_net), 
         .C0(GND_net), .D0(GND_net), .A1(count_cycles[9]), .B1(GND_net), 
         .C1(GND_net), .D1(GND_net), .CIN(n3035), .COUT1(n3036), .S0(n133[8]), 
         .S1(n133[9]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_10.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_10.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_10.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_10.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_8 (.A0(count_cycles[6]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[7]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3034), .COUT1(n3035), .S0(n133[6]), .S1(n133[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_8.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_8.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_8.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_8.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_6 (.A0(count_cycles[4]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[5]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3033), .COUT1(n3034), .S0(n133[4]), .S1(n133[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_6.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_6.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_6.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_6.INJECT1_1 = "NO";
    CCU2 count_cycles_397_add_4_4 (.A0(count_cycles[2]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(count_cycles[3]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n3032), .COUT1(n3033), .S0(n133[2]), .S1(n133[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(53[33:49])
    defparam count_cycles_397_add_4_4.INIT0 = 16'hfaaa;
    defparam count_cycles_397_add_4_4.INIT1 = 16'hfaaa;
    defparam count_cycles_397_add_4_4.INJECT1_0 = "NO";
    defparam count_cycles_397_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_78 (.A(n45), .B(n510[1]), .Z(n39[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/PDM_Generator.v(30[11:16])
    defparam i1_2_lut_adj_78.init = 16'h4444;
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module FIFO
//

module FIFO (w_ptr, i_fpga_clock_c, n3824, n11, r_ptr, n11_adj_4, 
            o_RX_Data, GND_net, n1281, fpga_resetn, empty_N_383, FIFO_valid, 
            \data_count[2] , \r_Total_Count[4] , r_RX_Valid, n4, fifo_N_385, 
            i_fpga_clock_c_enable_19, i_fpga_clock_c_enable_67, \data_count[0] , 
            n3514, \data_count[1] ) /* synthesis syn_module_defined=1 */ ;
    output [3:0]w_ptr;
    input i_fpga_clock_c;
    input n3824;
    input n11;
    output [3:0]r_ptr;
    input n11_adj_4;
    input [7:0]o_RX_Data;
    input GND_net;
    output n1281;
    input fpga_resetn;
    output empty_N_383;
    output FIFO_valid;
    input \data_count[2] ;
    input \r_Total_Count[4] ;
    input r_RX_Valid;
    input n4;
    output fifo_N_385;
    input i_fpga_clock_c_enable_19;
    input i_fpga_clock_c_enable_67;
    input \data_count[0] ;
    output n3514;
    input \data_count[1] ;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    
    wire n1273;
    wire [7:0]data_out_7__N_365;
    wire [3:0]w_ptr_c;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(13[23:28])
    wire [3:0]r_ptr_c;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(13[30:35])
    
    wire fifo_N_384;
    wire [3:0]n168;
    
    wire n5, wrap_around, n3460, n1276, n1280, n3511, n1274, n1278, 
        n3510, n1275, n1279, n3509, n1277, n3508;
    wire [3:0]n174;
    
    wire n3512, n3513;
    
    FD1S3IX w_ptr__i0 (.D(n11), .CK(i_fpga_clock_c), .CD(n3824), .Q(w_ptr[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(18[11] 28[8])
    defparam w_ptr__i0.GSR = "DISABLED";
    FD1S3IX r_ptr__i0 (.D(n11_adj_4), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_ptr[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam r_ptr__i0.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i1 (.D(data_out_7__N_365[0]), .CK(i_fpga_clock_c), 
            .Q(n1273)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i1.GSR = "DISABLED";
    DPR16X2B fifo0 (.DI0(o_RX_Data[6]), .DI1(o_RX_Data[7]), .WAD0(w_ptr[0]), 
            .WAD1(w_ptr_c[1]), .WAD2(w_ptr_c[2]), .WAD3(GND_net), .WRE(fifo_N_384), 
            .WCK(i_fpga_clock_c), .RAD0(r_ptr[0]), .RAD1(r_ptr_c[1]), 
            .RAD2(r_ptr_c[2]), .RAD3(GND_net), .RDO0(data_out_7__N_365[6]), 
            .RDO1(data_out_7__N_365[7]));
    FD1S3AX data_out_ (.D(fpga_resetn), .CK(i_fpga_clock_c), .Q(n1281));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out_.GSR = "DISABLED";
    DPR16X2B fifo3 (.DI0(o_RX_Data[0]), .DI1(o_RX_Data[1]), .WAD0(w_ptr[0]), 
            .WAD1(w_ptr_c[1]), .WAD2(w_ptr_c[2]), .WAD3(GND_net), .WRE(fifo_N_384), 
            .WCK(i_fpga_clock_c), .RAD0(r_ptr[0]), .RAD1(r_ptr_c[1]), 
            .RAD2(r_ptr_c[2]), .RAD3(GND_net), .RDO0(data_out_7__N_365[0]), 
            .RDO1(data_out_7__N_365[1]));
    DPR16X2B fifo2 (.DI0(o_RX_Data[2]), .DI1(o_RX_Data[3]), .WAD0(w_ptr[0]), 
            .WAD1(w_ptr_c[1]), .WAD2(w_ptr_c[2]), .WAD3(GND_net), .WRE(fifo_N_384), 
            .WCK(i_fpga_clock_c), .RAD0(r_ptr[0]), .RAD1(r_ptr_c[1]), 
            .RAD2(r_ptr_c[2]), .RAD3(GND_net), .RDO0(data_out_7__N_365[2]), 
            .RDO1(data_out_7__N_365[3]));
    DPR16X2B fifo1 (.DI0(o_RX_Data[4]), .DI1(o_RX_Data[5]), .WAD0(w_ptr[0]), 
            .WAD1(w_ptr_c[1]), .WAD2(w_ptr_c[2]), .WAD3(GND_net), .WRE(fifo_N_384), 
            .WCK(i_fpga_clock_c), .RAD0(r_ptr[0]), .RAD1(r_ptr_c[1]), 
            .RAD2(r_ptr_c[2]), .RAD3(GND_net), .RDO0(data_out_7__N_365[4]), 
            .RDO1(data_out_7__N_365[5]));
    ORCALUT4 i662_3_lut_4_lut (.A(w_ptr_c[1]), .B(w_ptr[0]), .C(w_ptr_c[2]), 
            .D(w_ptr_c[3]), .Z(n168[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(25[14:23])
    defparam i662_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i655_2_lut_3_lut (.A(w_ptr_c[1]), .B(w_ptr[0]), .C(w_ptr_c[2]), 
            .Z(n168[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(25[14:23])
    defparam i655_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i3_3_lut_4_lut (.A(w_ptr_c[2]), .B(r_ptr_c[2]), .C(n5), .D(wrap_around), 
            .Z(n3460)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (B+(C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(50[33:79])
    defparam i3_3_lut_4_lut.init = 16'hf6ff;
    ORCALUT4 i3_3_lut_4_lut_adj_59 (.A(w_ptr_c[2]), .B(r_ptr_c[2]), .C(wrap_around), 
            .D(n5), .Z(empty_N_383)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(50[33:79])
    defparam i3_3_lut_4_lut_adj_59.init = 16'hfff6;
    FD1P3AX fifo_out_valid_36 (.D(empty_N_383), .SP(fpga_resetn), .CK(i_fpga_clock_c), 
            .Q(FIFO_valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam fifo_out_valid_36.GSR = "DISABLED";
    ORCALUT4 i2585_3_lut (.A(n1276), .B(n1280), .C(\data_count[2] ), .Z(n3511)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2585_3_lut.init = 16'hcaca;
    ORCALUT4 i2584_3_lut (.A(n1274), .B(n1278), .C(\data_count[2] ), .Z(n3510)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2584_3_lut.init = 16'hcaca;
    ORCALUT4 i2583_3_lut (.A(n1275), .B(n1279), .C(\data_count[2] ), .Z(n3509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2583_3_lut.init = 16'hcaca;
    ORCALUT4 i2582_3_lut (.A(n1273), .B(n1277), .C(\data_count[2] ), .Z(n3508)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i2582_3_lut.init = 16'hcaca;
    ORCALUT4 i2_4_lut (.A(n3460), .B(\r_Total_Count[4] ), .C(r_RX_Valid), 
            .D(n4), .Z(fifo_N_385)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(23[7:28])
    defparam i2_4_lut.init = 16'ha080;
    ORCALUT4 w_ptr_3__I_0_2_lut (.A(w_ptr_c[3]), .B(r_ptr_c[3]), .Z(wrap_around)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(47[26:61])
    defparam w_ptr_3__I_0_2_lut.init = 16'h6666;
    FD1S3AX data_out__rep_2_i8 (.D(data_out_7__N_365[7]), .CK(i_fpga_clock_c), 
            .Q(n1280)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i8.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i7 (.D(data_out_7__N_365[6]), .CK(i_fpga_clock_c), 
            .Q(n1279)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i7.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i6 (.D(data_out_7__N_365[5]), .CK(i_fpga_clock_c), 
            .Q(n1278)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i6.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i5 (.D(data_out_7__N_365[4]), .CK(i_fpga_clock_c), 
            .Q(n1277)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i5.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i4 (.D(data_out_7__N_365[3]), .CK(i_fpga_clock_c), 
            .Q(n1276)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i4.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i3 (.D(data_out_7__N_365[2]), .CK(i_fpga_clock_c), 
            .Q(n1275)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i3.GSR = "DISABLED";
    FD1S3AX data_out__rep_2_i2 (.D(data_out_7__N_365[1]), .CK(i_fpga_clock_c), 
            .Q(n1274)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam data_out__rep_2_i2.GSR = "DISABLED";
    FD1P3IX r_ptr__i3 (.D(n174[3]), .SP(i_fpga_clock_c_enable_19), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_ptr_c[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam r_ptr__i3.GSR = "DISABLED";
    FD1P3IX r_ptr__i2 (.D(n174[2]), .SP(i_fpga_clock_c_enable_19), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_ptr_c[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam r_ptr__i2.GSR = "DISABLED";
    FD1P3IX r_ptr__i1 (.D(n174[1]), .SP(i_fpga_clock_c_enable_19), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_ptr_c[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(31[11] 45[8])
    defparam r_ptr__i1.GSR = "DISABLED";
    ORCALUT4 i1_4_lut (.A(w_ptr[0]), .B(w_ptr_c[1]), .C(r_ptr[0]), .D(r_ptr_c[1]), 
            .Z(n5)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(55[20:36])
    defparam i1_4_lut.init = 16'h7bde;
    ORCALUT4 i648_2_lut (.A(w_ptr_c[1]), .B(w_ptr[0]), .Z(n168[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(25[14:23])
    defparam i648_2_lut.init = 16'h6666;
    ORCALUT4 i531_2_lut (.A(fifo_N_385), .B(fpga_resetn), .Z(fifo_N_384)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(22[8] 27[6])
    defparam i531_2_lut.init = 16'h8888;
    FD1P3IX w_ptr__i3 (.D(n168[3]), .SP(i_fpga_clock_c_enable_67), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(w_ptr_c[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(18[11] 28[8])
    defparam w_ptr__i3.GSR = "DISABLED";
    FD1P3IX w_ptr__i2 (.D(n168[2]), .SP(i_fpga_clock_c_enable_67), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(w_ptr_c[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(18[11] 28[8])
    defparam w_ptr__i2.GSR = "DISABLED";
    FD1P3IX w_ptr__i1 (.D(n168[1]), .SP(i_fpga_clock_c_enable_67), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(w_ptr_c[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=7, LSE_RCOL=3, LSE_LLINE=93, LSE_RLINE=104 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(18[11] 28[8])
    defparam w_ptr__i1.GSR = "DISABLED";
    ORCALUT4 i619_2_lut (.A(r_ptr_c[1]), .B(r_ptr[0]), .Z(n174[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(42[14:23])
    defparam i619_2_lut.init = 16'h6666;
    L6MUX21 i2588 (.D0(n3512), .D1(n3513), .SD(\data_count[0] ), .Z(n3514));
    PFUMX i2586 (.BLUT(n3508), .ALUT(n3509), .C0(\data_count[1] ), .Z(n3512));
    PFUMX i2587 (.BLUT(n3510), .ALUT(n3511), .C0(\data_count[1] ), .Z(n3513));
    ORCALUT4 i633_3_lut_4_lut (.A(r_ptr_c[1]), .B(r_ptr[0]), .C(r_ptr_c[2]), 
            .D(r_ptr_c[3]), .Z(n174[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(42[14:23])
    defparam i633_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i626_2_lut_3_lut (.A(r_ptr_c[1]), .B(r_ptr[0]), .C(r_ptr_c[2]), 
            .Z(n174[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/FIFO.v(42[14:23])
    defparam i626_2_lut_3_lut.init = 16'h7878;
    
endmodule
//
// Verilog Description of module resetn
//

module resetn (i_fpga_clock_c, fpga_resetn) /* synthesis syn_module_defined=1 */ ;
    input i_fpga_clock_c;
    output fpga_resetn;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    wire [2:0]resetCounter;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(8[15:27])
    
    wire n3802;
    wire [2:0]n17;
    
    wire resetCounter_2__N_7;
    
    ORCALUT4 i2_2_lut_rep_63_3_lut (.A(resetCounter[1]), .B(resetCounter[0]), 
            .C(resetCounter[2]), .Z(n3802)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam i2_2_lut_rep_63_3_lut.init = 16'h8080;
    ORCALUT4 i2162_2_lut_3_lut (.A(resetCounter[1]), .B(resetCounter[0]), 
            .C(resetCounter[2]), .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam i2162_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i1808_1_lut_2_lut_3_lut (.A(resetCounter[1]), .B(resetCounter[0]), 
            .C(resetCounter[2]), .Z(resetCounter_2__N_7)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam i1808_1_lut_2_lut_3_lut.init = 16'h7f7f;
    FD1P3AX resetCounter_396__i0 (.D(n17[0]), .SP(resetCounter_2__N_7), 
            .CK(i_fpga_clock_c), .Q(resetCounter[0]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam resetCounter_396__i0.GSR = "DISABLED";
    FD1S3AX fpga_resetn_11 (.D(n3802), .CK(i_fpga_clock_c), .Q(fpga_resetn)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=8, LSE_RCOL=6, LSE_LLINE=32, LSE_RLINE=35 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(9[8] 22[5])
    defparam fpga_resetn_11.GSR = "DISABLED";
    FD1P3AX resetCounter_396__i1 (.D(n17[1]), .SP(resetCounter_2__N_7), 
            .CK(i_fpga_clock_c), .Q(resetCounter[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam resetCounter_396__i1.GSR = "DISABLED";
    FD1P3AX resetCounter_396__i2 (.D(n17[2]), .SP(resetCounter_2__N_7), 
            .CK(i_fpga_clock_c), .Q(resetCounter[2]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam resetCounter_396__i2.GSR = "DISABLED";
    ORCALUT4 i2153_1_lut (.A(resetCounter[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam i2153_1_lut.init = 16'h5555;
    ORCALUT4 i2155_2_lut (.A(resetCounter[1]), .B(resetCounter[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/resetn.v(14[22:38])
    defparam i2155_2_lut.init = 16'h6666;
    
endmodule
//
// Verilog Description of module SPI_Controller
//

module SPI_Controller (i_fpga_clock_c, n3824, GND_net, \r_Total_Count[4] , 
            o_Master_Trig_c, i_Done_Trig_c, FIFO_ready, n4, fpga_resetn, 
            o_SPI_CS_n_N_256, r_State_2__N_223, o_SPI_CS_n_out, n1588, 
            o_RX_Data, i_SPI_MISO_c, w_SPI_Clk, w_SPI_MOSI, r_RX_Valid, 
            \w_ptr[0] , fifo_N_385, n11, empty_N_383, i_fpga_clock_c_enable_19, 
            \r_ptr[0] , n11_adj_3, i_fpga_clock_c_enable_67) /* synthesis syn_module_defined=1 */ ;
    input i_fpga_clock_c;
    output n3824;
    input GND_net;
    output \r_Total_Count[4] ;
    output o_Master_Trig_c;
    input i_Done_Trig_c;
    input FIFO_ready;
    output n4;
    input fpga_resetn;
    output o_SPI_CS_n_N_256;
    output r_State_2__N_223;
    input o_SPI_CS_n_out;
    output n1588;
    output [7:0]o_RX_Data;
    input i_SPI_MISO_c;
    output w_SPI_Clk;
    output w_SPI_MOSI;
    output r_RX_Valid;
    input \w_ptr[0] ;
    input fifo_N_385;
    output n11;
    input empty_N_383;
    output i_fpga_clock_c_enable_19;
    input \r_ptr[0] ;
    output n11_adj_3;
    output i_fpga_clock_c_enable_67;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    wire [4:0]r_Data_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(58[15:27])
    wire [4:0]r_Data_Count_4__N_128;
    
    wire n2974;
    wire [23:0]r_addr_count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(48[16:28])
    wire [20:0]n992;
    
    wire n2975;
    wire [4:0]r_Total_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(60[15:28])
    wire [4:0]r_Total_Count_4__N_185;
    wire [7:0]r_TX_Data;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(51[15:24])
    
    wire i_fpga_clock_c_enable_26, n598;
    wire [7:0]n77;
    
    wire n1636, n3782;
    wire [23:0]r_shift_addr_count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(49[16:34])
    
    wire n568, n3814, n569, n3797, n4_c, n6, n2;
    wire [4:0]n479;
    wire [4:0]n157;
    
    wire n5, n3796, n2971, n2972, n576, n575, n33, n38, n27, 
        n28, o_Master_Trig_N_194;
    wire [19:0]r_Delay_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(59[16:29])
    
    wire n6_adj_667, n2_adj_668, n36, n30, n574, r_Start, i_fpga_clock_c_enable_10, 
        n2033, n6_adj_669, n2_adj_670, n6_adj_671, n2_adj_672, i_fpga_clock_c_enable_11, 
        r_Stop_N_212, n3780, r_TX_Valid, n3826, n31, n24, n3761, 
        n3760, n3816, n3448, n3828, n573, n572, n4_adj_673, n571, 
        n570, n567, n566, n565, r_Stop, i_fpga_clock_c_enable_16;
    wire [19:0]n1;
    
    wire n564, n3821, n3822, n3790, n3808, n3825, n3788, n3789, 
        n7, n3429, n3450, n3794, n3799, n4055, n3823, n3810, 
        n3783, n1640, n3787, n3776, n3805, n563, n562, n559, 
        n2970, n561, n560, n556, n557, n2_adj_675, n558, n3778, 
        r_State_2__N_224, n3827, n1646, n1644, n1642, n1638, n605, 
        n604, n603, n602, n601, n600, n599, n102, n3434, n3436, 
        n3777;
    wire [4:0]n272;
    
    wire i_fpga_clock_c_enable_57, n14, n3500, n3504, n17, n3492, 
        n3502, n3474, n3472, n4_adj_676, n11_c, n3;
    wire [31:0]n382;
    
    wire n4_adj_677, n2969, n3030, n3798, n635, n3029, n3028, 
        n3027, n3026, n3025, n3024, n3023, n3022, n3801, n638, 
        n2978, n2977, n2973, n2976, n12, n17_adj_679, n15, n3_adj_680, 
        n306, n3793, n67, n2397, n6_adj_681;
    
    FD1S3IX r_Data_Count__i0 (.D(r_Data_Count_4__N_128[0]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Data_Count[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Data_Count__i0.GSR = "DISABLED";
    CCU2 add_394_14 (.A0(r_addr_count[15]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[16]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2974), .COUT1(n2975), .S0(n992[12]), .S1(n992[13]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_14.INIT0 = 16'h5aaa;
    defparam add_394_14.INIT1 = 16'h5aaa;
    defparam add_394_14.INJECT1_0 = "NO";
    defparam add_394_14.INJECT1_1 = "NO";
    FD1S3IX r_Total_Count__i0 (.D(r_Total_Count_4__N_185[0]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Total_Count[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Total_Count__i0.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i0 (.D(n598), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[0])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i0.GSR = "DISABLED";
    FD1S3JX r_State_FSM_i1 (.D(n1636), .CK(i_fpga_clock_c), .PD(n3824), 
            .Q(n77[0]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i1.GSR = "DISABLED";
    ORCALUT4 mux_241_i16_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[7]), 
            .D(r_addr_count[15]), .Z(n568)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i16_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i547_2_lut_rep_75 (.A(r_Data_Count[1]), .B(r_Data_Count[0]), 
            .Z(n3814)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i547_2_lut_rep_75.init = 16'h6666;
    ORCALUT4 mux_241_i17_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[8]), 
            .D(r_addr_count[16]), .Z(n569)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i17_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 select_279_Select_1_i4_4_lut_4_lut (.A(r_Data_Count[1]), .B(r_Data_Count[0]), 
            .C(n3797), .D(n77[3]), .Z(n4_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam select_279_Select_1_i4_4_lut_4_lut.init = 16'h6a00;
    ORCALUT4 i3_4_lut (.A(n77[3]), .B(n6), .C(n2), .D(n479[4]), .Z(r_Total_Count_4__N_185[4])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i3_4_lut.init = 16'hfefc;
    ORCALUT4 i2_4_lut (.A(n157[4]), .B(\r_Total_Count[4] ), .C(n77[1]), 
            .D(n5), .Z(n6)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut.init = 16'heca0;
    ORCALUT4 select_284_Select_4_i2_4_lut (.A(\r_Total_Count[4] ), .B(n77[2]), 
            .C(n3796), .D(n3782), .Z(n2)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam select_284_Select_4_i2_4_lut.init = 16'hc088;
    CCU2 add_394_8 (.A0(r_addr_count[9]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[10]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2971), .COUT1(n2972), .S0(n992[6]), .S1(n992[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_8.INIT0 = 16'h5aaa;
    defparam add_394_8.INIT1 = 16'h5aaa;
    defparam add_394_8.INJECT1_0 = "NO";
    defparam add_394_8.INJECT1_1 = "NO";
    ORCALUT4 mux_241_i24_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[15]), 
            .D(r_addr_count[23]), .Z(n576)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i24_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i23_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[14]), 
            .D(r_addr_count[22]), .Z(n575)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i23_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i19_4_lut (.A(n33), .B(n38), .C(n27), .D(n28), .Z(o_Master_Trig_N_194)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i19_4_lut.init = 16'hfffe;
    ORCALUT4 i13_4_lut (.A(r_Delay_Count[8]), .B(r_Delay_Count[17]), .C(r_Delay_Count[13]), 
            .D(r_Delay_Count[1]), .Z(n33)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i13_4_lut.init = 16'hfffe;
    ORCALUT4 i3_4_lut_adj_30 (.A(n77[3]), .B(n6_adj_667), .C(n2_adj_668), 
            .D(n479[3]), .Z(r_Total_Count_4__N_185[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i3_4_lut_adj_30.init = 16'hfefc;
    ORCALUT4 i2_4_lut_adj_31 (.A(n157[3]), .B(r_Total_Count[3]), .C(n77[1]), 
            .D(n5), .Z(n6_adj_667)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_31.init = 16'heca0;
    ORCALUT4 i18_4_lut (.A(r_Delay_Count[12]), .B(n36), .C(n30), .D(r_Delay_Count[15]), 
            .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i18_4_lut.init = 16'hfffe;
    ORCALUT4 mux_241_i22_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[13]), 
            .D(r_addr_count[21]), .Z(n574)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i22_3_lut_4_lut.init = 16'hf780;
    FD1P3AX r_Start_104 (.D(n2033), .SP(i_fpga_clock_c_enable_10), .CK(i_fpga_clock_c), 
            .Q(r_Start)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Start_104.GSR = "DISABLED";
    ORCALUT4 i3_4_lut_adj_32 (.A(n77[3]), .B(n6_adj_669), .C(n2_adj_670), 
            .D(n479[2]), .Z(r_Total_Count_4__N_185[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i3_4_lut_adj_32.init = 16'hfefc;
    ORCALUT4 i2_4_lut_adj_33 (.A(n157[2]), .B(r_Total_Count[2]), .C(n77[1]), 
            .D(n5), .Z(n6_adj_669)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_33.init = 16'heca0;
    ORCALUT4 i3_4_lut_adj_34 (.A(n77[3]), .B(n6_adj_671), .C(n2_adj_672), 
            .D(n479[1]), .Z(r_Total_Count_4__N_185[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i3_4_lut_adj_34.init = 16'hfefc;
    ORCALUT4 i2_4_lut_adj_35 (.A(n157[1]), .B(r_Total_Count[1]), .C(n77[1]), 
            .D(n5), .Z(n6_adj_671)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_35.init = 16'heca0;
    FD1P3IX o_Master_Trig_101 (.D(r_Stop_N_212), .SP(i_fpga_clock_c_enable_11), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(o_Master_Trig_c)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam o_Master_Trig_101.GSR = "DISABLED";
    ORCALUT4 i8_2_lut (.A(r_Delay_Count[19]), .B(r_Delay_Count[4]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i8_2_lut.init = 16'heeee;
    ORCALUT4 i1289_3_lut_4_lut_else_3_lut (.A(n3780), .B(n77[2]), .C(n3782), 
            .D(r_TX_Valid), .Z(n3826)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C)+!B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(156[26:70])
    defparam i1289_3_lut_4_lut_else_3_lut.init = 16'hf3e2;
    ORCALUT4 i16_4_lut (.A(n31), .B(r_Delay_Count[6]), .C(n24), .D(r_Delay_Count[0]), 
            .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i16_4_lut.init = 16'hfffe;
    PFUMX i2722 (.BLUT(n3761), .ALUT(n3760), .C0(r_Data_Count[0]), .Z(r_Data_Count_4__N_128[0]));
    ORCALUT4 i10_2_lut (.A(r_Delay_Count[2]), .B(r_Delay_Count[11]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i10_2_lut.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_77 (.A(n77[0]), .B(i_Done_Trig_c), .Z(n3816)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_2_lut_rep_77.init = 16'h2222;
    ORCALUT4 i1_3_lut_4_lut (.A(n77[0]), .B(i_Done_Trig_c), .C(n77[4]), 
            .D(r_Stop_N_212), .Z(n3448)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_3_lut_4_lut.init = 16'hfff2;
    ORCALUT4 i11_4_lut (.A(r_Delay_Count[7]), .B(r_Delay_Count[16]), .C(r_Delay_Count[18]), 
            .D(r_Delay_Count[3]), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i11_4_lut.init = 16'hfffe;
    ORCALUT4 i4_2_lut (.A(r_Delay_Count[9]), .B(r_Delay_Count[14]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i4_2_lut.init = 16'heeee;
    FD1S3IX r_TX_Valid_103 (.D(n3828), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_TX_Valid)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Valid_103.GSR = "DISABLED";
    ORCALUT4 i7_2_lut (.A(r_Delay_Count[5]), .B(r_Delay_Count[10]), .Z(n27)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(184[25:43])
    defparam i7_2_lut.init = 16'heeee;
    ORCALUT4 mux_241_i21_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[12]), 
            .D(r_addr_count[20]), .Z(n573)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i21_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i20_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[11]), 
            .D(r_addr_count[19]), .Z(n572)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i20_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i2_3_lut (.A(r_Data_Count[4]), .B(r_Data_Count[3]), .C(FIFO_ready), 
            .Z(n4_adj_673)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_3_lut.init = 16'h1010;
    ORCALUT4 mux_241_i19_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[10]), 
            .D(r_addr_count[18]), .Z(n571)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i19_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i18_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[9]), 
            .D(r_addr_count[17]), .Z(n570)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i18_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i15_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[6]), 
            .D(r_addr_count[14]), .Z(n567)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i15_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i14_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[5]), 
            .D(r_addr_count[13]), .Z(n566)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i14_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 mux_241_i13_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[4]), 
            .D(r_addr_count[12]), .Z(n565)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i13_3_lut_4_lut.init = 16'hf780;
    FD1P3AX r_Stop_106 (.D(r_Stop_N_212), .SP(i_fpga_clock_c_enable_16), 
            .CK(i_fpga_clock_c), .Q(r_Stop)) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Stop_106.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i0 (.D(n1[0]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i0.GSR = "DISABLED";
    ORCALUT4 mux_241_i12_3_lut_4_lut (.A(n77[2]), .B(n3782), .C(r_shift_addr_count[3]), 
            .D(r_addr_count[11]), .Z(n564)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam mux_241_i12_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1_2_lut_rep_82 (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .Z(n3821)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_82.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_51_3_lut_4_lut (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .C(r_Data_Count[3]), .D(n3822), .Z(n3790)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_51_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_2_lut_rep_69_3_lut (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .C(r_Data_Count[3]), .Z(n3808)) /* synthesis lut_function=(A+(B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_69_3_lut.init = 16'hfefe;
    ORCALUT4 i1874_2_lut_rep_49_3_lut_4_lut (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .C(n3825), .D(r_Data_Count[3]), .Z(n3788)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1874_2_lut_rep_49_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_50_3_lut_4_lut (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .C(r_Data_Count[0]), .D(r_Data_Count[3]), .Z(n3789)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_50_3_lut_4_lut.init = 16'hffef;
    ORCALUT4 i1_4_lut (.A(n7), .B(n3448), .C(n77[2]), .D(n3429), .Z(n3450)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_4_lut.init = 16'hfeee;
    ORCALUT4 i1_2_lut_rep_55_3_lut_4_lut (.A(r_Data_Count[2]), .B(r_Data_Count[4]), 
            .C(n3822), .D(r_Data_Count[3]), .Z(n3794)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_55_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_2_lut_rep_83 (.A(r_Data_Count[1]), .B(r_Data_Count[0]), 
            .Z(n3822)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(163[30:47])
    defparam i1_2_lut_rep_83.init = 16'heeee;
    ORCALUT4 i1_2_lut_rep_60_3_lut_4_lut (.A(r_Data_Count[1]), .B(r_Data_Count[0]), 
            .C(r_Data_Count[4]), .D(r_Data_Count[2]), .Z(n3799)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(163[30:47])
    defparam i1_2_lut_rep_60_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 mux_15_i2_3_lut_4_lut_4_lut (.A(r_Total_Count[1]), .B(r_Total_Count[0]), 
            .C(n3794), .D(n4055), .Z(n157[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_15_i2_3_lut_4_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 select_284_Select_1_i2_4_lut_4_lut (.A(r_Total_Count[1]), .B(r_Total_Count[0]), 
            .C(n3782), .D(n77[2]), .Z(n2_adj_672)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam select_284_Select_1_i2_4_lut_4_lut.init = 16'h6a00;
    ORCALUT4 mux_49_i2_3_lut_4_lut_4_lut (.A(r_Total_Count[1]), .B(r_Total_Count[0]), 
            .C(n4_adj_673), .D(n4055), .Z(n479[1])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_49_i2_3_lut_4_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 i585_2_lut_rep_84 (.A(r_Total_Count[1]), .B(r_Total_Count[0]), 
            .Z(n3823)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam i585_2_lut_rep_84.init = 16'h8888;
    ORCALUT4 i592_2_lut_rep_71_3_lut (.A(r_Total_Count[1]), .B(r_Total_Count[0]), 
            .C(r_Total_Count[2]), .Z(n3810)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam i592_2_lut_rep_71_3_lut.init = 16'h8080;
    ORCALUT4 i895_3_lut_4_lut (.A(n3783), .B(n3782), .C(n3780), .D(n77[2]), 
            .Z(n1640)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(143[26] 152[24])
    defparam i895_3_lut_4_lut.init = 16'hfef0;
    ORCALUT4 i902_3_lut_rep_37_4_lut (.A(n77[1]), .B(n3787), .C(n77[2]), 
            .D(n3782), .Z(n3776)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i902_3_lut_rep_37_4_lut.init = 16'hf808;
    ORCALUT4 i1859_2_lut_rep_86 (.A(r_Data_Count[0]), .B(r_Data_Count[1]), 
            .Z(n3825)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1859_2_lut_rep_86.init = 16'h8888;
    ORCALUT4 i1_3_lut_4_lut_adj_36 (.A(n77[4]), .B(o_Master_Trig_N_194), 
            .C(n77[0]), .D(r_Stop_N_212), .Z(n5)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_3_lut_4_lut_adj_36.init = 16'hfff8;
    ORCALUT4 i556_2_lut_rep_66_3_lut (.A(r_Data_Count[0]), .B(r_Data_Count[1]), 
            .C(r_Data_Count[2]), .Z(n3805)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i556_2_lut_rep_66_3_lut.init = 16'h8080;
    ORCALUT4 i1762_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[10]), 
            .D(n77[2]), .Z(n563)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1762_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i1763_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[9]), 
            .D(n77[2]), .Z(n562)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1763_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i1766_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[6]), 
            .D(n77[2]), .Z(n559)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1766_2_lut_3_lut_4_lut.init = 16'hb0f0;
    CCU2 add_394_6 (.A0(r_addr_count[7]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[8]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2970), .COUT1(n2971), .S0(n992[4]), .S1(n992[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_6.INIT0 = 16'h5aaa;
    defparam add_394_6.INIT1 = 16'h5aaa;
    defparam add_394_6.INJECT1_0 = "NO";
    defparam add_394_6.INJECT1_1 = "NO";
    ORCALUT4 i1764_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[8]), 
            .D(n77[2]), .Z(n561)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1764_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i1765_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[7]), 
            .D(n77[2]), .Z(n560)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1765_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i1_4_lut_adj_37 (.A(r_Total_Count[3]), .B(r_Total_Count[0]), 
            .C(r_Total_Count[2]), .D(r_Total_Count[1]), .Z(n4)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_37.init = 16'hfaea;
    ORCALUT4 i1769_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[3]), 
            .D(n77[2]), .Z(n556)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1769_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i1768_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[4]), 
            .D(n77[2]), .Z(n557)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1768_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 select_284_Select_0_i2_3_lut_4_lut (.A(n3788), .B(n4055), .C(n77[2]), 
            .D(r_Total_Count[0]), .Z(n2_adj_675)) /* synthesis lut_function=(A (C (D))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam select_284_Select_0_i2_3_lut_4_lut.init = 16'hb040;
    ORCALUT4 i1767_2_lut_3_lut_4_lut (.A(n3788), .B(n4055), .C(r_addr_count[5]), 
            .D(n77[2]), .Z(n558)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:57])
    defparam i1767_2_lut_3_lut_4_lut.init = 16'hb0f0;
    ORCALUT4 i40_2_lut_rep_39_3_lut_4_lut (.A(r_Data_Count[1]), .B(n3789), 
            .C(n4055), .D(n3788), .Z(n3778)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i40_2_lut_rep_39_3_lut_4_lut.init = 16'hddfd;
    ORCALUT4 mux_15_i5_3_lut_4_lut (.A(n4055), .B(n3794), .C(n3796), .D(\r_Total_Count[4] ), 
            .Z(n157[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(122[26] 130[24])
    defparam mux_15_i5_3_lut_4_lut.init = 16'hf780;
    ORCALUT4 i1289_3_lut_4_lut_then_3_lut (.A(n4_adj_673), .B(r_TX_Valid), 
            .C(r_State_2__N_224), .Z(n3827)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(156[26:70])
    defparam i1289_3_lut_4_lut_then_3_lut.init = 16'h2020;
    FD1S3IX r_State_FSM_i6 (.D(n1646), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Stop_N_212));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i6.GSR = "DISABLED";
    FD1S3IX r_State_FSM_i5 (.D(n1644), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(n77[4]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i5.GSR = "DISABLED";
    FD1S3IX r_State_FSM_i4 (.D(n1642), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(n77[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i4.GSR = "DISABLED";
    FD1S3IX r_State_FSM_i3 (.D(n1640), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(n77[2]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i3.GSR = "DISABLED";
    FD1S3IX r_State_FSM_i2 (.D(n1638), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(n77[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_State_FSM_i2.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i7 (.D(n605), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i7.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i6 (.D(n604), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i6.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i5 (.D(n603), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i5.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i4 (.D(n602), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i4.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i3 (.D(n601), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i3.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i2 (.D(n600), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i2.GSR = "DISABLED";
    FD1P3IX r_TX_Data__i1 (.D(n599), .SP(i_fpga_clock_c_enable_26), .CD(n3824), 
            .CK(i_fpga_clock_c), .Q(r_TX_Data[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_TX_Data__i1.GSR = "DISABLED";
    ORCALUT4 i893_3_lut_4_lut (.A(n4055), .B(n3794), .C(n102), .D(n77[1]), 
            .Z(n1638)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(122[26] 130[24])
    defparam i893_3_lut_4_lut.init = 16'hf7f0;
    ORCALUT4 i1_3_lut (.A(n77[3]), .B(n3434), .C(n77[2]), .Z(n3436)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_3_lut.init = 16'hc8c8;
    ORCALUT4 i241_2_lut_rep_38_3_lut_4_lut (.A(n3825), .B(n3808), .C(n77[2]), 
            .D(n4055), .Z(n3777)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i241_2_lut_rep_38_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i1_4_lut_adj_38 (.A(n4055), .B(n3788), .C(n4_adj_673), .D(n77[3]), 
            .Z(n3434)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_4_lut_adj_38.init = 16'ha022;
    ORCALUT4 i1782_2_lut_3_lut_4_lut (.A(n3808), .B(r_Data_Count[0]), .C(r_Data_Count[4]), 
            .D(r_Data_Count[1]), .Z(n272[4])) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam i1782_2_lut_3_lut_4_lut.init = 16'hb0f0;
    FD1P3IX r_shift_addr_count__i23 (.D(n576), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[23])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i23.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i22 (.D(n575), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[22])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i22.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i21 (.D(n574), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[21])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i21.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i20 (.D(n573), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[20])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i20.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i19 (.D(n572), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[19])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i19.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i18 (.D(n571), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[18])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i18.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i17 (.D(n570), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[17])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i17.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i16 (.D(n569), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[16])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i16.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i15 (.D(n568), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i15.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i14 (.D(n567), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i14.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i13 (.D(n566), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i13.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i12 (.D(n565), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i12.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i11 (.D(n564), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i11.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i10 (.D(n563), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i10.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i9 (.D(n562), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i9.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i8 (.D(n561), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i8.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i7 (.D(n560), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i7.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i6 (.D(n559), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i6.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i5 (.D(n558), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i5.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i4 (.D(n557), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i4.GSR = "DISABLED";
    FD1P3IX r_shift_addr_count__i3 (.D(n556), .SP(i_fpga_clock_c_enable_57), 
            .CD(n3824), .CK(i_fpga_clock_c), .Q(r_shift_addr_count[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_shift_addr_count__i3.GSR = "DISABLED";
    FD1S3IX r_addr_count__i23 (.D(n992[20]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[23])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i23.GSR = "DISABLED";
    FD1S3IX r_addr_count__i22 (.D(n992[19]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[22])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i22.GSR = "DISABLED";
    FD1S3IX r_addr_count__i21 (.D(n992[18]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[21])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i21.GSR = "DISABLED";
    FD1S3IX r_addr_count__i20 (.D(n992[17]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[20])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i20.GSR = "DISABLED";
    FD1S3IX r_addr_count__i19 (.D(n992[16]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[19])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i19.GSR = "DISABLED";
    FD1S3IX r_addr_count__i18 (.D(n992[15]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[18])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i18.GSR = "DISABLED";
    FD1S3IX r_addr_count__i17 (.D(n992[14]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[17])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i17.GSR = "DISABLED";
    FD1S3IX r_addr_count__i16 (.D(n992[13]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[16])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i16.GSR = "DISABLED";
    FD1S3IX r_addr_count__i15 (.D(n992[12]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[15])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i15.GSR = "DISABLED";
    FD1S3IX r_addr_count__i14 (.D(n992[11]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[14])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i14.GSR = "DISABLED";
    FD1S3IX r_addr_count__i13 (.D(n992[10]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[13])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i13.GSR = "DISABLED";
    FD1S3IX r_addr_count__i12 (.D(n992[9]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[12])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i12.GSR = "DISABLED";
    FD1S3IX r_addr_count__i11 (.D(n992[8]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[11])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i11.GSR = "DISABLED";
    FD1S3IX r_addr_count__i10 (.D(n992[7]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[10])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i10.GSR = "DISABLED";
    FD1S3IX r_addr_count__i9 (.D(n992[6]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[9])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i9.GSR = "DISABLED";
    FD1S3IX r_addr_count__i8 (.D(n992[5]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[8])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i8.GSR = "DISABLED";
    FD1S3IX r_addr_count__i7 (.D(n992[4]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[7])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i7.GSR = "DISABLED";
    FD1S3IX r_addr_count__i6 (.D(n992[3]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[6])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i6.GSR = "DISABLED";
    FD1S3IX r_addr_count__i5 (.D(n992[2]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[5])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i5.GSR = "DISABLED";
    FD1S3IX r_addr_count__i4 (.D(n992[1]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i4.GSR = "DISABLED";
    FD1S3IX r_addr_count__i3 (.D(n992[0]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_addr_count[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_addr_count__i3.GSR = "DISABLED";
    FD1S3IX r_Total_Count__i4 (.D(r_Total_Count_4__N_185[4]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(\r_Total_Count[4] )) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Total_Count__i4.GSR = "DISABLED";
    FD1S3IX r_Total_Count__i3 (.D(r_Total_Count_4__N_185[3]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Total_Count[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Total_Count__i3.GSR = "DISABLED";
    FD1S3IX r_Total_Count__i2 (.D(r_Total_Count_4__N_185[2]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Total_Count[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Total_Count__i2.GSR = "DISABLED";
    FD1S3IX r_Total_Count__i1 (.D(r_Total_Count_4__N_185[1]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Total_Count[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Total_Count__i1.GSR = "DISABLED";
    ORCALUT4 i34_4_lut_4_lut (.A(r_Data_Count[3]), .B(n3805), .C(n3799), 
            .D(n3797), .Z(n14)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i34_4_lut_4_lut.init = 16'h66a0;
    ORCALUT4 i891_4_lut (.A(n3816), .B(n77[4]), .C(n3500), .D(n3504), 
            .Z(n1636)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i891_4_lut.init = 16'haaae;
    ORCALUT4 i35_4_lut_4_lut (.A(r_Data_Count[3]), .B(n3805), .C(n3783), 
            .D(n3782), .Z(n17)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i35_4_lut_4_lut.init = 16'h66a0;
    ORCALUT4 i2574_4_lut (.A(r_Delay_Count[3]), .B(n3492), .C(n24), .D(r_Delay_Count[17]), 
            .Z(n3500)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2574_4_lut.init = 16'hfffe;
    ORCALUT4 i2578_4_lut (.A(r_Delay_Count[0]), .B(n3502), .C(n3474), 
            .D(r_Delay_Count[18]), .Z(n3504)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2578_4_lut.init = 16'hfffe;
    ORCALUT4 i2566_4_lut (.A(r_Delay_Count[6]), .B(r_Delay_Count[11]), .C(r_Delay_Count[2]), 
            .D(r_Delay_Count[12]), .Z(n3492)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2566_4_lut.init = 16'hfffe;
    ORCALUT4 i2576_4_lut (.A(n3472), .B(n27), .C(r_Delay_Count[19]), .D(r_Delay_Count[15]), 
            .Z(n3502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2576_4_lut.init = 16'hfffe;
    ORCALUT4 i2548_2_lut (.A(r_Delay_Count[8]), .B(r_Delay_Count[1]), .Z(n3474)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2548_2_lut.init = 16'heeee;
    ORCALUT4 i2_4_lut_adj_39 (.A(r_Data_Count[4]), .B(n4_adj_676), .C(n11_c), 
            .D(n3), .Z(r_Data_Count_4__N_128[4])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_39.init = 16'hffec;
    ORCALUT4 i2546_4_lut (.A(r_Delay_Count[4]), .B(r_Delay_Count[16]), .C(r_Delay_Count[13]), 
            .D(r_Delay_Count[7]), .Z(n3472)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2546_4_lut.init = 16'hfffe;
    ORCALUT4 select_279_Select_4_i4_4_lut (.A(r_Data_Count[4]), .B(n77[3]), 
            .C(n382[4]), .D(n3797), .Z(n4_adj_676)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam select_279_Select_4_i4_4_lut.init = 16'hc088;
    ORCALUT4 select_279_Select_4_i3_4_lut (.A(n272[4]), .B(n77[2]), .C(n382[4]), 
            .D(n3782), .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam select_279_Select_4_i3_4_lut.init = 16'hc088;
    ORCALUT4 i1_4_lut_adj_40 (.A(n77[1]), .B(n3448), .C(n4055), .D(n3794), 
            .Z(n11_c)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_4_lut_adj_40.init = 16'hcecc;
    FD1S3IX r_Data_Count__i4 (.D(r_Data_Count_4__N_128[4]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Data_Count[4])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Data_Count__i4.GSR = "DISABLED";
    FD1S3IX r_Data_Count__i3 (.D(r_Data_Count_4__N_128[3]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Data_Count[3])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Data_Count__i3.GSR = "DISABLED";
    FD1S3IX r_Data_Count__i2 (.D(r_Data_Count_4__N_128[2]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Data_Count[2])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Data_Count__i2.GSR = "DISABLED";
    FD1S3IX r_Data_Count__i1 (.D(r_Data_Count_4__N_128[1]), .CK(i_fpga_clock_c), 
            .CD(n3824), .Q(r_Data_Count[1])) /* synthesis LSE_LINE_FILE_ID=11, LSE_LCOL=20, LSE_RCOL=6, LSE_LLINE=76, LSE_RLINE=91 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam r_Data_Count__i1.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i1 (.D(n1[1]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i1.GSR = "DISABLED";
    ORCALUT4 i2_3_lut_adj_41 (.A(n77[2]), .B(n4_adj_677), .C(n17), .Z(r_Data_Count_4__N_128[3])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_3_lut_adj_41.init = 16'hecec;
    ORCALUT4 i2613_2_lut (.A(n77[1]), .B(fpga_resetn), .Z(n2033)) /* synthesis lut_function=(!(A+!(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(93[11] 203[8])
    defparam i2613_2_lut.init = 16'h4444;
    CCU2 add_394_4 (.A0(r_addr_count[5]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[6]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2969), .COUT1(n2970), .S0(n992[2]), .S1(n992[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_4.INIT0 = 16'h5aaa;
    defparam add_394_4.INIT1 = 16'h5aaa;
    defparam add_394_4.INJECT1_0 = "NO";
    defparam add_394_4.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_20 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[18]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[19]), .CIN(n3030), .S0(n1[18]), 
         .S1(n1[19]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_20.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_20.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_20.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_20.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_18 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[16]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[17]), .CIN(n3029), .COUT1(n3030), 
         .S0(n1[16]), .S1(n1[17]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_18.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_18.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_18.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_18.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_16 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[14]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[15]), .CIN(n3028), .COUT1(n3029), 
         .S0(n1[14]), .S1(n1[15]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_16.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_16.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_16.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_16.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_14 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[12]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[13]), .CIN(n3027), .COUT1(n3028), 
         .S0(n1[12]), .S1(n1[13]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_14.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_14.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_14.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_14.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_12 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[10]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[11]), .CIN(n3026), .COUT1(n3027), 
         .S0(n1[10]), .S1(n1[11]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_12.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_12.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_12.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_12.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_10 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[8]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[9]), .CIN(n3025), .COUT1(n3026), 
         .S0(n1[8]), .S1(n1[9]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_10.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_10.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_10.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_10.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_8 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[6]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[7]), .CIN(n3024), .COUT1(n3025), 
         .S0(n1[6]), .S1(n1[7]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_8.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_8.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_8.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_8.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_6 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[4]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[5]), .CIN(n3023), .COUT1(n3024), 
         .S0(n1[4]), .S1(n1[5]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_6.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_6.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_6.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_6.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_4 (.A0(n3798), .B0(o_Master_Trig_N_194), 
         .C0(n635), .D0(r_Delay_Count[2]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[3]), .CIN(n3022), .COUT1(n3023), 
         .S0(n1[2]), .S1(n1[3]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_4.INIT0 = 16'hf400;
    defparam r_Delay_Count_400_add_4_4.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_4.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_4.INJECT1_1 = "NO";
    CCU2 add_394_2 (.A0(n77[2]), .B0(n3778), .C0(r_addr_count[3]), .D0(GND_net), 
         .A1(r_addr_count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(GND_net), .COUT1(n2969), .S0(n992[0]), .S1(n992[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_2.INIT0 = 16'hd2d2;
    defparam add_394_2.INIT1 = 16'h5aaa;
    defparam add_394_2.INJECT1_0 = "NO";
    defparam add_394_2.INJECT1_1 = "NO";
    CCU2 r_Delay_Count_400_add_4_2 (.A0(n3801), .B0(n635), .C0(n638), 
         .D0(r_Delay_Count[0]), .A1(n3798), .B1(o_Master_Trig_N_194), 
         .C1(n635), .D1(r_Delay_Count[1]), .CIN(GND_net), .COUT1(n3022), 
         .S0(n1[0]), .S1(n1[1]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400_add_4_2.INIT0 = 16'h56aa;
    defparam r_Delay_Count_400_add_4_2.INIT1 = 16'hf400;
    defparam r_Delay_Count_400_add_4_2.INJECT1_0 = "NO";
    defparam r_Delay_Count_400_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_42 (.A(r_Data_Count[3]), .B(n77[3]), .C(n11_c), 
            .D(n14), .Z(n4_adj_677)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_4_lut_adj_42.init = 16'heca0;
    ORCALUT4 i1_3_lut_4_lut_adj_43 (.A(n77[3]), .B(n3797), .C(r_shift_addr_count[16]), 
            .D(n3436), .Z(n598)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_3_lut_4_lut_adj_43.init = 16'h70ff;
    ORCALUT4 i1_3_lut_4_lut_adj_44 (.A(n77[3]), .B(n3797), .C(r_shift_addr_count[17]), 
            .D(n3436), .Z(n599)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A !(C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_3_lut_4_lut_adj_44.init = 16'h70ff;
    CCU2 add_394_22 (.A0(r_addr_count[23]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
         .CIN(n2978), .S0(n992[20]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_22.INIT0 = 16'h5aaa;
    defparam add_394_22.INIT1 = 16'h0000;
    defparam add_394_22.INJECT1_0 = "NO";
    defparam add_394_22.INJECT1_1 = "NO";
    CCU2 add_394_20 (.A0(r_addr_count[21]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[22]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2977), .COUT1(n2978), .S0(n992[18]), .S1(n992[19]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_20.INIT0 = 16'h5aaa;
    defparam add_394_20.INIT1 = 16'h5aaa;
    defparam add_394_20.INJECT1_0 = "NO";
    defparam add_394_20.INJECT1_1 = "NO";
    CCU2 add_394_10 (.A0(r_addr_count[11]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[12]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2972), .COUT1(n2973), .S0(n992[8]), .S1(n992[9]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_10.INIT0 = 16'h5aaa;
    defparam add_394_10.INIT1 = 16'h5aaa;
    defparam add_394_10.INJECT1_0 = "NO";
    defparam add_394_10.INJECT1_1 = "NO";
    CCU2 add_394_18 (.A0(r_addr_count[19]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[20]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2976), .COUT1(n2977), .S0(n992[16]), .S1(n992[17]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_18.INIT0 = 16'h5aaa;
    defparam add_394_18.INIT1 = 16'h5aaa;
    defparam add_394_18.INJECT1_0 = "NO";
    defparam add_394_18.INJECT1_1 = "NO";
    CCU2 add_394_16 (.A0(r_addr_count[17]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[18]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2975), .COUT1(n2976), .S0(n992[14]), .S1(n992[15]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_16.INIT0 = 16'h5aaa;
    defparam add_394_16.INIT1 = 16'h5aaa;
    defparam add_394_16.INJECT1_0 = "NO";
    defparam add_394_16.INJECT1_1 = "NO";
    ORCALUT4 i66_2_lut (.A(i_Done_Trig_c), .B(n77[0]), .Z(n102)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i66_2_lut.init = 16'h8888;
    CCU2 add_394_12 (.A0(r_addr_count[13]), .B0(GND_net), .C0(GND_net), 
         .D0(GND_net), .A1(r_addr_count[14]), .B1(GND_net), .C1(GND_net), 
         .D1(GND_net), .CIN(n2973), .COUT1(n2974), .S0(n992[10]), .S1(n992[11]));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(149[26] 152[24])
    defparam add_394_12.INIT0 = 16'h5aaa;
    defparam add_394_12.INIT1 = 16'h5aaa;
    defparam add_394_12.INJECT1_0 = "NO";
    defparam add_394_12.INJECT1_1 = "NO";
    ORCALUT4 i12_4_lut (.A(n77[4]), .B(n4055), .C(r_Stop_N_212), .D(o_Master_Trig_N_194), 
            .Z(i_fpga_clock_c_enable_11)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i12_4_lut.init = 16'hc0ca;
    ORCALUT4 i2_4_lut_adj_45 (.A(n77[2]), .B(n12), .C(n17_adj_679), .D(n15), 
            .Z(r_Data_Count_4__N_128[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_45.init = 16'hffec;
    ORCALUT4 i1_2_lut (.A(r_Data_Count[2]), .B(n11_c), .Z(n12)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 i2_4_lut_adj_46 (.A(r_Data_Count[1]), .B(n4_c), .C(n11_c), 
            .D(n3_adj_680), .Z(r_Data_Count_4__N_128[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_46.init = 16'hffec;
    ORCALUT4 select_279_Select_1_i3_4_lut (.A(n272[1]), .B(n77[2]), .C(n3814), 
            .D(n3782), .Z(n3_adj_680)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam select_279_Select_1_i3_4_lut.init = 16'hc088;
    FD1S3IX r_Delay_Count_400__i2 (.D(n1[2]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i2.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i3 (.D(n1[3]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i3.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i4 (.D(n1[4]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i4.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i5 (.D(n1[5]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i5.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i6 (.D(n1[6]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i6.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i7 (.D(n1[7]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i7.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i8 (.D(n1[8]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i8.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i9 (.D(n1[9]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i9.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i10 (.D(n1[10]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i10.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i11 (.D(n1[11]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i11.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i12 (.D(n1[12]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i12.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i13 (.D(n1[13]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i13.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i14 (.D(n1[14]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i14.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i15 (.D(n1[15]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i15.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i16 (.D(n1[16]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i16.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i17 (.D(n1[17]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i17.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i18 (.D(n1[18]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i18.GSR = "DISABLED";
    FD1S3IX r_Delay_Count_400__i19 (.D(n1[19]), .CK(i_fpga_clock_c), .CD(n3824), 
            .Q(r_Delay_Count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam r_Delay_Count_400__i19.GSR = "DISABLED";
    ORCALUT4 i2_2_lut_rep_41_3_lut_4_lut (.A(n3808), .B(n3822), .C(n77[1]), 
            .D(n4055), .Z(n3780)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(163[30:47])
    defparam i2_2_lut_rep_41_3_lut_4_lut.init = 16'he000;
    ORCALUT4 i1_4_lut_adj_47 (.A(fpga_resetn), .B(n306), .C(n4055), .D(r_Stop_N_212), 
            .Z(i_fpga_clock_c_enable_16)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'ha088;
    ORCALUT4 mux_15_i4_3_lut_4_lut_4_lut (.A(r_Total_Count[3]), .B(n3810), 
            .C(n3794), .D(n4055), .Z(n157[3])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_15_i4_3_lut_4_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 i1_2_lut_adj_48 (.A(n77[0]), .B(n77[4]), .Z(n306)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_48.init = 16'heeee;
    ORCALUT4 n84_bdd_4_lut_2721 (.A(n77[1]), .B(n3450), .C(n4055), .D(n3794), 
            .Z(n3760)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;
    defparam n84_bdd_4_lut_2721.init = 16'hceee;
    ORCALUT4 n84_bdd_4_lut (.A(n77[1]), .B(n3794), .C(n3777), .D(n3793), 
            .Z(n3761)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;
    defparam n84_bdd_4_lut.init = 16'hfff2;
    ORCALUT4 select_284_Select_3_i2_4_lut_4_lut (.A(r_Total_Count[3]), .B(n3810), 
            .C(n3782), .D(n77[2]), .Z(n2_adj_668)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam select_284_Select_3_i2_4_lut_4_lut.init = 16'h6a00;
    ORCALUT4 mux_49_i5_3_lut_4_lut (.A(\r_Total_Count[4] ), .B(r_Total_Count[3]), 
            .C(n3810), .D(n3797), .Z(n479[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_49_i5_3_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 mux_49_i4_3_lut_3_lut_4_lut (.A(n4055), .B(n4_adj_673), .C(n3810), 
            .D(r_Total_Count[3]), .Z(n479[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(156[26:70])
    defparam mux_49_i4_3_lut_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i49_2_lut_3_lut_4_lut (.A(n4055), .B(n4_adj_673), .C(n3799), 
            .D(r_Data_Count[3]), .Z(n67)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (C+!(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(156[26:70])
    defparam i49_2_lut_3_lut_4_lut.init = 16'hf8ff;
    ORCALUT4 i901_4_lut (.A(r_Stop_N_212), .B(n3790), .C(n4055), .D(n7), 
            .Z(n1646)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i901_4_lut.init = 16'h3b0a;
    ORCALUT4 i897_4_lut (.A(n77[3]), .B(n77[2]), .C(n67), .D(n3778), 
            .Z(n1642)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i897_4_lut.init = 16'ha0ec;
    ORCALUT4 i568_3_lut_4_lut (.A(r_Data_Count[2]), .B(n3825), .C(r_Data_Count[3]), 
            .D(r_Data_Count[4]), .Z(n382[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i568_3_lut_4_lut.init = 16'h7f80;
    ORCALUT4 i35_4_lut_4_lut_adj_49 (.A(r_Data_Count[2]), .B(n3825), .C(n3783), 
            .D(n3782), .Z(n17_adj_679)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A !(B (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i35_4_lut_4_lut_adj_49.init = 16'h66a0;
    ORCALUT4 i1_4_lut_4_lut (.A(r_Data_Count[2]), .B(n3825), .C(n3797), 
            .D(n77[3]), .Z(n15)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(159[41:57])
    defparam i1_4_lut_4_lut.init = 16'h6a00;
    ORCALUT4 i899_2_lut_3_lut_4_lut (.A(n4055), .B(r_Stop_N_212), .C(o_Master_Trig_N_194), 
            .D(n77[4]), .Z(n1644)) /* synthesis lut_function=(A (B+(C (D)))+!A (C (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i899_2_lut_3_lut_4_lut.init = 16'hf888;
    ORCALUT4 i1_2_lut_adj_50 (.A(n2397), .B(r_shift_addr_count[23]), .Z(n605)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_50.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_51 (.A(n77[2]), .B(n3434), .C(n3797), .D(n77[3]), 
            .Z(n2397)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i1_4_lut_adj_51.init = 16'h0c88;
    ORCALUT4 i1_2_lut_adj_52 (.A(n2397), .B(r_shift_addr_count[22]), .Z(n604)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_52.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_53 (.A(n2397), .B(r_shift_addr_count[21]), .Z(n603)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_53.init = 16'h8888;
    ORCALUT4 r_TX_Valid_I_3_2_lut_rep_43_3_lut_4_lut (.A(r_Data_Count[3]), 
            .B(n3821), .C(n4055), .D(n3825), .Z(n3782)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam r_TX_Valid_I_3_2_lut_rep_43_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_adj_54 (.A(n2397), .B(r_shift_addr_count[20]), .Z(n602)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_54.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_55 (.A(n2397), .B(r_shift_addr_count[19]), .Z(n601)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_55.init = 16'h8888;
    ORCALUT4 i1_2_lut_adj_56 (.A(n2397), .B(r_shift_addr_count[18]), .Z(n600)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_56.init = 16'h8888;
    ORCALUT4 i1_2_lut_rep_44_3_lut_4_lut (.A(r_Data_Count[3]), .B(n3821), 
            .C(r_Data_Count[1]), .D(r_Data_Count[0]), .Z(n3783)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1_2_lut_rep_44_3_lut_4_lut.init = 16'hefff;
    ORCALUT4 i1785_2_lut_3_lut_4_lut (.A(r_Data_Count[3]), .B(n3821), .C(r_Data_Count[1]), 
            .D(r_Data_Count[0]), .Z(n272[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i1785_2_lut_3_lut_4_lut.init = 16'he0f0;
    ORCALUT4 i32_2_lut_rep_48_3_lut_4_lut (.A(r_Data_Count[3]), .B(n3821), 
            .C(n4055), .D(n3822), .Z(n3787)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(135[26:44])
    defparam i32_2_lut_rep_48_3_lut_4_lut.init = 16'hf0e0;
    ORCALUT4 mux_15_i3_3_lut_4_lut_4_lut (.A(r_Total_Count[2]), .B(n3823), 
            .C(n3794), .D(n4055), .Z(n157[2])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_15_i3_3_lut_4_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 select_284_Select_2_i2_4_lut_4_lut (.A(r_Total_Count[2]), .B(n3823), 
            .C(n3782), .D(n77[2]), .Z(n2_adj_670)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam select_284_Select_2_i2_4_lut_4_lut.init = 16'h6a00;
    ORCALUT4 mux_49_i3_3_lut_4_lut_4_lut (.A(r_Total_Count[2]), .B(n3823), 
            .C(n4_adj_673), .D(n4055), .Z(n479[2])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam mux_49_i3_3_lut_4_lut_4_lut.init = 16'h6aaa;
    ORCALUT4 i604_3_lut_rep_57_4_lut (.A(r_Total_Count[2]), .B(n3823), .C(r_Total_Count[3]), 
            .D(\r_Total_Count[4] ), .Z(n3796)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(161[42:59])
    defparam i604_3_lut_rep_57_4_lut.init = 16'h7f80;
    ORCALUT4 i3_4_lut_adj_57 (.A(n77[3]), .B(n6_adj_681), .C(n2_adj_675), 
            .D(n479[0]), .Z(r_Total_Count_4__N_185[0])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i3_4_lut_adj_57.init = 16'hfefc;
    ORCALUT4 i2_4_lut_adj_58 (.A(r_Total_Count[0]), .B(n5), .C(n77[1]), 
            .D(n3787), .Z(n6_adj_681)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (C (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(107[13] 201[20])
    defparam i2_4_lut_adj_58.init = 16'hd8a8;
    PFUMX i2726 (.BLUT(n3826), .ALUT(n3827), .C0(n77[3]), .Z(n3828));
    SPI_Master_With_Single_CS SPI_Master_Device (.i_fpga_clock_c(i_fpga_clock_c), 
            .o_SPI_CS_n_N_256(o_SPI_CS_n_N_256), .r_State_2__N_224(r_State_2__N_224), 
            .r_TX_Valid(r_TX_Valid), .n4055(n4055), .n3808(n3808), .\r_Data_Count[1] (r_Data_Count[1]), 
            .n3429(n3429), .r_Start(r_Start), .r_State_2__N_223(r_State_2__N_223), 
            .o_SPI_CS_n_out(o_SPI_CS_n_out), .fpga_resetn(fpga_resetn), 
            .r_Stop(r_Stop), .n1588(n1588), .n4(n4_adj_673), .n3797(n3797), 
            .\r_Total_Count[0] (r_Total_Count[0]), .n484(n479[0]), .n82(n77[3]), 
            .n3793(n3793), .n7(n7), .r_Stop_N_212(r_Stop_N_212), .n3798(n3798), 
            .o_Master_Trig_N_194(o_Master_Trig_N_194), .n638(n638), .n81(n77[4]), 
            .n3801(n3801), .n635(n635), .o_RX_Data({o_RX_Data}), .i_SPI_MISO_c(i_SPI_MISO_c), 
            .r_TX_Data({r_TX_Data}), .w_SPI_Clk(w_SPI_Clk), .w_SPI_MOSI(w_SPI_MOSI), 
            .r_RX_Valid(r_RX_Valid), .n3824(n3824), .\w_ptr[0] (\w_ptr[0] ), 
            .fifo_N_385(fifo_N_385), .n11(n11), .n3776(n3776), .i_fpga_clock_c_enable_26(i_fpga_clock_c_enable_26), 
            .empty_N_383(empty_N_383), .FIFO_ready(FIFO_ready), .i_fpga_clock_c_enable_19(i_fpga_clock_c_enable_19), 
            .\r_ptr[0] (\r_ptr[0] ), .n11_adj_2(n11_adj_3), .i_fpga_clock_c_enable_67(i_fpga_clock_c_enable_67), 
            .n84(n77[1]), .n3787(n3787), .n102(n102), .i_fpga_clock_c_enable_10(i_fpga_clock_c_enable_10), 
            .n83(n77[2]), .n3782(n3782), .n3780(n3780), .i_fpga_clock_c_enable_57(i_fpga_clock_c_enable_57)) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Controller.v(67[7] 90[5])
    
endmodule
//
// Verilog Description of module SPI_Master_With_Single_CS
//

module SPI_Master_With_Single_CS (i_fpga_clock_c, o_SPI_CS_n_N_256, r_State_2__N_224, 
            r_TX_Valid, n4055, n3808, \r_Data_Count[1] , n3429, r_Start, 
            r_State_2__N_223, o_SPI_CS_n_out, fpga_resetn, r_Stop, n1588, 
            n4, n3797, \r_Total_Count[0] , n484, n82, n3793, n7, 
            r_Stop_N_212, n3798, o_Master_Trig_N_194, n638, n81, n3801, 
            n635, o_RX_Data, i_SPI_MISO_c, r_TX_Data, w_SPI_Clk, w_SPI_MOSI, 
            r_RX_Valid, n3824, \w_ptr[0] , fifo_N_385, n11, n3776, 
            i_fpga_clock_c_enable_26, empty_N_383, FIFO_ready, i_fpga_clock_c_enable_19, 
            \r_ptr[0] , n11_adj_2, i_fpga_clock_c_enable_67, n84, n3787, 
            n102, i_fpga_clock_c_enable_10, n83, n3782, n3780, i_fpga_clock_c_enable_57) /* synthesis syn_module_defined=1 */ ;
    input i_fpga_clock_c;
    output o_SPI_CS_n_N_256;
    output r_State_2__N_224;
    input r_TX_Valid;
    output n4055;
    input n3808;
    input \r_Data_Count[1] ;
    output n3429;
    input r_Start;
    output r_State_2__N_223;
    input o_SPI_CS_n_out;
    input fpga_resetn;
    input r_Stop;
    output n1588;
    input n4;
    output n3797;
    input \r_Total_Count[0] ;
    output n484;
    input n82;
    output n3793;
    output n7;
    input r_Stop_N_212;
    output n3798;
    input o_Master_Trig_N_194;
    output n638;
    input n81;
    output n3801;
    output n635;
    output [7:0]o_RX_Data;
    input i_SPI_MISO_c;
    input [7:0]r_TX_Data;
    output w_SPI_Clk;
    output w_SPI_MOSI;
    output r_RX_Valid;
    output n3824;
    input \w_ptr[0] ;
    input fifo_N_385;
    output n11;
    input n3776;
    output i_fpga_clock_c_enable_26;
    input empty_N_383;
    input FIFO_ready;
    output i_fpga_clock_c_enable_19;
    input \r_ptr[0] ;
    output n11_adj_2;
    output i_fpga_clock_c_enable_67;
    input n84;
    input n3787;
    input n102;
    output i_fpga_clock_c_enable_10;
    input n83;
    input n3782;
    input n3780;
    output i_fpga_clock_c_enable_57;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    wire [3:0]r_delay;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(35[38:45])
    wire [3:0]r_delay_3__N_219;
    
    wire o_SPI_CS_n_N_258, r_State_2__N_226, n1659, n1848, n6, n2, 
        r_State_2__N_225, w_Master_Ready, n3795, n13, o_SPI_CS_n_N_257, 
        o_SPI_CS_n_N_260, o_SPI_CS_n_N_265, n1856, n6_adj_662, n2_adj_663, 
        n3, n4_c, n3820, n3800, n1604, n3128, n1600, n1131, 
        n5, n4_adj_664, n1603, n3812;
    
    FD1S3AX r_delay_i0 (.D(r_delay_3__N_219[0]), .CK(i_fpga_clock_c), .Q(r_delay[0])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam r_delay_i0.GSR = "ENABLED";
    FD1S3AX r_CS_n_66 (.D(o_SPI_CS_n_N_258), .CK(i_fpga_clock_c), .Q(o_SPI_CS_n_N_256)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam r_CS_n_66.GSR = "DISABLED";
    FD1S3AX r_State_FSM_i1 (.D(n1659), .CK(i_fpga_clock_c), .Q(r_State_2__N_226));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_FSM_i1.GSR = "ENABLED";
    ORCALUT4 r_State_2__N_224_I_0_2_lut_rep_87 (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .Z(n4055)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam r_State_2__N_224_I_0_2_lut_rep_87.init = 16'h2222;
    ORCALUT4 i1_3_lut_4_lut_4_lut_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(n3808), .D(\r_Data_Count[1] ), .Z(n3429)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C+!(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i1_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'hf0fd;
    ORCALUT4 i3_4_lut (.A(n1848), .B(n6), .C(n2), .D(r_State_2__N_226), 
            .Z(r_delay_3__N_219[3])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i3_4_lut.init = 16'hfdfc;
    ORCALUT4 i2_4_lut (.A(r_delay[3]), .B(r_Start), .C(r_State_2__N_224), 
            .D(r_State_2__N_223), .Z(n6)) /* synthesis lut_function=(A (C+(D))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i2_4_lut.init = 16'heea0;
    ORCALUT4 select_152_Select_3_i2_3_lut (.A(r_delay[3]), .B(r_State_2__N_225), 
            .C(w_Master_Ready), .Z(n2)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam select_152_Select_3_i2_3_lut.init = 16'hc8c8;
    ORCALUT4 i1_4_lut (.A(r_State_2__N_226), .B(r_delay[2]), .C(n3795), 
            .D(n13), .Z(r_delay_3__N_219[2])) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i1_4_lut.init = 16'hce82;
    FD1P3AX i45_67 (.D(o_SPI_CS_n_N_265), .SP(o_SPI_CS_n_N_260), .CK(i_fpga_clock_c), 
            .Q(o_SPI_CS_n_N_257)) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam i45_67.GSR = "DISABLED";
    ORCALUT4 i3_4_lut_adj_25 (.A(n1856), .B(n6_adj_662), .C(n2_adj_663), 
            .D(r_State_2__N_226), .Z(r_delay_3__N_219[1])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i3_4_lut_adj_25.init = 16'hfdfc;
    ORCALUT4 o_SPI_CS_n_I_0_78_4_lut (.A(o_SPI_CS_n_out), .B(r_State_2__N_225), 
            .C(o_SPI_CS_n_N_260), .D(r_State_2__N_223), .Z(o_SPI_CS_n_N_258)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam o_SPI_CS_n_I_0_78_4_lut.init = 16'hfaca;
    ORCALUT4 i_Reset_n_I_0_4_lut (.A(fpga_resetn), .B(r_State_2__N_223), 
            .C(n3), .D(n4_c), .Z(o_SPI_CS_n_N_260)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam i_Reset_n_I_0_4_lut.init = 16'haaa8;
    ORCALUT4 i2_4_lut_adj_26 (.A(r_delay[1]), .B(r_Start), .C(r_State_2__N_224), 
            .D(r_State_2__N_223), .Z(n6_adj_662)) /* synthesis lut_function=(A (C+(D))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i2_4_lut_adj_26.init = 16'heea0;
    ORCALUT4 select_152_Select_1_i2_3_lut (.A(r_delay[1]), .B(r_State_2__N_225), 
            .C(w_Master_Ready), .Z(n2_adj_663)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam select_152_Select_1_i2_3_lut.init = 16'hc8c8;
    ORCALUT4 r_State_2__N_223_I_0_79_i3_2_lut (.A(w_Master_Ready), .B(r_State_2__N_225), 
            .Z(n3)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_2__N_223_I_0_79_i3_2_lut.init = 16'h8888;
    ORCALUT4 o_SPI_CS_n_I_0_2_lut_rep_81 (.A(o_SPI_CS_n_out), .B(r_TX_Valid), 
            .Z(n3820)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(91[15:34])
    defparam o_SPI_CS_n_I_0_2_lut_rep_81.init = 16'h8888;
    ORCALUT4 r_State_2__N_223_I_0_79_i4_3_lut_4_lut (.A(o_SPI_CS_n_out), .B(r_TX_Valid), 
            .C(r_Stop), .D(r_State_2__N_224), .Z(n4_c)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(91[15:34])
    defparam r_State_2__N_223_I_0_79_i4_3_lut_4_lut.init = 16'hf800;
    ORCALUT4 i1_2_lut_rep_61_3_lut (.A(o_SPI_CS_n_out), .B(r_TX_Valid), 
            .C(r_State_2__N_224), .Z(n3800)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(91[15:34])
    defparam i1_2_lut_rep_61_3_lut.init = 16'h7070;
    FD1S3AY r_State_FSM_i4 (.D(n1604), .CK(i_fpga_clock_c), .Q(r_State_2__N_223));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_FSM_i4.GSR = "ENABLED";
    FD1S3AX r_State_FSM_i3 (.D(n3128), .CK(i_fpga_clock_c), .Q(r_State_2__N_224));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_FSM_i3.GSR = "ENABLED";
    FD1S3AX r_State_FSM_i2 (.D(n1600), .CK(i_fpga_clock_c), .Q(r_State_2__N_225));   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_FSM_i2.GSR = "ENABLED";
    FD1S3AX r_delay_i3 (.D(r_delay_3__N_219[3]), .CK(i_fpga_clock_c), .Q(r_delay[3])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam r_delay_i3.GSR = "ENABLED";
    FD1S3AX r_delay_i2 (.D(r_delay_3__N_219[2]), .CK(i_fpga_clock_c), .Q(r_delay[2])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam r_delay_i2.GSR = "ENABLED";
    FD1S3AX r_delay_i1 (.D(r_delay_3__N_219[1]), .CK(i_fpga_clock_c), .Q(r_delay[1])) /* synthesis LSE_LINE_FILE_ID=8, LSE_LCOL=7, LSE_RCOL=5, LSE_LLINE=67, LSE_RLINE=90 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(74[5] 131[8])
    defparam r_delay_i1.GSR = "ENABLED";
    ORCALUT4 i914_4_lut (.A(r_State_2__N_226), .B(w_Master_Ready), .C(n1131), 
            .D(r_State_2__N_225), .Z(n1659)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i914_4_lut.init = 16'heca0;
    ORCALUT4 i843_1_lut (.A(o_SPI_CS_n_N_257), .Z(n1588)) /* synthesis lut_function=(!(A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(66[3] 132[6])
    defparam i843_1_lut.init = 16'h5555;
    ORCALUT4 i3_4_lut_adj_27 (.A(r_State_2__N_226), .B(r_State_2__N_225), 
            .C(r_State_2__N_224), .D(n5), .Z(o_SPI_CS_n_N_265)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i3_4_lut_adj_27.init = 16'hfffe;
    ORCALUT4 r_State_2__N_223_I_0_i5_2_lut (.A(r_Start), .B(r_State_2__N_223), 
            .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam r_State_2__N_223_I_0_i5_2_lut.init = 16'h8888;
    ORCALUT4 i2_3_lut (.A(r_Start), .B(n4_adj_664), .C(r_State_2__N_223), 
            .Z(n3128)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i2_3_lut.init = 16'hecec;
    ORCALUT4 i1_4_lut_adj_28 (.A(r_State_2__N_226), .B(r_Stop), .C(n1131), 
            .D(n3800), .Z(n4_adj_664)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i1_4_lut_adj_28.init = 16'h3b0a;
    ORCALUT4 i859_3_lut_4_lut (.A(r_State_2__N_224), .B(n3820), .C(r_Stop), 
            .D(n1603), .Z(n1604)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i859_3_lut_4_lut.init = 16'hff20;
    ORCALUT4 i2_2_lut_rep_58_3_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(n4), .Z(n3797)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i2_2_lut_rep_58_3_lut.init = 16'h2020;
    ORCALUT4 i812_2_lut_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(\r_Total_Count[0] ), .D(n4), .Z(n484)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A (C)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i812_2_lut_3_lut_4_lut.init = 16'hd2f0;
    ORCALUT4 i1_2_lut_rep_54_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(n82), .D(n4), .Z(n3793)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i1_2_lut_rep_54_3_lut_4_lut.init = 16'h2000;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(n82), .D(n4), .Z(n7)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hd0f0;
    ORCALUT4 i76_2_lut_rep_59_3_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(r_Stop_N_212), .Z(n3798)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i76_2_lut_rep_59_3_lut.init = 16'h2020;
    ORCALUT4 i271_2_lut_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(o_Master_Trig_N_194), .D(r_Stop_N_212), .Z(n638)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i271_2_lut_3_lut_4_lut.init = 16'hd0f0;
    ORCALUT4 i338_3_lut_rep_62_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(r_Stop_N_212), .D(n81), .Z(n3801)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i338_3_lut_rep_62_4_lut.init = 16'h2f20;
    ORCALUT4 i479_1_lut_3_lut_4_lut (.A(r_State_2__N_224), .B(r_TX_Valid), 
            .C(r_Stop_N_212), .D(n81), .Z(n635)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(137[24:55])
    defparam i479_1_lut_3_lut_4_lut.init = 16'hd0df;
    ORCALUT4 i28_4_lut (.A(r_State_2__N_226), .B(n13), .C(r_delay[0]), 
            .D(n3812), .Z(r_delay_3__N_219[0])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i28_4_lut.init = 16'hcac0;
    ORCALUT4 i1_3_lut_4_lut (.A(r_State_2__N_225), .B(w_Master_Ready), .C(n1603), 
            .D(r_State_2__N_224), .Z(n13)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i1_3_lut_4_lut.init = 16'hfff2;
    ORCALUT4 i855_3_lut_4_lut (.A(r_State_2__N_225), .B(w_Master_Ready), 
            .C(r_State_2__N_224), .D(n3820), .Z(n1600)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i855_3_lut_4_lut.init = 16'hf222;
    ORCALUT4 i2_3_lut_rep_73 (.A(r_delay[1]), .B(r_delay[2]), .C(r_delay[3]), 
            .Z(n3812)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_73.init = 16'hfefe;
    ORCALUT4 i858_2_lut (.A(r_State_2__N_223), .B(r_Start), .Z(n1603)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(76[7] 130[14])
    defparam i858_2_lut.init = 16'h2222;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_29 (.A(r_delay[1]), .B(r_delay[2]), 
            .C(r_delay[3]), .D(r_delay[0]), .Z(n1856)) /* synthesis lut_function=(!(A (D)+!A !(B (D)+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_29.init = 16'h55ab;
    ORCALUT4 i1_2_lut_4_lut (.A(r_delay[1]), .B(r_delay[2]), .C(r_delay[3]), 
            .D(r_delay[0]), .Z(n1131)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i704_2_lut_rep_56_3_lut_4_lut (.A(r_delay[1]), .B(r_delay[2]), 
            .C(r_delay[3]), .D(r_delay[0]), .Z(n3795)) /* synthesis lut_function=(A+(B (D)+!B ((D)+!C))) */ ;
    defparam i704_2_lut_rep_56_3_lut_4_lut.init = 16'hffab;
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(r_delay[1]), .B(r_delay[2]), .C(r_delay[3]), 
            .D(r_delay[0]), .Z(n1848)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0f1f;
    \SPI_Master(CLKS_PER_HALF_BIT=4)  SPI_Master_Inst (.i_fpga_clock_c(i_fpga_clock_c), 
            .o_RX_Data({o_RX_Data}), .i_SPI_MISO_c(i_SPI_MISO_c), .r_TX_Valid(r_TX_Valid), 
            .r_TX_Data({r_TX_Data}), .w_Master_Ready(w_Master_Ready), .w_SPI_Clk(w_SPI_Clk), 
            .w_SPI_MOSI(w_SPI_MOSI), .r_RX_Valid(r_RX_Valid), .fpga_resetn(fpga_resetn), 
            .n3824(n3824), .\w_ptr[0] (\w_ptr[0] ), .fifo_N_385(fifo_N_385), 
            .n11(n11), .n82(n82), .n3797(n3797), .n3776(n3776), .i_fpga_clock_c_enable_26(i_fpga_clock_c_enable_26), 
            .empty_N_383(empty_N_383), .FIFO_ready(FIFO_ready), .i_fpga_clock_c_enable_19(i_fpga_clock_c_enable_19), 
            .\r_ptr[0] (\r_ptr[0] ), .n11_adj_1(n11_adj_2), .i_fpga_clock_c_enable_67(i_fpga_clock_c_enable_67), 
            .n84(n84), .n3787(n3787), .n102(n102), .i_fpga_clock_c_enable_10(i_fpga_clock_c_enable_10), 
            .n83(n83), .n3782(n3782), .n3780(n3780), .i_fpga_clock_c_enable_57(i_fpga_clock_c_enable_57)) /* synthesis syn_module_defined=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master_With_Single_CS.v(43[9] 62[5])
    
endmodule
//
// Verilog Description of module \SPI_Master(CLKS_PER_HALF_BIT=4) 
//

module \SPI_Master(CLKS_PER_HALF_BIT=4)  (i_fpga_clock_c, o_RX_Data, i_SPI_MISO_c, 
            r_TX_Valid, r_TX_Data, w_Master_Ready, w_SPI_Clk, w_SPI_MOSI, 
            r_RX_Valid, fpga_resetn, n3824, \w_ptr[0] , fifo_N_385, 
            n11, n82, n3797, n3776, i_fpga_clock_c_enable_26, empty_N_383, 
            FIFO_ready, i_fpga_clock_c_enable_19, \r_ptr[0] , n11_adj_1, 
            i_fpga_clock_c_enable_67, n84, n3787, n102, i_fpga_clock_c_enable_10, 
            n83, n3782, n3780, i_fpga_clock_c_enable_57) /* synthesis syn_module_defined=1 */ ;
    input i_fpga_clock_c;
    output [7:0]o_RX_Data;
    input i_SPI_MISO_c;
    input r_TX_Valid;
    input [7:0]r_TX_Data;
    output w_Master_Ready;
    output w_SPI_Clk;
    output w_SPI_MOSI;
    output r_RX_Valid;
    input fpga_resetn;
    output n3824;
    input \w_ptr[0] ;
    input fifo_N_385;
    output n11;
    input n82;
    input n3797;
    input n3776;
    output i_fpga_clock_c_enable_26;
    input empty_N_383;
    input FIFO_ready;
    output i_fpga_clock_c_enable_19;
    input \r_ptr[0] ;
    output n11_adj_1;
    output i_fpga_clock_c_enable_67;
    input n84;
    input n3787;
    input n102;
    output i_fpga_clock_c_enable_10;
    input n83;
    input n3782;
    input n3780;
    output i_fpga_clock_c_enable_57;
    
    wire i_fpga_clock_c /* synthesis SET_AS_NETWORK=i_fpga_clock_c, is_clock=1 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/system_top.v(2[13:25])
    wire [2:0]r_SPI_Clk_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(27[41:56])
    
    wire n1180;
    wire [2:0]n12;
    
    wire i_fpga_clock_c_enable_1, i_fpga_clock_c_enable_2;
    wire [7:0]r_TX_Byte;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(33[13:22])
    wire [4:0]r_SPI_Clk_Edges;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(29[13:28])
    wire [4:0]r_SPI_Clk_Edges_4__N_298;
    
    wire i_fpga_clock_c_enable_4;
    wire [2:0]r_RX_Bit_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(35[13:27])
    
    wire n1678, r_TX_DV;
    wire [2:0]r_TX_Bit_Count;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(36[13:27])
    wire [2:0]r_TX_Bit_Count_2__N_306;
    
    wire r_SPI_Clk, i_fpga_clock_c_enable_9, o_SPI_MOSI_N_327, n5, n3807, 
        r_Leading_Edge, n3179, n3804, n3813, n3806, n3819, n3818, 
        i_fpga_clock_c_enable_69, r_SPI_Clk_N_332, i_fpga_clock_c_enable_36, 
        n3399;
    wire [2:0]n32;
    
    wire n3803, n1, n4, n6, n3516, r_Trailing_Edge, n1695, n1866, 
        n1868, n1870, n1872, n2015, n1858, n1850, n1864, n2049, 
        n2, o_SPI_MOSI_N_329, n1999, n6_adj_660, i_fpga_clock_c_enable_71, 
        i_fpga_clock_c_enable_73, i_fpga_clock_c_enable_74, i_fpga_clock_c_enable_72, 
        i_fpga_clock_c_enable_70, n3515, n8_adj_661;
    
    FD1S3IX r_SPI_Clk_Count__i0 (.D(n12[0]), .CK(i_fpga_clock_c), .CD(n1180), 
            .Q(r_SPI_Clk_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Count__i0.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i6 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_1), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i7 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_2), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i0 (.D(r_TX_Data[0]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i0.GSR = "ENABLED";
    FD1S3IX r_SPI_Clk_Edges_i0 (.D(r_SPI_Clk_Edges_4__N_298[0]), .CK(i_fpga_clock_c), 
            .CD(r_TX_Valid), .Q(r_SPI_Clk_Edges[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Edges_i0.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i0 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_4), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i0.GSR = "ENABLED";
    FD1S3JX r_RX_Bit_Count_i0_i0 (.D(n1678), .CK(i_fpga_clock_c), .PD(w_Master_Ready), 
            .Q(r_RX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam r_RX_Bit_Count_i0_i0.GSR = "ENABLED";
    FD1S3AX r_TX_DV_88 (.D(r_TX_Valid), .CK(i_fpga_clock_c), .Q(r_TX_DV)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_DV_88.GSR = "ENABLED";
    FD1S3JX r_TX_Bit_Count_i0 (.D(r_TX_Bit_Count_2__N_306[0]), .CK(i_fpga_clock_c), 
            .PD(w_Master_Ready), .Q(r_TX_Bit_Count[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(125[5] 141[8])
    defparam r_TX_Bit_Count_i0.GSR = "ENABLED";
    FD1S3AX o_SPI_Clk_95 (.D(r_SPI_Clk), .CK(i_fpga_clock_c), .Q(w_SPI_Clk)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(184[7] 186[10])
    defparam o_SPI_Clk_95.GSR = "ENABLED";
    FD1P3AX o_SPI_MOSI_89 (.D(o_SPI_MOSI_N_327), .SP(i_fpga_clock_c_enable_9), 
            .CK(i_fpga_clock_c), .Q(w_SPI_MOSI)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(125[5] 141[8])
    defparam o_SPI_MOSI_89.GSR = "ENABLED";
    ORCALUT4 i1772_2_lut (.A(r_TX_Byte[6]), .B(r_TX_Bit_Count[0]), .Z(n5)) /* synthesis lut_function=(!((B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(139[37:51])
    defparam i1772_2_lut.init = 16'h2222;
    FD1S3IX o_TX_Ready_81 (.D(n3807), .CK(i_fpga_clock_c), .CD(r_TX_Valid), 
            .Q(w_Master_Ready)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam o_TX_Ready_81.GSR = "ENABLED";
    FD1S3IX r_Leading_Edge_83 (.D(n3804), .CK(i_fpga_clock_c), .CD(n3179), 
            .Q(r_Leading_Edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_Leading_Edge_83.GSR = "ENABLED";
    FD1S3IX o_RX_Valid_93 (.D(n3806), .CK(i_fpga_clock_c), .CD(n3813), 
            .Q(r_RX_Valid)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Valid_93.GSR = "ENABLED";
    ORCALUT4 i452_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Count[2]), .B(n3819), 
            .C(r_TX_Valid), .D(n3807), .Z(n1180)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i452_2_lut_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i1_2_lut_rep_79 (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[1]), 
            .Z(n3818)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i1_2_lut_rep_79.init = 16'heeee;
    ORCALUT4 i2625_2_lut_rep_67_3_lut (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[1]), 
            .C(r_RX_Bit_Count[0]), .Z(n3806)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i2625_2_lut_rep_67_3_lut.init = 16'h0101;
    ORCALUT4 i679_2_lut_rep_80 (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .Z(n3819)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i679_2_lut_rep_80.init = 16'h8888;
    ORCALUT4 i847_2_lut_3_lut_3_lut_4_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(r_SPI_Clk_Edges[0]), .D(n3807), .Z(r_SPI_Clk_Edges_4__N_298[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (C)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i847_2_lut_3_lut_3_lut_4_lut.init = 16'hf078;
    FD1P3AX r_SPI_Clk_85 (.D(r_SPI_Clk_N_332), .SP(i_fpga_clock_c_enable_69), 
            .CK(i_fpga_clock_c), .Q(r_SPI_Clk)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_85.GSR = "ENABLED";
    ORCALUT4 i229_2_lut_rep_46_2_lut_3_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(n3807), .Z(i_fpga_clock_c_enable_36)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i229_2_lut_rep_46_2_lut_3_lut.init = 16'h0808;
    ORCALUT4 i2622_2_lut_rep_65_3_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(r_SPI_Clk_Count[2]), .Z(n3804)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i2622_2_lut_rep_65_3_lut.init = 16'h0808;
    ORCALUT4 i15_2_lut_3_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(r_SPI_Clk_Count[2]), .Z(n3399)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i15_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i1774_3_lut_4_lut_2_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .Z(n32[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i1774_3_lut_4_lut_2_lut.init = 16'h6666;
    ORCALUT4 i2601_2_lut_3_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(r_SPI_Clk), .Z(r_SPI_Clk_N_332)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i2601_2_lut_3_lut.init = 16'h7878;
    ORCALUT4 i1879_2_lut_rep_64_3_lut (.A(r_SPI_Clk_Count[1]), .B(r_SPI_Clk_Count[0]), 
            .C(r_SPI_Clk_Count[2]), .Z(n3803)) /* synthesis lut_function=(A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(84[30:52])
    defparam i1879_2_lut_rep_64_3_lut.init = 16'h8080;
    ORCALUT4 r_TX_Bit_Count_2__I_0_i1_3_lut (.A(r_TX_Byte[0]), .B(r_TX_Byte[1]), 
            .C(r_TX_Bit_Count[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(139[37:51])
    defparam r_TX_Bit_Count_2__I_0_i1_3_lut.init = 16'hcaca;
    ORCALUT4 rstn_I_0_1_lut_rep_85 (.A(fpga_resetn), .Z(n3824)) /* synthesis lut_function=(!(A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam rstn_I_0_1_lut_rep_85.init = 16'h5555;
    ORCALUT4 i846_2_lut_3_lut_3_lut (.A(fpga_resetn), .B(\w_ptr[0] ), .C(fifo_N_385), 
            .Z(n11)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i846_2_lut_3_lut_3_lut.init = 16'h3939;
    ORCALUT4 i409_4_lut_4_lut (.A(fpga_resetn), .B(n82), .C(n3797), .D(n3776), 
            .Z(i_fpga_clock_c_enable_26)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i409_4_lut_4_lut.init = 16'hf7d5;
    ORCALUT4 i411_3_lut_rep_53_3_lut (.A(fpga_resetn), .B(empty_N_383), 
            .C(FIFO_ready), .Z(i_fpga_clock_c_enable_19)) /* synthesis lut_function=((B (C))+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i411_3_lut_rep_53_3_lut.init = 16'hd5d5;
    ORCALUT4 i849_2_lut_4_lut_4_lut (.A(fpga_resetn), .B(\r_ptr[0] ), .C(empty_N_383), 
            .D(FIFO_ready), .Z(n11_adj_1)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i849_2_lut_4_lut_4_lut.init = 16'h3999;
    ORCALUT4 i414_2_lut_rep_47_2_lut (.A(fpga_resetn), .B(fifo_N_385), .Z(i_fpga_clock_c_enable_67)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i414_2_lut_rep_47_2_lut.init = 16'hdddd;
    ORCALUT4 r_TX_Bit_Count_2__I_0_i4_3_lut (.A(r_TX_Byte[4]), .B(r_TX_Byte[5]), 
            .C(r_TX_Bit_Count[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(139[37:51])
    defparam r_TX_Bit_Count_2__I_0_i4_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut (.A(r_SPI_Clk_Edges[3]), .B(r_SPI_Clk_Edges[1]), .Z(n6)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    ORCALUT4 i1_4_lut_4_lut (.A(fpga_resetn), .B(n84), .C(n3787), .D(n102), 
            .Z(i_fpga_clock_c_enable_10)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i1_4_lut_4_lut.init = 16'hf7d5;
    ORCALUT4 i407_2_lut_4_lut_4_lut (.A(fpga_resetn), .B(n83), .C(n3782), 
            .D(n3780), .Z(i_fpga_clock_c_enable_57)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/fsk_gen.v(64[9:14])
    defparam i407_2_lut_4_lut_4_lut.init = 16'hf7d5;
    PFUMX i2590 (.BLUT(n4), .ALUT(n5), .C0(r_TX_Bit_Count[1]), .Z(n3516));
    ORCALUT4 i1045_2_lut (.A(r_RX_Bit_Count[0]), .B(r_Leading_Edge), .Z(n1678)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam i1045_2_lut.init = 16'h6666;
    FD1P3JX r_TX_Bit_Count_i2 (.D(n1866), .SP(r_Trailing_Edge), .PD(n1695), 
            .CK(i_fpga_clock_c), .Q(r_TX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(125[5] 141[8])
    defparam r_TX_Bit_Count_i2.GSR = "ENABLED";
    FD1P3JX r_TX_Bit_Count_i1 (.D(n1868), .SP(r_Trailing_Edge), .PD(n1695), 
            .CK(i_fpga_clock_c), .Q(r_TX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(125[5] 141[8])
    defparam r_TX_Bit_Count_i1.GSR = "ENABLED";
    FD1P3JX r_RX_Bit_Count_i0_i2 (.D(n1870), .SP(r_Leading_Edge), .PD(w_Master_Ready), 
            .CK(i_fpga_clock_c), .Q(r_RX_Bit_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam r_RX_Bit_Count_i0_i2.GSR = "ENABLED";
    FD1P3JX r_RX_Bit_Count_i0_i1 (.D(n1872), .SP(r_Leading_Edge), .PD(w_Master_Ready), 
            .CK(i_fpga_clock_c), .Q(r_RX_Bit_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam r_RX_Bit_Count_i0_i1.GSR = "ENABLED";
    FD1S3AX r_SPI_Clk_Edges_i4 (.D(n2015), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Edges[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Edges_i4.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i3 (.D(n1858), .SP(i_fpga_clock_c_enable_36), 
            .CD(r_TX_Valid), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Edges[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Edges_i3.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i2 (.D(n1850), .SP(i_fpga_clock_c_enable_36), 
            .CD(r_TX_Valid), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Edges[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Edges_i2.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Edges_i1 (.D(n1864), .SP(i_fpga_clock_c_enable_36), 
            .CD(r_TX_Valid), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Edges[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Edges_i1.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i7 (.D(r_TX_Data[7]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i7.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i6 (.D(r_TX_Data[6]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i6.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i5 (.D(r_TX_Data[5]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i5.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i4 (.D(r_TX_Data[4]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i3 (.D(r_TX_Data[3]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i2 (.D(r_TX_Data[2]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i2.GSR = "ENABLED";
    FD1P3AX r_TX_Byte_i0_i1 (.D(r_TX_Data[1]), .SP(r_TX_Valid), .CK(i_fpga_clock_c), 
            .Q(r_TX_Byte[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(106[7] 112[10])
    defparam r_TX_Byte_i0_i1.GSR = "ENABLED";
    ORCALUT4 i862_2_lut_rep_52 (.A(n3807), .B(r_TX_Valid), .Z(i_fpga_clock_c_enable_69)) /* synthesis lut_function=(!(A+(B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam i862_2_lut_rep_52.init = 16'h1111;
    ORCALUT4 i1046_2_lut_3_lut (.A(n3807), .B(r_TX_Valid), .C(r_SPI_Clk_Count[0]), 
            .Z(n12[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam i1046_2_lut_3_lut.init = 16'he1e1;
    ORCALUT4 i1713_3_lut (.A(r_TX_Bit_Count[0]), .B(r_TX_DV), .C(r_Trailing_Edge), 
            .Z(r_TX_Bit_Count_2__N_306[0])) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(136[12] 140[10])
    defparam i1713_3_lut.init = 16'h1212;
    ORCALUT4 i1302_1_lut_2_lut (.A(n3807), .B(r_TX_Valid), .Z(n2049)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam i1302_1_lut_2_lut.init = 16'heeee;
    ORCALUT4 r_TX_Bit_Count_2__I_0_i2_3_lut (.A(r_TX_Byte[2]), .B(r_TX_Byte[3]), 
            .C(r_TX_Bit_Count[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(139[37:51])
    defparam r_TX_Bit_Count_2__I_0_i2_3_lut.init = 16'hcaca;
    ORCALUT4 i2619_3_lut (.A(r_Trailing_Edge), .B(w_Master_Ready), .C(r_TX_DV), 
            .Z(i_fpga_clock_c_enable_9)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i2619_3_lut.init = 16'h3232;
    ORCALUT4 o_SPI_MOSI_I_9_4_lut (.A(o_SPI_MOSI_N_329), .B(r_TX_Byte[7]), 
            .C(n1999), .D(r_Trailing_Edge), .Z(o_SPI_MOSI_N_327)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(136[12] 140[10])
    defparam o_SPI_MOSI_I_9_4_lut.init = 16'hcac0;
    ORCALUT4 i1252_4_lut (.A(r_TX_Bit_Count[0]), .B(r_TX_DV), .C(n6_adj_660), 
            .D(r_Trailing_Edge), .Z(n1999)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1252_4_lut.init = 16'heccc;
    FD1P3IX r_SPI_Clk_Count__i2 (.D(n3399), .SP(i_fpga_clock_c_enable_69), 
            .CD(n1180), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Count[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Count__i2.GSR = "ENABLED";
    FD1P3IX r_SPI_Clk_Count__i1 (.D(n32[1]), .SP(i_fpga_clock_c_enable_69), 
            .CD(n1180), .CK(i_fpga_clock_c), .Q(r_SPI_Clk_Count[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_SPI_Clk_Count__i1.GSR = "ENABLED";
    ORCALUT4 i2_2_lut (.A(r_TX_Bit_Count[2]), .B(r_TX_Bit_Count[1]), .Z(n6_adj_660)) /* synthesis lut_function=(A (B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(136[12] 140[10])
    defparam i2_2_lut.init = 16'h8888;
    ORCALUT4 i2632_3_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(n3813), .C(r_RX_Bit_Count[2]), 
            .D(r_RX_Bit_Count[1]), .Z(i_fpga_clock_c_enable_1)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i2632_3_lut_4_lut.init = 16'h1000;
    ORCALUT4 i2642_3_lut_4_lut (.A(r_RX_Bit_Count[0]), .B(n3813), .C(r_RX_Bit_Count[1]), 
            .D(r_RX_Bit_Count[2]), .Z(i_fpga_clock_c_enable_71)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i2642_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i2_3_lut_4_lut (.A(r_SPI_Clk_Count[2]), .B(n3819), .C(r_TX_Valid), 
            .D(n3807), .Z(n3179)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfff8;
    ORCALUT4 i1_3_lut (.A(r_TX_Bit_Count[2]), .B(r_TX_Bit_Count[1]), .C(r_TX_Bit_Count[0]), 
            .Z(n1866)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha9a9;
    ORCALUT4 i950_2_lut (.A(r_TX_DV), .B(w_Master_Ready), .Z(n1695)) /* synthesis lut_function=(A+(B)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(131[12] 140[10])
    defparam i950_2_lut.init = 16'heeee;
    FD1S3IX r_Trailing_Edge_84 (.D(n3803), .CK(i_fpga_clock_c), .CD(n2049), 
            .Q(r_Trailing_Edge)) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam r_Trailing_Edge_84.GSR = "ENABLED";
    ORCALUT4 i2637_2_lut_4_lut (.A(n3813), .B(r_RX_Bit_Count[2]), .C(r_RX_Bit_Count[1]), 
            .D(r_RX_Bit_Count[0]), .Z(i_fpga_clock_c_enable_73)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i2637_2_lut_4_lut.init = 16'h0004;
    ORCALUT4 i2634_2_lut_4_lut (.A(n3813), .B(r_RX_Bit_Count[2]), .C(r_RX_Bit_Count[1]), 
            .D(r_RX_Bit_Count[0]), .Z(i_fpga_clock_c_enable_74)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(165[9:34])
    defparam i2634_2_lut_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_adj_21 (.A(r_TX_Bit_Count[1]), .B(r_TX_Bit_Count[0]), 
            .Z(n1868)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_21.init = 16'h9999;
    ORCALUT4 i1885_2_lut_3_lut_4_lut (.A(n3813), .B(r_RX_Bit_Count[0]), 
            .C(r_RX_Bit_Count[2]), .D(r_RX_Bit_Count[1]), .Z(i_fpga_clock_c_enable_2)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1885_2_lut_3_lut_4_lut.init = 16'h4000;
    ORCALUT4 i2639_2_lut_3_lut_4_lut (.A(n3813), .B(r_RX_Bit_Count[0]), 
            .C(r_RX_Bit_Count[2]), .D(r_RX_Bit_Count[1]), .Z(i_fpga_clock_c_enable_72)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2639_2_lut_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i2611_4_lut_rep_68 (.A(r_SPI_Clk_Edges[2]), .B(r_SPI_Clk_Edges[4]), 
            .C(r_SPI_Clk_Edges[0]), .D(n6), .Z(n3807)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(88[7] 90[10])
    defparam i2611_4_lut_rep_68.init = 16'h0001;
    FD1P3AX o_RX_Byte_i0_i1 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_70), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i1.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i2 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_71), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i2.GSR = "ENABLED";
    L6MUX21 i2591 (.D0(n3515), .D1(n3516), .SD(r_TX_Bit_Count[2]), .Z(o_SPI_MOSI_N_329));
    PFUMX i2589 (.BLUT(n1), .ALUT(n2), .C0(r_TX_Bit_Count[1]), .Z(n3515));
    FD1P3AX o_RX_Byte_i0_i3 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_72), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i3.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i4 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_73), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i4.GSR = "ENABLED";
    FD1P3AX o_RX_Byte_i0_i5 (.D(i_SPI_MISO_c), .SP(i_fpga_clock_c_enable_74), 
            .CK(i_fpga_clock_c), .Q(o_RX_Data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=9, LSE_RCOL=5, LSE_LLINE=43, LSE_RLINE=62 */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(155[5] 172[8])
    defparam o_RX_Byte_i0_i5.GSR = "ENABLED";
    ORCALUT4 i935_2_lut_3_lut_3_lut_4_lut (.A(r_Leading_Edge), .B(w_Master_Ready), 
            .C(r_RX_Bit_Count[0]), .D(n3818), .Z(i_fpga_clock_c_enable_4)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(163[12] 171[10])
    defparam i935_2_lut_3_lut_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_3_lut_adj_22 (.A(r_RX_Bit_Count[2]), .B(r_RX_Bit_Count[1]), 
            .C(r_RX_Bit_Count[0]), .Z(n1870)) /* synthesis lut_function=(A (B+(C))+!A !(B+(C))) */ ;
    defparam i1_3_lut_adj_22.init = 16'ha9a9;
    ORCALUT4 i1_2_lut_adj_23 (.A(r_RX_Bit_Count[1]), .B(r_RX_Bit_Count[0]), 
            .Z(n1872)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_23.init = 16'h9999;
    ORCALUT4 i1722_4_lut (.A(r_SPI_Clk_Edges[4]), .B(r_TX_Valid), .C(n8_adj_661), 
            .D(i_fpga_clock_c_enable_36), .Z(n2015)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+!(C+!(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(53[5] 93[8])
    defparam i1722_4_lut.init = 16'hedee;
    ORCALUT4 i1_2_lut_adj_24 (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
            .Z(n1864)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'h9999;
    ORCALUT4 i1_2_lut_3_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
            .C(r_SPI_Clk_Edges[2]), .Z(n1850)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(77[30:52])
    defparam i1_2_lut_3_lut.init = 16'he1e1;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
            .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n1858)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(77[30:52])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    ORCALUT4 i752_2_lut_3_lut_4_lut (.A(r_SPI_Clk_Edges[1]), .B(r_SPI_Clk_Edges[0]), 
            .C(r_SPI_Clk_Edges[3]), .D(r_SPI_Clk_Edges[2]), .Z(n8_adj_661)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(77[30:52])
    defparam i752_2_lut_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i2653_2_lut_rep_74 (.A(r_Leading_Edge), .B(w_Master_Ready), 
            .Z(n3813)) /* synthesis lut_function=((B)+!A) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(163[12] 171[10])
    defparam i2653_2_lut_rep_74.init = 16'hdddd;
    ORCALUT4 i2644_2_lut_2_lut_3_lut_4_lut (.A(r_Leading_Edge), .B(w_Master_Ready), 
            .C(n3818), .D(r_RX_Bit_Count[0]), .Z(i_fpga_clock_c_enable_70)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // /home/jam/Downloads/fsk_spi/FSK_Transmitter/impl1/source/sources_1/SPI_Master.v(163[12] 171[10])
    defparam i2644_2_lut_2_lut_3_lut_4_lut.init = 16'h0200;
    
endmodule

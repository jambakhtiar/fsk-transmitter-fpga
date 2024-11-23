// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Fri Aug 16 12:23:25 2024
//
// Verilog Description of module PLL_BASE
//

module PLL_BASE (CLKI, CLKOP) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(8[8:16])
    input CLKI;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(9[16:20])
    output CLKOP;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(10[17:22])
    
    wire CLKI_c /* synthesis is_clock=1 */ ;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(9[16:20])
    wire CLKOP_c /* synthesis is_clock=1 */ ;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(10[17:22])
    
    wire LOCK, GND_net, VCC_net;
    
    IB CLKI_pad (.I(CLKI), .O(CLKI_c));   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(9[16:20])
    EHXPLLJ PLLInst_0 (.CLKI(CLKI_c), .CLKFB(CLKOP_c), .PHASESEL1(GND_net), 
            .PHASESEL0(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .LOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .RESETM(GND_net), .RESETC(GND_net), .RESETD(GND_net), 
            .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .PLLCLK(GND_net), .PLLRST(GND_net), .PLLSTB(GND_net), 
            .PLLWE(GND_net), .PLLADDR4(GND_net), .PLLADDR3(GND_net), .PLLADDR2(GND_net), 
            .PLLADDR1(GND_net), .PLLADDR0(GND_net), .PLLDATI7(GND_net), 
            .PLLDATI6(GND_net), .PLLDATI5(GND_net), .PLLDATI4(GND_net), 
            .PLLDATI3(GND_net), .PLLDATI2(GND_net), .PLLDATI1(GND_net), 
            .PLLDATI0(GND_net), .CLKOP(CLKOP_c), .LOCK(LOCK)) /* synthesis FREQUENCY_PIN_CLKOP="13.000000", FREQUENCY_PIN_CLKI="26.000000", ICP_CURRENT="8", LPF_RESISTOR="8", syn_instantiated=1 */ ;   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(64[13] 77[47])
    defparam PLLInst_0.DDRST_ENA = "DISABLED";
    defparam PLLInst_0.DCRST_ENA = "DISABLED";
    defparam PLLInst_0.MRST_ENA = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLL_USE_WB = "DISABLED";
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOP_CPHASE = 39;
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "RISING";
    defparam PLLInst_0.FRACN_DIV = 0;
    defparam PLLInst_0.FRACN_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXD2 = "DIVD";
    defparam PLLInst_0.PREDIVIDER_MUXD1 = 0;
    defparam PLLInst_0.VCO_BYPASS_D0 = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXC2 = "DIVC";
    defparam PLLInst_0.PREDIVIDER_MUXC1 = 0;
    defparam PLLInst_0.VCO_BYPASS_C0 = "DISABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXB2 = "DIVB";
    defparam PLLInst_0.PREDIVIDER_MUXB1 = 0;
    defparam PLLInst_0.VCO_BYPASS_B0 = "DISABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXA2 = "DIVA";
    defparam PLLInst_0.PREDIVIDER_MUXA1 = 0;
    defparam PLLInst_0.VCO_BYPASS_A0 = "DISABLED";
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 40;
    defparam PLLInst_0.CLKFB_DIV = 1;
    defparam PLLInst_0.CLKI_DIV = 2;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    VHI i13 (.Z(VCC_net));
    OB CLKOP_pad (.I(CLKOP_c), .O(CLKOP));   // /home/jam/Downloads/MCUtoFPGA/FSK_Transmitter/impl1/source/PLL_BASE.v(10[17:22])
    GSR GSR_INST (.GSR(VCC_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    VLO i4 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module EHXPLLJ
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//


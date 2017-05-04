# Hermes.sdc
#
#
#
#**************************************************************
# Time Information
#**************************************************************
set_time_format -unit ns -decimal_places 3


#**************************************************************************************
# Create Clock
#**************************************************************************************
# externally generated clocks (with respect to the FPGA)
#
create_clock -name AD9866clk -period 73.728MHz [get_ports {AD9866clk}]
create_clock -name clk       -period 24.000MHz [get_ports {clk}]

create_clock -name clk50mhz     -period 20     [get_ports {clk50mhz}]
create_clock -name PHY_RX_CLOCK -period 40 -waveform {5 25} [get_ports {PHY_RX_CLOCK}]

#create_clock -period 73.728MHz [get_ports ad9866_rxclk] -name ad9866_rxclk
#create_clock -period 73.728MHz [get_ports ad9866_txclk] -name ad9866_txclk

#virtual base clocks on required inputs
create_clock -name virt_PHY_RX_CLOCK 	-period 40.0


#*************************************************************************************
# Create Generated Clock
#*************************************************************************************
# internally generated clocks
#
#derive_pll_clocks -use_net_name
#derive_clock_uncertainty

## pll clocks from derive_pll_clocks with better names
create_generated_clock -name clock_2_5MHz  -source [get_ports {clk50mhz}] -divide_by 20           [get_pins {hermes_lite_core_inst|ethernet_inst|network_inst|rgmii_send_inst|phyclocks_inst|phyclocks_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]
create_generated_clock -name clock_12_5MHz -source [get_ports {clk50mhz}] -divide_by 4            [get_pins {hermes_lite_core_inst|ethernet_inst|network_inst|rgmii_send_inst|phyclocks_inst|phyclocks_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk}]
create_generated_clock -name PHY_TX_CLOCK  -source [get_ports {clk50mhz}] -divide_by 2 -phase 180 [get_pins {hermes_lite_core_inst|ethernet_inst|network_inst|rgmii_send_inst|phyclocks_inst|phyclocks_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]

create_generated_clock -name IF_clk        -source [get_ports {clk}] -multiply_by 2               [get_pins {ifclocks_cv_inst|ifclocks_cv_inst|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER|divclk}]
create_generated_clock -name testAD9866clk -source [get_ports {clk}] -divide_by 7 -multiply_by 18 [get_pins {ifclocks_cv_inst|ifclocks_cv_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER|divclk}]
create_generated_clock -name slowclk       -source [get_ports {clk}] -divide_by 8                 [get_pins {ifclocks_cv_inst|ifclocks_cv_inst|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER|divclk}]


#**************************************************************
# Create Generated Clock (internal to the FPGA)
#**************************************************************
# NOTE: Whilst derive_pll_clocks constrains PLL clocks if these are connected to an FPGA output pin then a generated
# clock needs to be attached to the pin and a false path set to it

create_generated_clock -name rx_clock -master_clock PHY_RX_CLOCK -source [get_pins {hermes_lite_core_inst|ethernet_inst|network_inst|rgmii_recv_inst|rx_clock|clk}] -divide_by 2 [get_pins {hermes_lite_core_inst|ethernet_inst|network_inst|rgmii_recv_inst|rx_clock|q}]

create_generated_clock -divide_by 20 -source AD9866clk -name BCLK {hermes_lite_core:hermes_lite_core_inst|Hermes_clk_lrclk_gen:clrgen|BCLK}


derive_clock_uncertainty

#************************************************************** 
# Set Input Delay
#**************************************************************

# If setup and hold delays are equal then only need to specify once without max or min 

#PHY Data in 
set_input_delay  -max 0.8  -clock virt_PHY_RX_CLOCK [get_ports {PHY_RX[*] RX_DV}]
set_input_delay  -min -0.8 -clock virt_PHY_RX_CLOCK -add_delay [get_ports {PHY_RX[*] RX_DV}]
set_input_delay  -max 0.8  -clock virt_PHY_RX_CLOCK -clock_fall -add_delay [get_ports {PHY_RX[*] RX_DV}]
set_input_delay  -min -0.8 -clock virt_PHY_RX_CLOCK -clock_fall -add_delay [get_ports {PHY_RX[*] RX_DV}]


#PHY PHY_MDIO Data in +/- 10nS setup and hold
#set_input_delay  10  -clock clock_2_5MHz {PHY_INT_N}
set_input_delay  10  -clock clock_2_5MHz -reference_pin [get_ports PHY_MDC] {PHY_MDIO}


#**************************************************************
# Set Output Delay
#**************************************************************

# If setup and hold delays are equal then only need to specify once without max or min 

#PHY
set_output_delay  -max 10  -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]
set_output_delay  -min -20 -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]  -add_delay
#0423# set_output_delay  -max 1.0  -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]
#0423# set_output_delay  -min -0.8 -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]  -add_delay
#0423# set_output_delay  -max 1.0  -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]  -clock_fall -add_delay
#0423# set_output_delay  -min -0.8 -clock PHY_TX_CLOCK [get_ports {PHY_TX[*] PHY_TX_EN}]  -clock_fall -add_delay

#PHY (2.5MHz)
set_output_delay  10 -clock clock_2_5MHz -reference_pin [get_ports PHY_MDC] {PHY_MDIO}


#*************************************************************************************
# Set Clock Groups
#*************************************************************************************

set_clock_groups -asynchronous \
					-group { clk50mhz PHY_TX_CLOCK clock_12_5MHz clock_2_5MHz } \
					-group { clk IF_clk slowclk } \
					-group { testAD9866clk } \
					-group { PHY_RX_CLOCK rx_clock } \
					-group { AD9866clk BCLK }


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_clocks {clock_12_5MHz}] \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|ip_send:ip_send_inst|shift_reg[*]} 21

set_max_delay -from {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|ip_send:ip_send_inst|*} \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|ip_send:ip_send_inst|shift_reg[*]} 7.9

set_max_delay -through [get_nets {hermes_lite_core_inst|ethernet_inst|network_inst|ip_tx_enable*}] \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|ip_send:ip_send_inst|shift_reg[*]} 7.9
	
	
set_max_delay -from [get_clocks {clock_12_5MHz}] \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|mac_send:mac_send_inst|shift_reg[*]} 21
	
set_max_delay -from {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|mac_send:mac_send_inst|*} \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|mac_send:mac_send_inst|shift_reg[*]} 7.9

set_max_delay -through [get_nets {hermes_lite_core_inst|ethernet_inst|network_inst|mac_tx_enable}] \
	-to {hermes_lite_core:hermes_lite_core_inst|ethernet:ethernet_inst|network:network_inst|mac_send:mac_send_inst|shift_reg[*]} 7.9
	
#set_max_delay -from PHY_TX_CLOCK -to PHY_TX_CLOCK 21
#set_max_delay -from PHY_TX_CLOCK -to tx_output_clock 3

#set_max_delay -from clock_2_5MHz -to PHY_TX_CLOCK 22 

#set_max_delay -from PHY_RX_CLOCK -to PHY_RX_CLOCK 10



#**************************************************************
# Set Minimum Delay
#**************************************************************

#set_min_delay -from clock_90_125MHz -to tx_output_clock -2

#set_min_delay -from PHY_RX_CLOCK -to PHY_RX_CLOCK -4



#**************************************************************
# Set False Paths
#**************************************************************

# Set false path to generated clocks that feed output pins
set_false_path -to [get_ports {PHY_MDC}]

# Set false paths to remove irrelevant setup and hold analysis 
set_false_path -fall_from  virt_PHY_RX_CLOCK -rise_to PHY_RX_CLOCK -setup
set_false_path -rise_from  virt_PHY_RX_CLOCK -fall_to PHY_RX_CLOCK -setup
set_false_path -fall_from  virt_PHY_RX_CLOCK -fall_to PHY_RX_CLOCK -hold
set_false_path -rise_from  virt_PHY_RX_CLOCK -rise_to PHY_RX_CLOCK -hold

#set_false_path -fall_from [get_clocks clock_125MHz] -rise_to [get_clocks tx_output_clock] -setup
#set_false_path -rise_from [get_clocks clock_125MHz] -fall_to [get_clocks tx_output_clock] -setup
#set_false_path -fall_from [get_clocks clock_125MHz] -fall_to [get_clocks tx_output_clock] -hold
#set_false_path -rise_from [get_clocks clock_125MHz] -rise_to [get_clocks tx_output_clock] -hold

set_false_path -from * -to {leds[*] userout[*] exp_ptt_n cwkey_o}
set_false_path -from {extreset dipsw[*] ptt_i cwkey_i} -to *


## AD9866 RX Path

## rxen is not time critical and is on 48 MHz clock
set_output_delay -add_delay -max -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] 1 [get_ports {ad9866_rxen}]
set_output_delay -add_delay -min -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] -2.5 [get_ports {ad9866_rxen}]
 
#set_input_delay -add_delay -max -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] 4.0 [get_ports {ad9866_adio[*]}]
#set_input_delay -add_delay -min -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] 1.5 [get_ports {ad9866_adio[*]}]
set_input_delay -add_delay -max -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] 1.9 [get_ports {ad9866_adio[*]}]
set_input_delay -add_delay -min -clock AD9866clk -reference_pin [get_ports ad9866_rxclk] -0.6 [get_ports {ad9866_adio[*]}]


## AD9866 TX Path

## txen is not time critical and is on 48 MHz clock
set_output_delay -add_delay -max -clock AD9866clk -reference_pin [get_ports ad9866_txclk] 1 [get_ports {ad9866_txen}]
set_output_delay -add_delay -min -clock AD9866clk -reference_pin [get_ports ad9866_txclk] -2.5 [get_ports {ad9866_txen}]

set_output_delay -add_delay -max -clock AD9866clk -reference_pin [get_ports ad9866_txclk] 1 [get_ports {ad9866_adio[*]}]
set_output_delay -add_delay -min -clock AD9866clk -reference_pin [get_ports ad9866_txclk] -2.5 [get_ports {ad9866_adio[*]}]


set_false_path -from [get_pins {ad9866_adio[*]~output|o}] -to [get_pins {ad9866_adio[*]~input|i}]

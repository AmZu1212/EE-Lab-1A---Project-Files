#============================================================
# DEFINE PROJECT NAME !!!!!!!!!!!!!
# set proj_name - KBDINTF
# file for Debug lab
#============================================================ 


#============================================================
# Device's details
#============================================================
set_global_assignment -name FAMILY "Cyclone V"
set_global_assignment -name DEVICE 5CSXFC6D6F31C6
set_global_assignment -name NUM_PARALLEL_PROCESSORS ALL


#============================================================
# CLOCK
#============================================================
set_location_assignment PIN_AF14 -to CLOCK_50
set_location_assignment PIN_AA16 -to clk

#============================================================
# KEY
#============================================================
set_location_assignment PIN_AJ4 -to resetN  ; # KEY[0]
#set_location_assignment PIN_AK4 -to KEY[1]
#set_location_assignment PIN_AA14 -to KEY[2]
set_location_assignment PIN_AA15 -to rise ;#KEY[3]

#============================================================
# SW
#============================================================
#set_location_assignment PIN_AB30 -to SW[0] ; #SW[0]
#set_location_assignment PIN_Y27 -to SW[1] ; #SW[1]
#set_location_assignment PIN_AB28 -to SW[2] ; #SW[2]
#set_location_assignment PIN_AC30 -to SW[3] ; #SW[3]
#set_location_assignment PIN_W25 -to SW[4] ; #SW[4]
#set_location_assignment PIN_V25 -to SW[5] ; #SW[5]
#set_location_assignment PIN_AC28 -to SW[6] ;# SW[6]
#set_location_assignment PIN_AD30 -to SW[7] ;#SW[7]
#set_location_assignment PIN_AC29 -to SW[8] ;#SW[8]
#set_location_assignment PIN_AA30 -to SW[9] ; #SW[9]


#============================================================
# LED
#============================================================ #LEDR[0]
set_location_assignment PIN_AA24 -to keyIsPressed ;#LEDR[0]
set_location_assignment PIN_AB23 -to keyLatch ;#LEDR[1]
set_location_assignment PIN_AC23 -to KeyRisingEdge ;#LEDR[2]
set_location_assignment PIN_AD24 -to keyPad[0] ;#LEDR[3]
set_location_assignment PIN_AG25 -to keyPad[1] ;#LEDR[4]
set_location_assignment PIN_AF25 -to keyPad[2] ;#LEDR[5]
set_location_assignment PIN_AE24 -to keyPad[3] ;#LEDR[6]
set_location_assignment PIN_AF24 -to dout_new ;#LEDR[7]
set_location_assignment PIN_AB22 -to dataInN ;#LEDR[8]
set_location_assignment PIN_AC22 -to type ;#LEDR[9]

#============================================================
# Seg7
#============================================================
set_location_assignment PIN_W17 -to HEX0[0]
set_location_assignment PIN_V18 -to HEX0[1]
set_location_assignment PIN_AG17 -to HEX0[2]
set_location_assignment PIN_AG16 -to HEX0[3]
set_location_assignment PIN_AH17 -to HEX0[4]
set_location_assignment PIN_AG18 -to HEX0[5]
set_location_assignment PIN_AH18 -to HEX0[6]
set_location_assignment PIN_AF16 -to HEX1[0]
set_location_assignment PIN_V16 -to HEX1[1]
set_location_assignment PIN_AE16 -to HEX1[2]
set_location_assignment PIN_AD17 -to HEX1[3]
set_location_assignment PIN_AE18 -to HEX1[4]
set_location_assignment PIN_AE17 -to HEX1[5]
set_location_assignment PIN_V17 -to HEX1[6]
set_location_assignment PIN_AA21 -to HEX2[0]
set_location_assignment PIN_AB17 -to HEX2[1]
set_location_assignment PIN_AA18 -to HEX2[2]
set_location_assignment PIN_Y17 -to HEX2[3]
set_location_assignment PIN_Y18 -to HEX2[4]
set_location_assignment PIN_AF18 -to HEX2[5]
set_location_assignment PIN_W16 -to HEX2[6]
set_location_assignment PIN_Y19 -to HEX3[0]
set_location_assignment PIN_W19 -to HEX3[1]
set_location_assignment PIN_AD19 -to HEX3[2]
set_location_assignment PIN_AA20 -to HEX3[3]
set_location_assignment PIN_AC20 -to HEX3[4]
set_location_assignment PIN_AA19 -to HEX3[5]
set_location_assignment PIN_AD20 -to HEX3[6]
set_location_assignment PIN_AD21 -to HEX4[0]
set_location_assignment PIN_AG22 -to HEX4[1]
set_location_assignment PIN_AE22 -to HEX4[2]
set_location_assignment PIN_AE23 -to HEX4[3]
set_location_assignment PIN_AG23 -to HEX4[4]
set_location_assignment PIN_AF23 -to HEX4[5]
set_location_assignment PIN_AH22 -to HEX4[6]
set_location_assignment PIN_AF21 -to HEX5[0]
set_location_assignment PIN_AG21 -to HEX5[1]
set_location_assignment PIN_AF20 -to HEX5[2]
set_location_assignment PIN_AG20 -to HEX5[3]
set_location_assignment PIN_AE19 -to HEX5[4]
set_location_assignment PIN_AF19 -to HEX5[5]
set_location_assignment PIN_AB21 -to HEX5[6]

#============================================================
# PS2
#============================================================
set_location_assignment PIN_AB25 -to PS2_CLK
set_location_assignment PIN_AA25 -to PS2_DAT


#============================================================
# Assigning 3.3 V to all pins
#============================================================
	  
set name_ids [get_names -filter * -node_type pin]

    foreach_in_collection name_id $name_ids {
        set pin_name [get_name_info -info full_path $name_id]
        post_message "Assigning 3.3-V LVTTL to $pin_name"
		set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to $pin_name
          }
		  
export_assignments

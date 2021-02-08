G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S[first_layer_temperature] ; set extruder temp
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S[first_layer_temperature] ; wait for extruder temp
G28 ; home all
G29 S1 ; Load existing bed-level mesh (BL-Touch)
G92 E0 ; Reset Extruder
G1 Z1.0 F3000 ; move z up little to prevent scratching of surface
G1 X0.1 Y20 Z0.28 F240 ; move to start-line position
G1 X0.1 Y200.0 Z0.28 F1500.0 E15 ; draw 1st line
G1 X0.4 Y200.0 Z0.28 F5000.0 ; move to side a little
G1 X0.4 Y20 Z0.28 F1500.0 E30 ; draw 2nd line
G92 E0 ; reset extruder
G1 Z1.0 F3000 ; move z up little to prevent scratch

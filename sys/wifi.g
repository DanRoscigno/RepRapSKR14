; Renamed from runonce.g to wifi.g
; called after config.g. When it has been executed, it is automatically deleted!
;
; generated by RepRapFirmware Configuration Tool v3.2.1-LPC on Tue Feb 02 2021 22:16:00 GMT-0500 (Eastern Standard Time)
M552 S0                            ; disable network
G4 P500                            ; wait half a second
M552 S1                            ; enable network
G4 P1000                           ; wait a second
M587 S"'spaghetti" P"wellwellwellx" ; configure WiFi
M552 S1                            ; enable network

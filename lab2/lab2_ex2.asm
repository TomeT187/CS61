;=================================================
; Name: Thomas Miko
; Email: tmiko001@ucr.edu
; 
; Lab: lab 2, ex 2
; Lab section: 
; TA: 
; 
;=================================================

.orig x3000

LDI R3, DEC_65_PTR
LDI R4, HEX_45_PTR

ADD R3, R3, #1
ADD R4, R4, #1

STI R3, DEC_65_PTR
STI R4, HEX_45_PTR

HALT

DEC_65_PTR .FILL X4000
HEX_45_PTR .FILL X4001
.end

.orig x4000
DEC_65 .FILL #65
HEX_45 .FILL x45
.end

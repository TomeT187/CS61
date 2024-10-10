;=================================================
; Name: Thomas Miko
; Email:  tmiko001@ucr.edu
; 
; Lab: lab 2, ex 4
; Lab section: 
; TA: 
; 
;=================================================

.orig x3000

LD R0, HEX_61
LD R1, HEX_1A

LOOP_START
    OUT
    ADD R0, R0, #1
    ADD R1, R1, #-1
    BRp LOOP_START


HALT
HEX_61 .FILL x61
HEX_1A .FILL x1A
.end
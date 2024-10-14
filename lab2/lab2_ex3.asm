;=================================================
; Name: Thomas Miko
; Email:  tmiko001@ucr.edu
; 
; Lab: lab 2, ex 3
; Lab section: 
; TA: 
; 
;=================================================

.orig x3000

LD R5, DEC_65_PTR
LD R6, HEX_45_PTR

LDR R3, R5, #0
LDR R4, R6, #0

ADD R3, R3, #1
ADD R4, R4, #1

STR R3, R5, #0
STR R4, R6, #0

HALT
DEC_65_PTR .FILL X4000
HEX_45_PTR .FILL X4001
.end

.orig x4000
DEC_65 .FILL #65
HEX_45 .FILL x45
.end
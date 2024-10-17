;=================================================
; Name: Thomas Miko
; Email: tmiko001@ucr.edu
; 
; Lab: lab 3, ex 1
; Lab section: 
; TA: 
; 
;=================================================

.orig x3000

LD R5, DATA_PTR

LDR R3, R5, #0
LDR R4, R5, #1

ADD R3, R3, #1
ADD R4, R4, #1

STR R3, R5, #0
STR R4, R5, #1

HALT
DATA_PTR .FILL X4000
.end

.orig x4000
DEC_65 .FILL #65
HEX_45 .FILL x45
.end
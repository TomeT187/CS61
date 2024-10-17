;=================================================
; Name: Thomas Miko
; Email: tmiko001@ucr.edu
; 
; Lab: lab 3, ex 2
; Lab section: 
; TA: 
; 
;=================================================
.orig x3000
LEA R1, DATA
LD R2, DEC_10

;STR ADDR, MEM, OFFSET
START_LOOP
    GETC
    OUT
    STR R0, R1, #0
    ADD R1, R1, #1
    ADD R2, R2 #-1
    BRp START_LOOP
END_LOOP

HALT

;local data
DEC_10 .FILL #10
NEWLINE .FILL x0A
DATA .BLKW #10

.end
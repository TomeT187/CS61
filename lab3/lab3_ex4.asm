;=================================================
; Name: Thomas Miko
; Email: tmiko001@ucr.edu
; 
; Lab: lab 3, ex 4
; Lab section: 
; TA: 
; 
;=================================================

.orig x3000
LD R1, DATA_PTR
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

LD R0, NEWLINE
OUT

LD R2, DEC_10
ADD R1, R1, #-10

START_OUTPUT_LOOP
    LDR R0, R1, #0
    OUT
    LD R0, NEWLINE
    OUT
    ADD R1, R1, #1
    ADD R2, R2, #-1
    BRp START_OUTPUT_LOOP

END_OUTPUT_LOOP



HALT

;local data
DATA_PTR .FILL X4000
DEC_10 .FILL #10
NEWLINE .FILL x0A
.end

.orig x4000
DATA .BLKW #100
.end

.end
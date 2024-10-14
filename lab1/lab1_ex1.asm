;=================================================
; Name: thomas Miko
; Email:  tmiko001@ucr.edu
; 
; Lab: lab 1, ex 1
; Lab section: 21
; TA: 
; 
;=================================================

.orig x3000

;Stores each register with a decimal value
AND R1, R1, x0
LD R2, DEC_12
LD R3, DEC_6

;Loops while value at R3 is still positive
;Adds 12 to R1
;Decrements R3 by one
DO_WHILE_LOOP
    ADD R1, R1, R2
    ADD R3, R3, #-1
    BRp DO_WHILE_LOOP
END_DO_WHILE_LOOP

HALT

;Local data storing 0, 12, and 6
DEC_0   .FILL #0
DEC_12  .FILL #12
DEC_6   .FILL #6

.end
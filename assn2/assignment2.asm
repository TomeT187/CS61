;=========================================================================
; Name & Email must be EXACTLY as in Gradescope roster!
; Name: Thomas Miko
; Email: tmiko001@ucr.edu
; 
; Assignment name: Assignment 2
; Lab section: 
; TA: 
; 
; I hereby certify that I have not received assistance on this assignment,
; or used code, from ANY outside source other than the instruction team
; (apart from what was provided in the starter file).
;
;=========================================================================

.ORIG x3000			; Program begins here
;-------------
;Instructions
;-------------

;----------------------------------------------
;output prompt
;----------------------------------------------	
LEA R0, intro			; get starting address of prompt string
PUTS			    	; Invokes BIOS routine to output string

;-------------------------------
;INSERT YOUR CODE here



;gets first number from input, outputs and stores it
GETC
OUT
ADD R4, R0, #0
LEA R0, newline
PUTS

;gets second number
GETC
OUT
ADD R5, R0, #0

LEA R0, newline
PUTS

;outputs line X - Y =
ADD, R0, R4, #0
OUT

LEA R0, minus 
PUTS

ADD, R0, R5, #0
OUT

LEA R0, equals
PUTS 


;changes registers from ascii values to numbers
LD R7, OFFSET
ADD R4, R4, R7
ADD R5, R5, R7

;makes second number negative with two's complement
NOT R5, R5
ADD R5, R5, #1

;adds two numbers into R0
ADD R0, R4, R5



BRzp ELSE
IF_NEGATIVE;not need but looks nice
    ADD R1, R0, #0
    LEA R0, minusNoSpace
    PUTS
    ADD R0, R1, #0
    NOT R0, R0
    ADD R0, R0, #1

ELSE
;flips the offset number to be positive and adds it to R0 to convert back to ascii

NOT R7, R7
ADD R7, R7, #1
ADD R0, R0, R7

OUT
LEA R0, newline
PUTS
HALT



;--------------------------------



HALT				; Stop execution of program
;------	
;Data
;------
; String to prompt user. Note: already includes terminating newline!
intro 	.STRINGZ	"ENTER two numbers (i.e '0'....'9')\n" 		; prompt string - use with LEA, followed by PUTS.
minus .STRINGZ " - "
equals .STRINGZ  " = "
minusNoSpace .STRINGZ "-"
OFFSET .FILL x-30
newline .FILL x0A	; newline character - use with LD followed by OUT




;---------------	
;END of PROGRAM
;---------------	
.END


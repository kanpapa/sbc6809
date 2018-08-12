*       LED TEST for SBC6809 + SBC-I/O
*
LED     EQU     $8000
STACK   EQU     $DFFF
*
        ORG     $A000
*
START   LDS     #STACK
        LDA     #$00
LOOP    STA     LED
        INCA
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BSR     WAIT
        BRA     LOOP
*
WAIT    LDB     #$00
WAIT2   INCB
        TSTB
        BNE     WAIT2
        RTS
        END

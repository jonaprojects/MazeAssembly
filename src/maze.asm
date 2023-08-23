; multi-segment executable file template.

data segment
; ************************************ MAIN VARIABLES
background db 7
back equ 7    ; background-color
mazec equ 14  ; maze-color
color db 4
size dw 8
x dw 290 ; (312,168)
y dw 290
xapple dw 160 ; (160 to 176)
yapple dw 100 ; (100 to 116)
xcarrot dw 192
ycarrot dw 112
xsmiley dw 8
ysmiley dw 8
xcherry dw 74
ycherry dw 16
xcsharp dw 150
ycsharp dw 155
xdragon dw 50
ydragon dw 50
boolean dw 0
boolean1 dw 0
cboolean dw 0
boolean2 dw 0
carrotbool dw 0
;*************************************************** PLAYER MESSAGES
finishmsg db 'YOU WON THE GAME, PRESS R TO RESTART$'
failmsg db 'GAME OVER. CLICK R TO TRY AGAIN.$'
choosemsg db 'CHOOSE A DIFFICULTY:                                $'
easy db 'EASY : PRESS 1        $'
medium db 'MEDIUM : PRESS 2    $'
hard db 'HARD: PRESS 3       $'
impossible db 'IMPOSSIBLE: PRESS 4     $'
;****************************************************
seconds dw 9 ; delay( 9/18 default)
xone dw 120 ; 3 2 1 GO
yone dw 120
xtwo dw ?
ytwo dw ?
xthree dw ?
ythree dw ?
xgo dw ?
ygo dw ?
;********************TIMER VARIABLES

timem db 1
times db 0
timetotal db 100

;************* COLORS CONSTANTS :
YELLOW EQU 14
BLACK EQU 0
RED EQU 4
WHITE EQU 0Fh
GREEN EQU 10
ORANGE EQU 12
BROWN EQU 6
FONT EQU 12
BLUE EQU 1
;**************
;place dw 10000
;temp db 0
; ************************************
maze db 8 dup(mazec) , 13 dup(back),9 dup(mazec) , 10 dup(back) ;1
db 1 dup(mazec), 6 dup(back), 6 dup(mazec), 2 dup(back), 7 dup(mazec), 7 dup(back),1 dup(mazec), 2 dup(back),8 dup(mazec) ;2
db 1 dup(mazec), 1 dup(back), 3 dup(mazec),9 dup(back),1 dup(mazec), 5 dup(back), 1 dup(mazec), 4 dup(back),1 dup(mazec),1 dup(back),1dup(mazec), 2 dup(back),1 dup(mazec), 4 dup(back), 3 dup(back), 2 dup(mazec);3
db 2 dup(back), 1 dup(mazec),1 dup(back),1 dup(mazec),2 dup(back),1 dup(mazec), 5 dup(back),7 dup(mazec),3 dup(back),4 dup(mazec),1 dup(back),1 dup(mazec),1 dup(back),1 dup(mazec),1 dup(back),2 dup(mazec),1 dup(back),1 dup(mazec), 2 dup(back), 2 dup(mazec) ;4
db 1 dup(back), 2 dup(mazec), 1 dup(back),1 dup(mazec),1 dup(back),8 dup(mazec),6 dup(back),1 dup(mazec),5 dup(back), 1 dup(mazec), 1 dup(back), 1 dup(mazec), 4 dup(back), 1 dup(mazec),1 dup(back), 1 dup(mazec), 3 dup(back), 1 dup(mazec);5
db 21 dup(back), 1 dup(mazec),1 dup(back),1 dup(mazec),2 dup(back),6 dup(mazec),1 dup(back),3 dup(mazec),4 dup(back) ;6
db 1 dup(back), 2 dup(mazec),1 dup(back),1 dup(mazec),2 dup(back),2 dup(mazec), 2 dup(back),5 dup(mazec),1 dup(back), 3 dup(mazec),2 dup(back),1 dup(mazec),2 dup(back),1 dup(mazec), 3 dup(back),1 dup(mazec),7 dup(back),1 dup(mazec),2 dup(back)    ;7
db 2 dup(back), 1 dup(mazec),1 dup(back),1 dup(mazec),3 dup(back), 1 dup(mazec),2 dup(back), 1 dup(mazec), 3 dup(back), 1 dup(mazec), 1 dup(back),1 dup(mazec), 1 dup(back),1 dup(mazec), 2 dup(back),1 dup(mazec), 2 dup(back), 1 dup(mazec), 1 dup(back), 3 dup(mazec),2 dup(back), 3 dup(mazec), 2 dup(back), 2 dup(mazec), 1 dup(back) ;8
db 2 dup(back), 1 dup(mazec), 1 dup(back),1 dup(mazec) ,1 dup(back),3 dup(mazec), 2 dup(back), 1 dup(mazec), 3 dup(back) 1 dup(mazec),1 dup(back),1 dup(mazec),1 dup(back),1 dup(mazec),1 dup(back),2 dup(mazec),6 dup(back),4 dup(mazec),4 dup(back),1 dup(mazec),2 dup(back) ; 9
db 4 dup(back), 1 dup(mazec),3 dup(back),1 dup(mazec)   ,2 dup(back), 1 dup(mazec),1 dup(back),3 dup(mazec),   1 dup(back),1 dup(mazec),1 dup(back)   ,1 dup(mazec),2 dup(back),1 dup(mazec),     2 dup(back),3 dup(mazec), 3 dup(back),    1 dup(mazec), 2 dup(back),4 dup(mazec), 1 dup(back),1 dup(mazec);10
db 2 dup(back),4 dup(mazec),2 dup(back),2 dup(mazec)   ,1 dup(back), 1 dup(mazec), 1 dup(back),1 dup(mazec),   3 dup(back),1 dup(mazec),1 dup(back),1 dup(mazec),    2 dup(back),1 dup(mazec), 2 dup(back),1 dup(mazec),   1 dup(back),1 dup(mazec),5 dup(back), 2 dup(mazec),  5 dup(back),1 dup(mazec);11
db 2 dup(back), 1 dup(mazec), 10 dup(back),1 dup(mazec),1 dup(back)  ,1 dup(mazec), 1 dup(back), 1 dup(mazec), 1 dup(back) ,   2 dup(mazec), 1 dup(back), 4 dup(mazec),1 dup(back),    1 dup(mazec), 1 dup(back), 3 dup(mazec),7 dup(mazec),  1 dup(mazec) ; 12
db 1 dup(mazec),1 dup(back), 1 dup(mazec), 2 dup(back),3 dup(mazec),1 dup(back),1 dup(mazec),1 dup(back),3 dup(mazec),  1 dup(back),1 dup(mazec), 13 dup(back),1 dup(mazec),    1 dup(back), 4 dup(mazec),1 dup(back), 2 dup(mazec),    1 dup(back),1 dup(mazec);13
db 2 dup(back), 1 dup(mazec), 1 dup(back), 2 dup(mazec),1 dup(back), 1 dup(mazec)  ,1 dup(back),1 dup(mazec), 3 dup(back),1 dup(mazec),1 dup(back),1 dup(mazec),     1 dup(back),3 dup(mazec), 4 dup(back), 6 dup(mazec), 7 dup(back),1 dup(mazec), 2 dup(back)  ;14
db 1 dup(back), 2 dup(mazec), 2 dup(back), 1 dup(mazec),1 dup(back)    ,1 dup(mazec),1 dup(back),3 dup(mazec),1 dup(back),3 dup(mazec),1 dup(back), 1 dup(mazec), 1 dup(back)      , 2 dup(mazec), 1 dup(back),1 dup(mazec), 8 dup(back)     ,4 dup(mazec),2 dup(back), 1 dup(mazec),1 dup(back),1 dup(mazec);15
db 2 dup(back),2 dup(mazec),5 dup(back),1 dup(mazec),3 dup(back),   2 dup(mazec), 2 dup(back), 1 dup(mazec),4 dup(back),1 dup(mazec),    5 dup(back), 1 dup(mazec),1 dup(back),2 dup(mazec),    2 dup(back),1 dup(mazec), 2 dup(back), 1 dup(mazec), 2 dup(back) ; 16
db 1 dup(mazec),2 dup(back),1 dup(mazec),2 dup(back),    4 dup(mazec),4 dup(back),1 dup(mazec),2 dup(back),    2 dup(mazec), 2 dup(back), 2 dup(mazec),2 dup(back),   4 dup(mazec),1 dup(back),1 dup(mazec), 1 dup(back),   1 dup(mazec),1 dup(back),2 dup(mazec), 1 dup(back),     2 dup(mazec), 1 dup(back);17
db 1 dup(mazec),2 dup(back),1 dup(mazec),1 dup(back),    2 dup(mazec),5 dup(back),1 dup(mazec),1 dup(back),     1 dup(mazec),10 dup(back),1 dup(mazec), 2 dup(back),    1 dup(mazec),1 dup(back),1 dup(mazec),    1 dup(back),1 dup(mazec),4 dup(back), 1 dup(mazec),  2 dup(back); 18
db 1 dup(mazec),2 dup(back),1 dup(mazec),2 dup(back),     1 dup(mazec),2 dup(back), 1 dup(mazec),2 dup(back), 1 dup(mazec),     4 dup(back),9 dup(mazec),2 dup(back), 1 dup(mazec),     1 dup(back), 4 dup(mazec),2 dup(back), 2 dup(mazec),    1 dup(back),1 dup(mazec);19
db 1 dup(mazec),1 dup(back), 3 dup(mazec), 1 dup(back),    4 dup(mazec),1 dup(back),4 dup(mazec),2 dup(back),    1 dup(mazec),6 dup(back),1 dup(mazec),3 dup(back),    1 dup(mazec), 8 dup(back), 1 dup(mazec), 1 dup(back),  1 dup(mazec) ; 20
db 1 dup(mazec), 3 dup(back), 1 dup(mazec), 1 dup(back),    2 dup(mazec), 1 dup(back), 1 dup(mazec),2 dup(back),     1 dup(mazec), 1 dup(back), 2 dup(mazec),5 dup(back),     1 dup(mazec),2 dup(back), 2 dup(mazec),2 dup(back),    1 dup(mazec),1 dup(back), 10 dup(mazec); 21
db 1 dup(mazec),1 dup(back), 1 dup(mazec), 1 dup(back),     1 dup(mazec),4 dup(back),2 dup(mazec), 1 dup(back),     1 dup(mazec),1 dup(back),1 dup(mazec), 3 dup(back),     4 dup(mazec), 3 dup(back), 2 dup(mazec), 3 dup(back),    1 dup(mazec),2 dup(back), 3 dup(mazec), 3 dup(back),1 dup(BLUE); 22
db 1 dup(mazec), 1 dup(back), 1 dup(mazec), 1 dup(back),    1 dup(mazec), 1 dup(back), 1 dup(mazec), 7 dup(back),    1 dup(mazec),1 dup(back),1 dup(mazec),     2 dup(back), 1 dup(mazec), 4 dup(back),     5 dup(mazec),1 dup(back), 1 dup(mazec),    2 dup(back),1 dup(mazec),1 dup(back),    1 dup(mazec), 1 dup(back),3 dup(mazec);23
db 1 dup(mazec), 1 dup(back), 1 dup(mazec),    1 dup(back), 1 dup(mazec), 1 dup(back),    9 dup(mazec), 2 dup(back),1 dup(mazec), 3 dup(back),     4 dup(mazec), 3 dup(back), 1 dup(mazec),     8 dup(back),1 dup(mazec),2 dup(back) ; 24
db 1 dup(mazec), 1 dup(back),1 dup(mazec),1 dup(back),    1 dup(back), 12 dup(back), 5 dup(mazec), 6 dup(back),    3 dup(mazec), 2 dup(back), 5 dup(mazec), 2 dup(back);25


apple db 6 dup(back),1 dup(black),3 dup(back),4 dup(black),2 dup(back);1
db 7 dup(back),1 dup(black),1 dup(back),1 dup(black), 3 dup(green),1 dup(black), 2 dup(back);2
db 8 dup(back),5 dup(black),3 dup(back);3
db 8 dup(back),1 dup(black),7 dup(back);4
db 4 dup(back),3 dup(black),1 dup(back),1 dup(black),1 dup(back),3 dup(black), 3 dup(back);5
db 3 dup(back),1 dup(black),3 dup(RED),3 dup(black),3 dup(RED),1 dup(black),2 dup(back);6
db 2 dup(back),1 dup(black),2 dup(RED),1 dup(WHITE),8 dup(RED),1 dup(black), 1 dup(back);7
db 1 dup(back),1 dup(black),2 dup(RED), 1 dup(WHITE),10 dup(RED),1 dup(black);8
db 1 dup(back),1 dup(black),13 dup(RED),1 dup(black);9
db 1 dup(back),1 dup(black),13 dup(RED),1 dup(black);10
db 2 dup(back),1 dup(black),11 dup(RED),1 dup(black),1 dup(back); 11
db 2 dup(back),1 dup(black),11 dup(RED),1 dup(black),1 dup(back); 12
db 2 dup(back),1 dup(black),11 dup(RED),1 dup(black),1 dup(back); 13
db 3 dup(back),1 dup(black),4 dup(RED),1 dup(black),4 dup(RED), 1 dup(black),2 dup(back);14
db 4 dup(back),4 dup(black),1 dup(back),4 dup(black),3 dup(back);15
db 16 dup(back);16

carrot db 11 dup(back),3 dup(black),1 dup(back);1
db 10 dup(back),1 dup(black),2 dup(green),2 dup(black);2
db 7 dup(back),2 dup(black),1 dup(back),1 dup(black), 1 dup(green), 1 dup(black),1 dup(green),1 dup(black) ;3
db 6 dup(back),1 dup(black),2 DUP(orange),1 dup(black),1 dup(green),1 dup(black),2 dup(green),1 dup(black);4
db 5 dup(back), 1 dup(black),1 dup(orange),1 dup(black),2 dup(orange),1 dup(black),1 dup(green),2 dup(black),1 dup(back);5
db 4 dup(back), 1 dup(black),3 dup(orange), 1 dup(black),2 dup(orange), 1 dup(black), 3 dup(back);6
db 3 dup(back), 1 dup(black),8 dup(orange),1 dup(black),2 dup(back);7
db 2 dup(back),1 dup(black),9 dup(orange),1 dup(black),2 dup(back);8
db 2 dup(back),1 dup(black),2 dup(orange),1 dup(black),5 dup(orange), 1 dup(black), 3 dup(back);9
db 1 dup(back), 1 dup(black),4 dup(orange),1 dup(black),3 dup(orange),1 dup(black),4 dup(back);10
db 1 dup(back), 1 dup(black),2 dup(orange),1 dup(black),2 dup(orange),1 dup(black),1 dup(orange),1 dup(black),5 dup(back);11
db 1 dup(black),4 dup(orange),1 dup(black),1 dup(orange),2 dup(black),6 dup(back);12
db 1 dup(black),4 dup(orange),2 dup(black),8 dup(back); 13
db 1 dup(back),4 dup(black),10 dup(back);14

smiley db 2 dup(back), 3 dup(black),2 dup(back);1
db 1 dup(back), 1 dup(black), 3 dup(yellow),1 dup(black),1 dup(back);2
db 1 dup(black),1 dup(yellow),1 dup(black),1 dup(yellow),1 dup(black),1 dup(yellow),1 dup(black);3
db 1 dup(black),5 dup(yellow),1 dup(black);4
db 1 dup(black), 1 dup(yellow),3 dup(green),1 dup(yellow),1 dup(black);5
db 1 dup(back),1 dup(black),3 dup(yellow),1 dup(black),1 dup(back);6
db 2 dup(back),3 dup(black),2 dup(back);7

cherry db 10 dup(back),2 dup(black),3 dup(back);1
db 8 dup(back),4 dup(black),3 dup(back);2
db 7 dup(back),1 dup(black),2 dup(back),1 dup(black),4 dup(back);3
db 6 dup(back),1 dup(black),3 dup(back),1 dup(black),4 dup(back);4
db 5 dup(back),1 dup(black),4 dup(back),1 dup(black),4 dup(back);5
db 3 dup(back),3 dup(black),4 dup(back),1 dup(black),4 dup(back);6
db 2 dup(back),1 dup(black),3 dup(red),1 dup(black),3 dup(back),1 dup(black),4 dup(black);7
db 1 dup(back),1 dup(black),1 dup(red),1 dup(white),3 dup(red),1 dup(black),1 dup(back),3 dup(black),3 dup(back) ;8
db 1 dup(back),1 dup(black),5 dup(red),2 dup(black),3 dup(red),1 dup(black),2 dup(back);9
db 1 dup(back),1 dup(black),5 dup(red),1 dup(black), 1 dup(red),1 dup(white),3 dup(red),1 dup(black),1 dup(back);10
db 2 dup(back),1 dup(black),3 dup(red),2 dup(black),5 dup(red),1 dup(black),1 dup(back);11
db 3 dup(back),3 dup(black),1 dup(back),1 dup(black),5 dup(red),1 dup(black),1 dup(back);12
db 8 dup(back),1 dup(black),3 dup(red),1 dup(black),2 dup(back);13
db 8 dup(back),3 dup(black),4 dup(back);14


csharp db 2 dup(back),2 dup(black),3 dup(back),1 dup(black),1 dup(back),1 dup(black),2 dup(back);1
db 1 dup(back),1 dup(black),2 dup(back),1 dup(black),1 dup(back),5 dup(black),1 dup(back);2
db 1 dup(back),1 dup(black),5 dup(back),1 dup(black),1 dup(back),1 dup(black),2 dup(back);3
db 1 dup(back),1 dup(black),2 dup(back),1 dup(black),1 dup(back),5 dup(black),1 dup(back);4
db 2 dup(back),2 dup(black),3 dup(back),1 dup(black),1 dup(back),1 dup(black),2 dup(back);5

dragon db 45 dup(back),4 dup(black),1 dup(back);1
db 1 dup(back),4 dup(back),37 dup(back),3 dup(black),4 dup(red),1 dup(black);2
db 1 dup(black),2 dup(red),1 dup(black),1 dup(red),1 dup(black),33 dup(back),3 dup(black),3 dup(red),4 dup(black),1 dup(black);3
db 1 dup(back),2 dup(black),1 dup(red),1 dup(black),1 dup(red),1 dup(black),29 dup(back),3 dup(black),3 dup(red),3 dup(black),1 dup(orange),1 dup(black),3 dup(back);4
db 3 dup(back),1 dup(black),1 dup(red),1 dup(black),1 dup(red),1 dup(black),26 dup(back),2 dup(black),3 dup(red),3 dup(black),2 dup(orange),2 dup(black),4 dup(back);5
db 2 dup(back),1 dup(black),1 dup(orange),1 dup(black),1 dup(red),1 dup(black),1 dup(red),1 dup(black), 23 dup(back),2 dup(black),2 dup(red),3 dup(black),4 dup(orange),2 dup(black),5 dup(back);6
db 3 dup(back),1 dup(black),1 dup(yellow),1 dup(black),1 dup(red),1 dup(black),1 dup(red),1 dup(black), 20 dup(back),2 dup(black),2 dup(red),2 dup(black),3 dup(orange),2 dup(yellow),1 dup(orange),2 dup(black),6 dup(back);7
db 4 dup(back), 1 dup(black),1 dup(back),1 dup(black),1 dup(red),1 dup(black),1 dup(red),1 dup(black), 17 dup(back), 2 dup(black),2 dup(red), 2 dup(black),2 dup(orange),5 dup(yellow),1 dup(orange),1 dup(black),7 dup(back);8

db 6 dup(back),1 dup(black),1 dup(red),1 dup(black),2 dup(red),1 dup(black),14 dup(back),2 dup(black),2 dup(red),2 dup(black),4 dup(orange),3 dup(yellow),2 dup(orange),2 dup(black),7 dup(back);9
db 6 dup(back),2 dup(black),1 dup(red),1 dup(black),2 dup(red),1 dup(black),11 dup(back),2 dup(black),2 dup(red),3 dup(black),3 dup(orange),5 dup(yellow),2 dup(orange),2 dup(black),7 dup(back);10
db 5 dup(back),1 dup(black),4 dup(red),1 dup(black),2 dup(red),1 dup(black),8 dup(back),2 dup(black),3 dup(red),1 dup(black),4 dup(orange),8 dup(yellow),2 dup(orange),2 dup(black),6 dup(back);11
db 4 dup(back),1 dup(black),1 dup(yellow),3 dup(black),1 dup(red),1 dup(black),3 dup(red), 1 dup(black), 5 dup(back),2 dup(black),4 dup(red),11 dup(black),4 dup(yellow),2 dup(orange),1 dup(black),6 dup(back);12
db 5 dup(back), 1 dup(black),3 dup(back),1 dup(black),1 dup(red),1 dup(black),3 dup(red),1 dup(black),3 dup(back),1 dup(black),17 dup(red),6 dup(black),6 dup(back);13
db 11 dup(back),1 dup(black),1 dup(red),1 dup(black),3 dup(red),2 dup(black),1 dup(red),4 dup(black),1 dup(red),1 dup(black),1 dup(red),2 dup(black),8 dup(orange),6 dup(red),4 dup(black),3 dup(back);14
db 11 dup(back),1 dup(black),1 dup(red),1 dup(black),4 dup(red),2 dup(black),3 dup(back),1 dup(black),2 dup(red),1 dup(black),2 dup(red),1 dup(black),7 dup(yellow),6 dup(orange),3 dup(red),3 dup(black),1 dup(back);15
db 12 dup(back),1 dup(black),1 dup(red),1 dup(black),4 dup(red),1 dup(black),4 dup(back),1 dup(black),1 dup(red),2 dup(black),1 dup(orange),1 dup(red),2 dup(black),5 dup(yellow),7 dup(orange),3 dup(black),2 dup(red),1 dup(black);16

db 12 dup(back),1 dup(black),1 dup(red),1 dup(black),5 dup(red),1 dup(black),3 dup(back),1 dup(black),2 dup(red),1 dup(black),1 dup(yellow),1 dup(orange),2 dup(red),1 dup(black),8 dup(yellow),2 dup(orange),2 dup(black),2 dup(back),2 dup(black),1 dup(back);17
db   12 dup(back),1 dup(black),2 dup(red),2 dup(black),1 dup(red),5 dup(black),1 dup(back),1 dup(black),2 dup(red),2 dup(black),3 dup(orange),1 dup(red),1 dup(black),6 dup(yellow),2 dup(orange),1 dup(black),7 dup(back);18
db  12 dup(back),3 dup(black),2 dup(orange),3 dup(black),3 dup(red),2 dup(black),2 dup(red),2 dup(black),1 dup(yellow),3 dup(orange),1 dup(red),1 dup(black),5 dup(yellow),2 dup(orange),1 dup(black),7 dup(back);19
db  11 dup(back),1 dup(black),1 dup(orange),1 dup(yellow),3 dup(black),5 dup(red),2 dup(black),3 dup(red),1 dup(black),1 dup(orange),1 dup(black),2 dup(yellow),2 dup(orange),1 dup(red),1 dup(black),4 dup(yellow),2 dup(orange),1 dup(black),7 dup(back);20
db  9 dup(back),3 dup(black),1 dup(orange),1 dup(black),3 dup(red),1 dup(black),3 dup(red),2 dup(black),3 dup(red),2 dup(black),1 dup(orange),1 dup(black),3 dup(yellow),2 dup(orange),1 dup(red),1 dup(black),2 dup(yellow),2 dup(orange),1 dup(black),8 dup(back);21
db 7 dup(back),1 dup(black),2 dup(orange),2 dup(black),4 dup(red),1 dup(black),2 dup(red),1 dup(black),5 dup(red),2 dup(black),2 dup(orange),1 dup(black),3 dup(yellow),2 dup(orange),1 dup(red),1 dup(black),1 dup(yellow),2 dup(orange),1 dup(black),8 dup(back);22

eatenc db 15 dup(back);1
db 15 dup(back);2
db 15 dup(back);3
db 15 dup(back);4
db 15 dup(back);5
db 15 dup(back);6
db 15 dup(back);7
db 15 dup(back);8
db 15 dup(back);9
db 15 dup(back);10
db 15 dup(back);11
db 15 dup(back);12
db 15 dup(back);13
db 15 dup(back);14


eaten db 16 dup(back);1     ARRAY 16X16 IN ORDER TO COVER EATEN FRUITS AFTER EATEN . . .
db 16 dup(back);2
db 16 dup(back);3
db 16 dup(back);4
db 16 dup(back);5
db 16 dup(back);6
db 16 dup(back);7
db 16 dup(back);8
db 16 dup(back);9
db 16 dup(back);10
db 16 dup(back);11
db 16 dup(back);12
db 16 dup(back);13
db 16 dup(back);14
db 16 dup(back);15
db 16 dup(back);16

one db 1 dup(back),1 dup(font),1 dup(back);1
db 2 dup(font),1 dup(back);2
db 1 dup(back),1 dup(font),1 dup(back);3
db 1 dup(back),1 dup(font),1 dup(back) ; 4
db 3 dup(font);5

two db 1 dup(back),2 dup(font),1 dup(back);1
db 1 dup(font),2 dup(back),1 dup(font);2
db 2 dup(back),1 dup(font),1 dup(back);3
db 1 dup(back),1 dup(font),2 dup(back);4
db 4 dup(font);5

three db 1 dup(back),2 dup(font),1 dup(back);1
db 1 dup(font), 2 dup(back),1 dup(font);2
db 2 dup(back),1 dup(font),1 dup(back);3
db 1 dup(font),2 dup(back),1 dup(font);4
db 1 dup(back),2 dup(font),1 dup(back); 5

go db 1 dup(back),2 dup(font),3 dup(back),2 dup(font),3 dup(back),1 dup(font);1
db 1 dup(font),4 dup(back),1 dup(font),2 dup(back),1 dup(font),2 dup(back),1 dup(font);2
db 1 dup(font),1 dup(back),2 dup(font),1 dup(back),1 dup(font),2 dup(back),1 dup(font),2 dup(back),1 dup(font);3
db 1 dup(font),2 dup(back),1 dup(font),1 dup(back),1 dup(font),2 dup(back),1 dup(font),3 dup(back);4
db 1 dup(back),2 dup(font),3 dup(back),2 dup(font),3 dup(back),1 dup(font);5

; ************************************
tempx dw ?
tempy dw ?

ends

stack segment
dw   128  dup(0)
ends

code segment
proc init_graphics
push ax
mov al, 13H
xor ah, ah
int 10H
mov ax, 0A000H
mov es, ax
pop ax
ret
endp



proc time
pusha
mov ah,2
mov dh,0; rows
mov dl,0; column
int 10h
xor ah,ah
xor dh,dh
xor dl,dl

mov dl,13
mov ah,2h
int 21h

mov ah,2ch
int 21h
cmp timetotal,dh
je stepsec

dec times
cmp times,-1
jne stepmin
dec timem
mov times,59
stepmin:
stepsec:
mov timetotal,dh
;mov ch,cl
;mov ah,0
; mov al,ch
; mov bl,10
; div bl
; mov dl,al
; add dl,30h
; mov ah,2h
; int 21h
; mov ah,0
; mul bl
; sub ch,al
; mov dl,ch
; add dl,10h
; mov ah,2h
; int 21h

pusha
mov ch,timem
mov ah,0
mov al,ch
mov bl,10
div bl
mov dl,al
add dl,30h
mov ah,2h
int 21h
mov ah,0
mul bl
sub ch,al
mov dl,ch
add dl,10h
mov ah,2h
int 21h
mov ah,2h
mov dl,':'
int 21h
popa

pusha
mov ch,times
mov ah,0
mov al,ch
mov bl,10
div bl
mov dl,al
add dl,30h
mov ah,2h
int 21h
mov ah,0
mul bl
sub ch,al
mov dl,ch
add dl,10h
mov ah,2h
int 21h

popa

popa
ret
endp



proc draw_square     ;single small square (need 4 for every shape)
pusha
mov dx, 0
mov ah, 0ch
rows8:
mov cx, 0
cols8:
mov al, color
add cx, x
add dx, y
int 10h
inc cx
sub dx, y
sub cx, x
cmp cx, 8  ;times
jne cols8
inc dx
cmp dx, 8 ; times
jne rows8
popa
ret
endp


proc delay           ;generated a delay that used in several places
pusha
mov cx, seconds  ;in cx there is the number of times this loops runs
loop4:     ;every time this loop ends, 1/18 second passes
push cx
mov ah, 2ch
int 21h
mov bl, dl
loop2:
mov ah, 2ch
int 21h
cmp bl, dl
je loop2
pop cx
dec cx
cmp cx, 0
jne loop4
popa
ret
endp



proc draw_one
pusha

mov cx,x
mov dx,y
mov tempx,cx
mov tempy,dx

mov bx,xone
mov x,bx
mov cx,x

mov bx,yone
mov y,bx
mov dx,y

mov si,offset one
mov dx,124   ; increase every line by 8 !!
mov cx,174
mov y,84
redo82:
mov x,150
redo83:
mov al,[si]
mov color,al
call draw_square
INC SI
add x,8
cmp cx,x
jne redo83
add y,8
cmp dx,y
jne redo82
mov dx,tempy
mov cx,tempx
mov x,cx
mov y,dx
popa
ret
endp



proc draw_two
pusha

mov cx,x
mov dx,y
mov tempx,cx
mov tempy,dx

mov bx,xtwo
mov x,bx
mov cx,x

mov bx,ytwo
mov y,bx
mov dx,y

mov si,offset two
mov dx,124   ; increase every line by 8 !!
mov cx,176
mov y,84
redo35:
mov x,144
redo36:
mov al,[si]
mov color,al
call draw_square
INC SI
add x,8
cmp cx,x
jne redo36
add y,8
cmp dx,y
jne redo35
mov dx,tempy
mov cx,tempx
mov x,cx
mov y,dx
popa
ret
endp



proc draw_three
pusha

mov cx,x
mov dx,y
mov tempx,cx
mov tempy,dx

mov bx,xthree
mov x,bx
mov cx,x

mov bx,ythree
mov y,bx
mov dx,y

mov si,offset three
mov dx,124   ; increase every line by 8 !!
mov cx,176
mov y,84
redo37:
mov x,144
redo38:
mov al,[si]
mov color,al
call draw_square
INC SI
add x,8
cmp cx,x
jne redo38
add y,8
cmp dx,y
jne redo37
mov dx,tempy
mov cx,tempx
mov x,cx
mov y,dx
popa
ret
endp


proc draw_go
pusha

mov cx,x
mov dx,y
mov tempx,cx
mov tempy,dx

mov bx,xgo
mov x,bx
mov cx,x

mov bx,ygo
mov y,bx
mov dx,y

mov si,offset go
mov dx,124   ; increase every line by 8 !!
mov cx,208
mov y,84
redo39:
mov x,112
redo40:
mov al,[si]
mov color,al
call draw_square
INC SI
add x,8
cmp cx,x
jne redo40
add y,8
cmp dx,y
jne redo39
mov dx,tempy
mov cx,tempx
mov x,cx
mov y,dx
popa
ret
endp




proc draw_maze
pusha
mov cx,x
mov dx,y
mov tempx,cx
mov tempy,dx
mov si,offset maze
mov dx,200   ; increase every line by 8 !!
mov cx,320
mov y,0
redo:
mov x,0
redo1:
mov al,[si]
mov color,al
call draw_square
INC SI
add x,8
cmp cx,x
jne redo1
add y,8
cmp dx,y
jne redo
mov dx,tempy
mov cx,tempx
mov x,cx
mov y,dx

mov bx,32  ;apple 1
mov yapple,bx
mov bx,136
mov xapple,bx
cmp boolean2,0
jne CHECKIF1
call draw_apple
CHECKIF1:
cmp boolean2,1
jne CONTINUEM
call draw_eaten
CONTINUEM:
mov bx,128
mov yapple,bx
mov bx,88
mov xapple,bx
cmp boolean1,1
jne NOT1
call draw_eaten
jmp MORE1
NOT1:
cmp boolean1,0
jne MORE1
call draw_apple
MORE1:
mov bx,100    ;apple 2
mov yapple,bx
mov bx,160
mov xapple,bx
cmp boolean,0
jne EATEN1
call draw_apple
jmp NOTEATEN
EATEN1:
cmp boolean,1
jne NOTEATEN
call draw_eaten
NOTEATEN:
call draw_csharp
cmp carrotbool,0
jne CHECKCARROT
call draw_carrot
jmp CONTINUECARROT
CHECKCARROT:
cmp carrotbool,1
jne CONTINUECARROT
call draw_eatenc
CONTINUECARROT:

cmp cboolean,0
jne CCHECK
DRAWC:
call draw_cherry
jmp ENDOFMAZE
CCHECK:
cmp cboolean,1
jne ENDOFMAZE
call draw_eatenc
ENDOFMAZE:
popa
ret
endp

proc draw_apple
pusha
mov si, offset apple
mov dx, 0
mov ah, 0ch
rows88:
mov cx, 0
cols88:
mov al,[si]
add dx,yapple
add cx,xapple
int 10h
sub dx,yapple
sub cx,xapple
inc cx
inc si
cmp cx, 16  ;times
jne cols88
inc dx
cmp dx, 16 ; times
jne rows88
popa
ret
endp

proc draw_carrot
pusha
mov si, offset carrot
mov dx, 0
mov ah, 0ch
rows89:
mov cx, 0
cols89:
mov al,[si]
add dx,ycarrot
add cx,xcarrot
int 10h
sub dx,ycarrot
sub cx,xcarrot
inc cx
inc si
cmp cx, 15  ;times
jne cols89
inc dx
cmp dx, 14 ; times
jne rows89
popa
ret
endp

proc draw_smiley
pusha
mov si, offset smiley
mov dx, 0
mov ah, 0ch
rows90:
mov cx, 0
cols90:
mov al,[si]
add dx,ysmiley
add cx,xsmiley
int 10h
sub dx,ysmiley
sub cx,xsmiley
inc cx
inc si
cmp cx, 7  ;times
jne cols90
inc dx
cmp dx, 7 ; times
jne rows90
popa
ret
endp

proc draw_cherry
pusha
mov si, offset cherry
mov dx, 0
mov ah, 0ch
rows899:
mov cx, 0
cols899:
mov al,[si]
add dx,ycherry
add cx,xcherry
int 10h
sub dx,ycherry
sub cx,xcherry
inc cx
inc si
cmp cx, 15  ;times
jne cols899
inc dx
cmp dx, 14 ; times
jne rows899
popa
ret
endp


proc draw_csharp
pusha
mov si, offset csharp
mov dx, 0
mov ah, 0ch
rows48:
mov cx, 0
cols48:
mov al,[si]
add dx,ycsharp
add cx,xcsharp
int 10h
sub dx,ycsharp
sub cx,xcsharp
inc cx
inc si
cmp cx, 12  ;times
jne cols48
inc dx
cmp dx, 5 ; times
jne rows48
popa
ret
endp


proc delete_square
pusha
mov dx, 0
mov ah, 0ch
rows9:
mov cx, 0
cols9:
mov al, background
add cx, x
add dx, y
int 10h
inc cx
sub dx, y
sub cx, x
cmp cx, size
jne cols9
inc dx
cmp dx, size
jne rows9
popa
ret
endp


proc delete_smiley
pusha
mov dx, 0
mov ah, 0ch
rows55:
mov cx, 0
cols55:
mov al, background
add cx, xsmiley
add dx, ysmiley
int 10h
inc cx
sub dx, ysmiley
sub cx, xsmiley
cmp cx, 7
jne cols55
inc dx
cmp dx, 7
jne rows55
popa
ret
endp


proc draw_dragon
pusha
mov si, offset dragon
mov dx, 0
mov ah, 0ch
rows555:
mov cx, 0
cols555:
mov al,[si]
add dx,ydragon
add cx,xdragon
int 10h
sub dx,ydragon
sub cx,xdragon
inc cx
inc si
cmp cx, 50  ;times
jne cols555
inc dx
cmp dx, 22 ; change when adding line
jne rows555
popa
ret
endp

proc draw_eaten
pusha
mov si, offset eaten
mov dx, 0
mov ah, 0ch
rows77:
mov cx, 0
cols77:
mov al,[si]
add dx,yapple
add cx,xapple
int 10h
sub dx,yapple
sub cx,xapple
inc cx
inc si
cmp cx, 16  ;times
jne cols77
inc dx
cmp dx, 16 ; times
jne rows77
popa
ret
endp



proc draw_eatenc
pusha
mov si, offset eatenc
mov dx, 0
mov ah, 0ch
rows85:
mov cx, 0
cols19:
mov al,[si]
add dx,ycherry
add cx,xcherry
int 10h
sub dx,ycherry
sub cx,xcherry
inc cx
inc si
cmp cx, 14  ;times
jne cols19
inc dx
cmp dx, 15 ; times
jne rows85
popa
ret
endp




proc doA4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0ACh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 9h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doAb4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 39h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0Bh
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc do435
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0B6h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0Ah
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doB4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 70h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 9h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doBb4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0FFh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 9h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doC4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0D0h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 11h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doD4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 097h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0Ah
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doG4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0E3h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0Bh
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doG5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0F2h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 5h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doF5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0ACh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 6h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doA5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 04Bh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 5h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doBb5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 00h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 5h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doC5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0E8h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 8h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doD5
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 0F0h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 7h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doC3
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 23h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0A1h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp




proc doDb3
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 21h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0A1h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doD3
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 1Fh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0BEh
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp


proc doEb3
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 01Dh                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0F6h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc doDb4
pusha

in al, 61h    ; this activates the speaker ..
or al, 00000011b
out 61h, al                                ;(port 61)

mov al, 0B6h ; gaining access to change the speaker's frequency   (port 43)
out 43h, al

mov al, 10h                 ; this sends the divisor . divisor = 1193180 / frequency
out 42h, al ; Sending lower byte
mov al, 0d0h
out 42h, al ; Sending upper byte

call delay

in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al

popa
ret
endp



proc mover     ;moves right and left
pusha
mov ah, 1
int 16h
jz end1
mov ah,0
int 16h

cmp al, 97
jne right
cmp xsmiley,1
jb right
xor al,al; no need for al ...

sub xsmiley,1

mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
add xsmiley,1
cmp al,14
je check2


sub xsmiley,1
add ysmiley,7
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
add xsmiley,1
sub ysmiley,7
cmp al,14
je check2

xor cx,cx
xor dx,dx
call delete_smiley
call onfruit

cmp boolean,1
je DRAWAGAIN4
cmp boolean1,1
je DRAWAGAIN4
cmp cboolean,1
je DRAWAGAIN4
cmp boolean2,1
je DRAWAGAIN4
cmp carrotbool,1
je DRAWAGAIN4
jmp CONTINUE14
DRAWAGAIN4:
mov seconds,3
call doG4
add times,6
call draw_maze
CONTINUE14:

mov bx,xsmiley ;
mov x,bx      ;
mov bx,ysmiley ;
mov y,bx        ;
xor bx,bx  ;
mov bl,back ;
mov color,bl;

call draw_square;
sub xsmiley, 1
call draw_smiley
right:

cmp al, 100
jne left
cmp xsmiley,312
ja left

xor al,al; no need for al ...

add xsmiley,8

mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
sub xsmiley,8
cmp al,14
je check2

add ysmiley,7
add xsmiley,8
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
sub ysmiley,7
sub xsmiley,8
cmp al,14
je check2

xor cx,cx
xor dx,dx

call delete_smiley

call onfruit
cmp boolean,1
je DRAWAGAIN3
cmp boolean1,1
je DRAWAGAIN
cmp cboolean,1
je DRAWAGAIN3
cmp boolean2,1
je DRAWAGAIN3
cmp carrotbool,1
je DRAWAGAIN3
jmp CONTINUE13
DRAWAGAIN3:
mov seconds,3
call doG4
add times,6
call draw_maze
CONTINUE13:

mov bx,xsmiley ;
mov x,bx      ;
mov bx,ysmiley ;
mov y,bx        ;
xor bx,bx  ;
mov bl,back ;
mov color,bl   ;
call draw_square;
add xsmiley, 1
call draw_smiley
left:

cmp al, 115
jne down
cmp ysmiley,192
ja down
xor al,al; no need for al ...

add ysmiley,8
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
sub ysmiley,8
cmp al,14
je check2

add ysmiley,8
add xsmiley,7
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
sub ysmiley,8
sub xsmiley,7
cmp al,14
je check2

xor cx,cx
xor dx,dx

call delete_smiley
call onfruit
cmp boolean,1
je DRAWAGAIN2
cmp boolean1,1
je DRAWAGAIN2
cmp cboolean,1
je DRAWAGAIN2
cmp boolean2,1
je DRAWAGAIN2
cmp carrotbool,1
je DRAWAGAIN2
jmp CONTINUE12
DRAWAGAIN2:
mov seconds,3
call doG4
add times,6
call draw_maze
CONTINUE12:

mov bx,xsmiley ;
mov x,bx      ;
mov bx,ysmiley ;
mov y,bx        ;
xor bx,bx  ;
mov bl,back ;
mov color,bl   ;
call draw_square;
add ysmiley, 1
;call draw_maze
call draw_smiley
;call delay
down:
cmp al,119
jne up
cmp ysmiley,1
jb up
xor al,al; no need for al ...

sub ysmiley,1
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
add ysmiley,1
cmp al,14
je check2

sub ysmiley,1
add xsmiley,7
mov cx,xsmiley
mov dx,ysmiley
mov ah,0dh
int 10h
add ysmiley,1
sub xsmiley,7
cmp al,14
je check2

xor cx,cx
xor dx,dx

call delete_smiley
call onfruit
cmp boolean,1
je DRAWAGAIN
cmp boolean1,1
je DRAWAGAIN
cmp cboolean,1
je DRAWAGAIN
cmp boolean2,1
je DRAWAGAIN
cmp carrotbool,1
je DRAWAGAIN
jmp CONTINUE11
DRAWAGAIN:
mov seconds,3
call doG4
add times,6
call draw_maze
CONTINUE11:

mov bx,xsmiley ;
mov x,bx      ;
mov bx,ysmiley ;
mov y,bx        ;
xor bx,bx  ;
mov bl,back ;
mov color,bl   ;
call draw_square;
sub ysmiley,1
;call draw_maze
call draw_smiley
up:

end1:

CHECK2:

cmp al,'b'
jne checkrestore
mov bx,9
mov back,bx
xor bx,bx
mov bl,9
mov background,bl
call draw_maze


checkrestore:
cmp al,'n'
jne checkr
mov bx,7
mov back,bx
xor bx,bx
mov bl,7
mov background,bl
call draw_maze

checkr:

cmp al,'r'
jne checkr1
jmp begin1


checkr1:

cmp al,'R'
jne finishmover
jmp begin1
finishmover:
popa
ret
endp

proc onfruit; receives : xsmiley,ysmiley
pusha
mov bx,xsmiley
mov dx,ysmiley
cmp bx,157
jb check4 ; need  x value  between 157-180 (160)
cmp bx,180
ja check4
cmp dx,97 ; need y value between 97-117 (100)
jb check4
cmp dx,117
ja check4
mov bx,1
add boolean,bx
check4:

mov bx,xsmiley
mov dx,ysmiley
cmp bx,85
jb check55 ; need  x value  between 85-104     (88,128)
cmp bx,104
ja check55
cmp dx,125 ; need y value between 125-144
jb check55
cmp dx,144
ja check55
mov bx,1
add boolean1,bx
check55:

mov bx,xsmiley
mov dx,ysmiley
cmp bx,67
jb check66 ; need  x value  between 67-97     (74,16)
cmp bx,97
ja check66
cmp dx,9 ; need y value between 9-39
jb check66
cmp dx,39
ja check66
mov bx,1
add cboolean,bx
check66:

mov bx,xsmiley
mov dx,ysmiley
cmp bx,130
jb check77 ;     (136,32)
cmp bx,152
ja check77
cmp dx,29 ;
jb check77
cmp dx,48
ja check77
mov bx,1
add boolean2,bx
check77:

mov bx,xsmiley
mov dx,ysmiley
cmp bx,185
jb check88  ;      (192,112)     (x,y)
cmp bx,208
ja check88
cmp dx,105 ;
jb check88
cmp dx,128
ja check88
mov bx,1
add carrotbool,bx

check88:

popa
ret
endp

proc restart
pusha
call delete_smiley
mov boolean,0 ; add all the others booleans here !!!
mov boolean1,0
mov cboolean,0
mov boolean2,0
mov carrotbool,0
call draw_maze
mov xsmiley,8
mov ysmiley,8
call draw_smiley ; redraws the player in the starting point
popa
ret
endp


proc clean_screen
pusha
xor al,al
xor cx,cx
xor dx,dx
mov ah, 0ch
rows99:
mov cx, 0
cols99:
int 10h
inc cx
cmp cx, 320  ;times
jne cols99
inc dx
cmp dx, 200 ; times
jne rows99
popa
ret
endp

start:
; set segment registers:
mov ax, data
mov ds, ax
call init_graphics
;jmp finish1 ;;
begin1:
call clean_screen
mov ah,2
mov dh,0; rows
mov dl,0; column
int 10h
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
xor si,si

mov timetotal,100

mov dl,offset choosemsg
mov ah,9
int 21h


mov dl,offset easy
mov ah,9
int 21h


mov dl,offset medium
mov ah,9
int 21h


mov dl,offset hard
mov ah,9
int 21h


mov dl,offset impossible
mov ah,9
int 21h

xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx
xor si,si
;mov times,10
;mov timem,0
getdifficult:
mov ah,0
int 16h
cmp al,'1'
je easy1
cmp al,'2'
je medium1
cmp al,'3'
je hard1
cmp al,'4'
je impossible1

jmp getdifficult
easy1:
mov timem,1
mov times,15
jmp launch

medium1:
mov timem,1
mov times,0
jmp launch

hard1:
mov timem,0
mov times,40
jmp launch

impossible1:
mov timem,0
mov times,25
jmp launch
launch:
call draw_maze
call restart
mov bx,250
mov x,bx
mov bx,150
mov y,bx
xor bx,bx
call draw_smiley
mov seconds,9
call draw_three
call doG4
call delay
call draw_maze
call draw_smiley
call draw_two
call doG4
call delay
call draw_maze
call draw_one
call doG4
call delay
call draw_maze
call draw_smiley
call draw_go
call doG5
call delay
call draw_maze
call draw_smiley

infinity:
call mover
mov bx,xsmiley
mov x,bx
mov bx,ysmiley
mov y,bx
xor bx,bx
cmp x,300; ; if the x value is smaller than 305, the condition does not apply
JB continue
cmp y,150;; if the y value is smaller than 155, the condition does not apply
jb continue
cmp y,190; if the y value is bigger than 180, the condition does not apply
ja continue
jmp finish1
continue:

CALL TIME
CMP TIMES,0
JNE INFINITY
CMP TIMEM,0
JNE INFINITY
jmp FAIL

finish1:
call clean_screen
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx

mov ah,2
mov dh,0; rows
mov dl,0; column
int 10h

mov dl,offset finishmsg
mov ah,9
int 21h
call draw_dragon
mov seconds,4             ;1.1
call doG4
mov seconds,6
call delay
mov seconds,2          ;0.5
call doG4
mov seconds,6
call delay
mov seconds,2        ;1
call doD5
mov seconds,6
call delay
mov seconds,4      ;1
call doC5
mov seconds,6
call delay
mov seconds,5    ;1
call doBb4
mov seconds,6
call delay
mov seconds,5; 1.5
call do435
mov seconds,6
call delay
mov seconds,2; 1
call do435
mov seconds,6
call delay
mov seconds,2; 1
call do435
mov seconds,6
call delay
mov seconds,4 ; 1
call doC5
mov seconds,6
call delay
mov seconds ,3  ;1
call doBb4
mov seconds,6
call delay
mov seconds,3 ;1
call do435
mov seconds,6
call delay
mov seconds,3
call doG4
mov seconds,6
call delay

mov seconds,4;1
call doG4

mov seconds,6
call delay

mov seconds,2 ;0.5
call doG5

mov seconds,6
call delay

mov seconds,2;0.5
call doF5

mov seconds,6
call delay


mov seconds,2 ; 0.5
call doG5

mov seconds,6
call delay

mov seconds,2;0.5
call doF5

mov seconds,6
call delay

mov seconds,2;0.5
call doG5

mov seconds,6
call delay

mov seconds,4;1
call doG4

mov seconds,6
call delay


mov seconds,1;0.5
call doG4

mov seconds,6
call delay

mov seconds,1;0.5
call doF5

mov seconds,6
call delay


mov seconds,1;0.5
call doG5


mov seconds,6
call delay

mov seconds,1;0.5
call doF5

mov seconds,6
call delay

mov seconds,1;0.5
call doG5

mov seconds,6
call delay

restartloop:
mov ah,0
int 16h
cmp al, 'r'
je  begin1
cmp al ,'R'
je begin1
jmp restartloop
endprogram:
in al, 61h   ; this closes the speaker
and al, 11111100b
out 61h, al


FAIL:
call clean_screen
mov dl, offset failmsg
mov ah,9
int 21h

;mov seconds,13;
;call doG4;

;mov seconds,3 ;
;call delay;

;mov seconds,13
;call doD4
;
;;mov seconds,3
;call delay

;mov seconds,13
;call doDb4

;mov seconds,3
;call delay
;
;;mov seconds,18
;call doC4
;mov seconds,2

infinity2:
mov ah,0
int 16h
cmp al,'r'
je begin1
cmp al,'R'
je begin1
jmp infinity2
mov ax, 4c00h ; exit to operating system.
int 21h
ends

end start ; set entry point and stop the as sembler.

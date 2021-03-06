*-----------------------------------------------------------
* Title      : Stampa Array DBRA
* Written by : Luca A. Vandro
* Date       : 28/06/2018
* Description: Stampa i numeri contenuti in un array utilizzando l'istruzione DBRA
*-----------------------------------------------------------
        ORG    $1000
ARRAY   DC     7,4,87       ; Definisco la costante ARRAY che contiene 3 valori
LEN     EQU     3           ; Definisco la costante LEN = 3: � la lunghezza dell'array
START:                      ; La prima istruzione del programma
        MOVE  #LEN-1, D2    ; Utilizzo il registro D2, come contatore
        MOVEA #ARRAY, A0    ; Carico in A0 l'indirizzo del primo valore dell'array
        MOVE  #3, D0        ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
LOOP:   MOVE (A0)+, D1      ; Carica il primo valore dell'array in D1 e fai puntare A1 alla cella successiva dell'array
        TRAP #15            ; Stampa il valore
        DBRA D2, LOOP       ; Se D2 > -1, decrementa D2 e torna a LOOP altrimenti prosegue
        END     START       ; Fine



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

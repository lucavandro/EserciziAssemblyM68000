*-----------------------------------------------------------
* Title      : Somma di due costanti
* Written by : Luca A. Vandro
* Date       : 28/06/2018
* Description: Eseugue la somma di due costanti A e B e stampa il risultato nello standard OUTPUT
*-----------------------------------------------------------
    ORG    $1000
A   DC.L  7             ; Definisco la costante A
B   DC.L  5             ; Definisco la costante B
START:                  ; Inizio del programma
    MOVE.L A, D2        ; Carica il valore A nel registro D2
    ADD.L  B, D2        ; Aggiungi il valore B al contenuto di D2
    MOVE.L D2, D1       ; Sposta il contenuto di D2 in D1
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    END    START        ; Fine del programma

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

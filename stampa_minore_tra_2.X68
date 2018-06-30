*-----------------------------------------------------------
* Title      : Trova minore
* Written by : Luca A. Vandro
* Date       : 30/06/2018
* Description: Legge due numeri e stampa il maggiore
*-----------------------------------------------------------
    ORG    $1000
START:                  ; first instruction of program
        MOVE #4,D0          ; Carica il valore 4 nel registro D0 (TRAP 4 - Legge un intero e lo salva D1)
        TRAP #15            ; Esegue la lettura del primo numero
        MOVE D1, D2         ; Sposta il primo numero in D2
        TRAP #15            ; Esegue la lettura del secondo numero
        CMP D2, D1          ; Confronta D2, D1
        BLE STAMPA          ; Se D1 <= D2, vai a stampa
        MOVE D2, D1         ; Carico in D2 in D1
STAMPA: MOVE #3, D0         ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
        TRAP #15
        END    START        ; Fine

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

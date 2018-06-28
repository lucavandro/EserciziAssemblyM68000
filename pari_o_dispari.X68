*-----------------------------------------------------------
* Title      : Pari o dispari
* Written by : Luca A. Vandro
* Date       : 28/06/2018
* Description: Legge e stampa la lettera P se il numero è pari, D altrimenti
*-----------------------------------------------------------
    ORG    $1000
P   DC     'P'          ; Definisco la costante P che contiene il carattere P
D   DC     'D'          ; Definisco la costante D che contiene il carattere D
START:                  ; Inizio del programma
    CLR    D0           ; Svuota D0 (Prima di usarlo)
    CLR    D1           ; Svuota D1 (Prima di usarlo)
    MOVE.B #4,D0        ; Carica il valore 4 nel registro D0 (TRAP 4 - Legge un intero e lo salva D1)
    TRAP #15            ; Esegue la lettura del numero
    BTST #0, D1         ; Verifica che il bit meno significativo di D1 sia a 0
    BNE  DISPARI        ; Se il confronto precedente è falso, salta al punto "DISPARI"  
PARI MOVE.B P, D1       ; Carica la costante P nel registro D1
     JMP STAMPA         ; Salta all'etichetta STAMPA
DISPARI MOVE.B D, D1    ; Carica la costante D nel registro D1 
STAMPA MOVE #6, D0      ; Carica il valore 6 nel registro D0 (TRAP 6 - Stampa carattere)
    TRAP #15
    END    START        ; Fine del programma




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

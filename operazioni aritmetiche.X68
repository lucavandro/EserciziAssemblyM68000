*-----------------------------------------------------------
* Title      : Operazioni aritmetiche
* Written by : Luca A. Vandro
* Date       : 28/06/2018
* Description: Eseugue la somma, la differenza, il rapporto e il prodotto di due costanti A e B e stampa il risultato nello standard OUTPUT
*-----------------------------------------------------------
    ORG    $1000
A   DC.L  7             ; Definisco la costante A
B   DC.L  5             ; Definisco la costante B
LF  EQU  $0A            ; New line (line feed)
CR  EQU  $0D            ; Carriage Return
START:                  ; Inizio del programma
    * ADDIZIONE 
    MOVE.L A, D1        ; Carica il valore A nel registro D1
    ADD.L  B, D1        ; Aggiungi il valore B al contenuto di D1
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #LF, D1        ; Carica il carattere a capo in D1
    MOVE.L #6, D0       ; Carica il valore 6 nel registro D0 (TRAP 6 - Stampa il carattere contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #CR, D1        ; Carica il carattere carrige return in D1
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0
    * DIFFERENZA
    MOVE.L A, D1        ; Carica il valore A nel registro D1
    SUB.L  B, D1        ; Aggiungi il valore B al contenuto di D2
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #LF, D1        ; Carica il carattere a capo in D1
    MOVE.L #6, D0       ; Carica il valore 6 nel registro D0 (TRAP 6 - Stampa il carattere contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #CR, D1        ; Carica il carattere carrige return in D1
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0
    * MOLTIPLICAZIOINE
    MOVE.L A, D1        ; Carica il valore A nel registro D1
    MOVE.L B, D2        ; Carica il valore A nel registro D1
    MULS  D2, D1        ; Moltiplica il valore D2 per il contenuto di D1
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #LF, D1        ; Carica il carattere a capo in D1
    MOVE.L #6, D0       ; Carica il valore 6 nel registro D0 (TRAP 6 - Stampa il carattere contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
    MOVE #CR, D1        ; Carica il carattere carrige return in D1
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0    
    * DIVISIONE
    MOVE.L A, D2        ; Carica il valore A nel registro D2
    MOVE.L B, D3        ; Carica il valore A nel registro D3
    DIVS  D3, D2        ; Divide D2 per D3, e salva il risultato in D2
    MOVE.W D2, D1       ; Carico solo il quoziente (16 bit meno significativi - quelli all'estrema destra - di D2)
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Esegue un input o un output in base al valore contenuto in D0 
 
    END    START        ; Fine del programma
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

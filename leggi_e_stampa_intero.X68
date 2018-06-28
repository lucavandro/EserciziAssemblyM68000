*-----------------------------------------------------------
* Title      : Somma due interi letti da input
* Written by : Luca A. Vandro
* Date       : 28/06/2018
* Description: Legge due interi da input e ne stampa la somma
*-----------------------------------------------------------
    ORG    $1000
START:                  ; Inizio del programma
    CLR    D0           ; Svuota D0 (Prima di usarlo)
    CLR    D1           ; Svuota D1 (Prima di usarlo)
    MOVE.B #4,D0        ; Carica il valore 4 nel registro D0 (TRAP 4 - Legge un intero e lo salva D1)
    TRAP #15            ; Esegue la lettura del primo numero
    MOVE.L D1, D2       ; Carica il valore letto, attualmente D1, nel registro D2
    CLR    D1           ; Svuota D1     
    TRAP #15            ; Esegue la lettura del secondo numero
    ADD.L  D2, D1       ; Il primo numero di trova in D2, il secondo in D1: sommo D2 a D1 e salvo tutto in D1
    MOVE.L #3, D0       ; Carica il valore 3 nel registro D0 (TRAP 3 - Stampa il valore contenuto in D1)
    TRAP #15            ; Stampa il valore contenuto in D1
    END    START        ; Fine del programma



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

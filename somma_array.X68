*-----------------------------------------------------------
* Title      : Somma array
* Written by : Luca A. Vandro
* Date       : 30/06/2018
* Description: Calcola e stampa la somma degli elementi contenuti in un array
*-----------------------------------------------------------
    ORG    $1000
ARRAY  DC  1,4,6,9,1,2
LEN    EQU  6
START:
    MOVE  #LEN-1, D2     ; Utilizzo D2 come contatore e lo inizializzio a 5 (LEN - 1)
    MOVE  #0, D1        ; D1 verrà utilizzato per contenere la somma dei numeri. Inizialmente = 0
    MOVEA  #ARRAY, A0   ; A0 conterrà la l'indirizzo del primo elemento dell'array
LOOP: 
    MOVE    (A0)+,D0    ; Sposto l'elemento dell'array da aggiungere alla somma in D0 e faccio puntare A0 alla cella successiva
    ADD     D0, D1      ; Sommo D0 a D1
    DBRA    D2, LOOP    ;
    MOVE    #3, D0      ;
    TRAP    #15 
    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

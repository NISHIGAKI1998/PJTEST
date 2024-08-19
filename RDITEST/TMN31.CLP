000100980416/*******************************************************************/
000200980416/**   **    **                      **/
000300980416/**                                         CREATE  :  XX/XX/XX   **/
000400980416/**                                         CHANGE  :  XX/XX/XX   **/
000500980416/**    PROG-ID : TMN31                      WRITER  :  YBS        **/
000600980416/*******************************************************************/
000700980416/**98/04/16 M.KOTAKA              **/
000800980416/**                               **/
000900001102/**00/11/02 M.KOTAKA      **/
001000001222/**00/12/22 M.KOTAKA    **/
001100020325/**02/03/25 M.KOTAKA    **/
001200081222/**08/12/22 M.KOTAKA  **/
001300090317/* 09/03/17 M.KOTAKA    */
001400100222/**10/02/22 M.KOTAKA ¢»°ÎÞEDI**/
001500100222/**10/02/22 M.KOTAKA ¢»°ÎÞEDI**/
001600130522/* 13/05/22 M.KOTAKA    */
001700151214/**15/12/14 M.KOTAKA              **/
001800170117/**17/01/17 M.KOTAKA              **/
001900240530/**24/05/30 O.NOS    FAXFAXIMO */
002000240705/**24/07/05 N.NOS               **/
002100980416/*******************************************************************/
002200000000PGM
002300920117DCLF       FILE(*LIBL/TMN31FM)
002400000000      DCL     VAR(&WSEL)   TYPE(*CHAR) LEN(2)
002500000000      DCL     VAR(&XWS)    TYPE(*CHAR) LEN(10)
002600081218/*    DCL     VAR(&XOUTQ)  TYPE(*CHAR) LEN(10)                      */
002700000000      DCL     VAR(&DATE)   TYPE(*CHAR) LEN(6)
002800081218/*    DCL     VAR(&TIME)   TYPE(*CHAR) LEN(6)                       */
002900000000      DCL     VAR(&FILE)  TYPE(*CHAR) LEN(1)
003000000000      RTVJOBA JOB(&XWS)    DATE(&DATE)
003100000000      CHGVAR  VAR(&XWSID)  VALUE(%SUBSTRING(&XWS 1 4))
003200000000\010: SNDRCVF RCDFMT(TMN31R)
003300000000      CHGVAR   VAR(&FILE)   VALUE(' ')
003400000000            CHGVAR   VAR(&IN01)   VALUE('0')
003500000000            CHGVAR   VAR(&IN02)   VALUE('0')
003600000000            CHGVAR   VAR(&IN03)   VALUE('0')
003700000000            CHGVAR   VAR(&IN04)   VALUE('0')
003800000000            CHGVAR   VAR(&IN05)   VALUE('0')
003900910607            CHGVAR   VAR(&IN06)   VALUE('0')
004000081222            CHGVAR   VAR(&IN07)   VALUE('0')
004100090317/* 09/03/17 CHGVAR   VAR(&IN08)   VALUE('0')                        */
004200130522            CHGVAR   VAR(&IN08)   VALUE('0')
004300000000            CHGVAR   VAR(&IN10)   VALUE('0')
004400000000            CHGVAR   VAR(&IN11)   VALUE('0')
004500910318            CHGVAR   VAR(&IN13)   VALUE('0')
004600910318            CHGVAR   VAR(&IN14)   VALUE('0')
004700240530/*ADD STR NOS 20240530 */
004800240530            CHGVAR   VAR(&IN16)   VALUE('0')
004900240530/*ADD STR NOS 20240530 */
005000000000            CHGVAR   VAR(&IN21)   VALUE('0')
005100000000            CHGVAR   VAR(&IN22)   VALUE('0')
005200000000            CHGVAR   VAR(&IN23)   VALUE('0')
005300000000            CHGVAR   VAR(&IN25)   VALUE('0')
005400950726            CHGVAR   VAR(&IN27)   VALUE('0')
005500950726            CHGVAR   VAR(&IN28)   VALUE('0')
005600950726            CHGVAR   VAR(&IN29)   VALUE('0')
005700170117            CHGVAR   VAR(&IN31)   VALUE('0')
005800151214            CHGVAR   VAR(&IN32)   VALUE('0')
005900020325/*02/03/25  CHGVAR   VAR(&IN34)   VALUE('0')                       */
006000240705            CHGVAR   VAR(&IN34)   VALUE('0')
006100000000            IF (&XSEL = '01') CHGVAR   VAR(&IN01)   VALUE('1')
006200000000            IF (&XSEL = '02') CHGVAR   VAR(&IN02)   VALUE('1')
006300000000            IF (&XSEL = '03') CHGVAR   VAR(&IN03)   VALUE('1')
006400000000            IF (&XSEL = '04') CHGVAR   VAR(&IN04)   VALUE('1')
006500000000            IF (&XSEL = '05') CHGVAR   VAR(&IN05)   VALUE('1')
006600910607            IF (&XSEL = '06') CHGVAR   VAR(&IN06)   VALUE('1')
006700081222            IF (&XSEL = '07') CHGVAR   VAR(&IN07)   VALUE('1')
006800090317/* 09/03/17 IF (&XSEL = '08') CHGVAR   VAR(&IN08)   VALUE('1')      */
006900130522            IF (&XSEL = '08') CHGVAR   VAR(&IN08)   VALUE('1')
007000000000            IF (&XSEL = '10') CHGVAR   VAR(&IN10)   VALUE('1')
007100000000            IF (&XSEL = '11') CHGVAR   VAR(&IN11)   VALUE('1')
007200910318            IF (&XSEL = '13') CHGVAR   VAR(&IN13)   VALUE('1')
007300910318            IF (&XSEL = '14') CHGVAR   VAR(&IN14)   VALUE('1')
007400240530/*ADD STR NOS 20240530 */
007500240530            IF (&XSEL = '16') CHGVAR   VAR(&IN16)   VALUE('1')
007600240530/*ADD END NOS 20240530 */
007700000000            IF (&XSEL = '21') CHGVAR   VAR(&IN21)   VALUE('1')
007800000000            IF (&XSEL = '22') CHGVAR   VAR(&IN22)   VALUE('1')
007900000000            IF (&XSEL = '23') CHGVAR   VAR(&IN23)   VALUE('1')
008000000000            IF (&XSEL = '25') CHGVAR   VAR(&IN25)   VALUE('1')
008100950726            IF (&XSEL = '27') CHGVAR   VAR(&IN27)   VALUE('1')
008200950726            IF (&XSEL = '28') CHGVAR   VAR(&IN28)   VALUE('1')
008300950726            IF (&XSEL = '29') CHGVAR   VAR(&IN29)   VALUE('1')
008400170117            IF (&XSEL = '31') CHGVAR   VAR(&IN31)   VALUE('1')
008500151214            IF (&XSEL = '32') CHGVAR   VAR(&IN32)   VALUE('1')
008600020325/*02/03/25  IF (&XSEL = '34') CHGVAR   VAR(&IN34)   VALUE('1')      */
008700240705            IF (&XSEL = '34') CHGVAR   VAR(&IN34)   VALUE('1')
008800000000            IF (&XSEL = '99') DO
008900000000                SIGNOFF
009000000000            ENDDO
009100000000            IF (&XSEL = '98') DO
009200000000                RETURN
009300000000            ENDDO
009400000000 /*   IF COND(&XSEL *NE &WSEL) THEN(DO)          */
009500000000 /*      CHGVAR   VAR(&WSEL)  VALUE(&XSEL)       */
009600000000 /*      GOTO \010                               */
009700000000 /*   ENDDO                                      */
009800000000            IF (&XSEL = '01') DO
009900920117CALL       PGM(*LIBL/TD3050)
010000000000                CHGVAR   VAR(&IN01)   VALUE('0')
010100000000            ENDDO
010200000000            IF (&XSEL = '02') DO
010300920117CALL       PGM(*LIBL/TD3060)
010400000000                CHGVAR   VAR(&IN02)   VALUE('0')
010500000000            ENDDO
010600000000            IF (&XSEL = '03') DO
010700920117CALL       PGM(*LIBL/TD3070) PARM('      ' '     ' '  ' ' ')
010800000000                CHGVAR   VAR(&IN03)   VALUE('0')
010900000000            ENDDO
011000000000            IF (&XSEL = '04') DO
011100941107 /* 94/11/07 CALL       PGM(*LIBL/TD3080)     */
011200941107             CALL       PGM(*LIBL/TD3085)
011300000000                CHGVAR   VAR(&IN04)   VALUE('0')
011400000000            ENDDO
011500000000            IF (&XSEL = '05') DO
011600920117CALL       PGM(*LIBL/TD3010)
011700000000                CHGVAR   VAR(&IN05)   VALUE('0')
011800000000            ENDDO
011900910607            IF (&XSEL = '06') DO
012000920117CALL       PGM(*LIBL/TD3260)
012100910607                CHGVAR   VAR(&IN06)   VALUE('0')
012200910607            ENDDO
012300081222            IF (&XSEL = '07') DO
012400081222             CALL       PGM(WILSMP001/WP2##C)
012500081222                CHGVAR   VAR(&IN07)   VALUE('0')
012600081222            ENDDO
012700090317/* 09/03/17 IF (&XSEL = '08') DO                                    */
012800090317/* 09/03/17  CALL       PGM(*LIBL/TD1845C)                          */
012900090317/* 09/03/17     CHGVAR   VAR(&IN08)   VALUE('0')                    */
013000090317/* 09/03/17 ENDDO                                                   */
013100130522            IF (&XSEL = '08') DO
013200130522             CALL       PGM(*LIBL/TD3380)
013300130522                CHGVAR   VAR(&IN08)   VALUE('0')
013400130522            ENDDO
013500000000            IF (&XSEL = '10') DO
013600920117CALL       PGM(*LIBL/TD6010)
013700000000             OVRPRTF    FILE(TD6050PR) FORMTYPE('') +
013800000000                          SCHEDULE(*IMMED)
013900920117CALL       PGM(*LIBL/TD6050)
014000000000             DLTOVR     FILE(*ALL)
014100000000                CHGVAR   VAR(&IN10)   VALUE('0')
014200000000            ENDDO
014300000000            IF (&XSEL = '11') DO
014400920117CALL       PGM(*LIBL/TD6020)
014500000000             OVRPRTF    FILE(TD6050PR) FORMTYPE('') +
014600000000                          SCHEDULE(*IMMED)
014700920117CALL       PGM(*LIBL/TD6050)
014800000000             DLTOVR     FILE(*ALL)
014900000000                CHGVAR   VAR(&IN11)   VALUE('0')
015000000000            ENDDO
015100910318            IF (&XSEL = '13') DO
015200920117CALL       PGM(*LIBL/TD6110)
015300100222             CALL       PGM(*LIBL/TD6180)
015400920117OVRPRTF    FILE(TD6150PR) OUTQ(*LIBL/KOP4) FORMTYPE('') +
015500920117             SCHEDULE(*IMMED)
015600920117CALL       PGM(*LIBL/TD6150)
015700910318             DLTOVR     FILE(*ALL)
015800910318                CHGVAR   VAR(&IN13)   VALUE('0')
015900910318            ENDDO
016000910318            IF (&XSEL = '14') DO
016100920117CALL       PGM(*LIBL/TD6120)
016200100222             CALL       PGM(*LIBL/TD6180)
016300920117OVRPRTF    FILE(TD6150PR) OUTQ(*LIBL/KOP4) FORMTYPE('') +
016400920117             SCHEDULE(*IMMED)
016500920117CALL       PGM(*LIBL/TD6150)
016600910318             DLTOVR     FILE(*ALL)
016700910318                CHGVAR   VAR(&IN14)   VALUE('0')
016800910318            ENDDO
016900240530/*ADD STR NOS 20240530 */
017000240530            IF (&XSEL = '16') DO
017100240530CALL       PGM(*LIBL/MAK010C)
017200240530/**/
017300240530             RUNQRY     QRY(WRKCTPKQ)
017400240530                CHGVAR   VAR(&IN16)   VALUE('0')
017500240530            ENDDO
017600240530/*ADD END NOS 20240530 */
017700000000            IF (&XSEL = '21') DO
017800920117CALL       PGM(*LIBL/TD3160)
017900000000                CHGVAR   VAR(&IN21)   VALUE('0')
018000000000            ENDDO
018100000000            IF (&XSEL = '22') DO
018200920117CALL       PGM(*LIBL/TD3170)
018300000000                CHGVAR   VAR(&IN22)   VALUE('0')
018400000000            ENDDO
018500000000            IF (&XSEL = '23') DO
018600920117CALL       PGM(*LIBL/TD3180)
018700000000                CHGVAR   VAR(&IN23)   VALUE('0')
018800000000            ENDDO
018900980416             IF         COND(&XSEL = '25') THEN(DO)
019000980416             CALL       PGM(*LIBL/TD3280)
019100980416             CHGVAR     VAR(&IN25) VALUE('0')
019200980416             ENDDO
019300980416 /*         IF (&XSEL = '25') DO                            */
019400980416 /*          CHGJOB     RUNPTY(20)                          */
019500980416 /*          MONMSG     MSGID(CPF0000)                      */
019600980416 /*          OVRPRTF    FILE(QPRINT) FORMTYPE(*STD)         */
019700980416 /*          CALL       PGM(*LIBL/TD3190)                   */
019800980416 /*          DLTOVR     FILE(QPRINT)                        */
019900980416 /*          CHGVAR     VAR(&IN25) VALUE('0')               */
020000980416 /*          CHGJOB     RUNPTY(50)                          */
020100980416 /*          MONMSG     MSGID(CPF0000)                      */
020200980416 /*          ENDDO                                          */
020300950726 /* 95.7.26 STR                               */
020400950726            IF (&XSEL = '27') DO
020500950726             CALL       PGM(*LIBL/TD3130)
020600950726             CHGVAR     VAR(&IN27) VALUE('0')
020700950726            ENDDO
020800950726            IF (&XSEL = '28') DO
020900950726             CALL       PGM(*LIBL/TD3140)
021000950726             CHGVAR     VAR(&IN28) VALUE('0')
021100950726            ENDDO
021200950726            IF (&XSEL = '29') DO
021300950726             CALL       PGM(*LIBL/TD3150)
021400950726             CHGVAR     VAR(&IN29) VALUE('0')
021500950726            ENDDO
021600170117            IF (&XSEL = '31') DO
021700170117             CALL       PGM(*LIBL/TD3806C)
021800170117                CHGVAR   VAR(&IN31)   VALUE('0')
021900170117            ENDDO
022000151214            IF (&XSEL = '32') DO
022100151214             CALL       PGM(*LIBL/TD3360)
022200151214                CHGVAR   VAR(&IN32)   VALUE('0')
022300151214            ENDDO
022400020325/*02/03/25  IF (&XSEL = '34') DO                                    */
022500020325/*02/03/25   CALL       PGM(*LIBL/MSGFAX)                           */
022600020325/*02/03/25   CHGVAR     VAR(&IN34) VALUE('0')                       */
022700020325/*02/03/25  ENDDO                                                   */
022800240705/*24/07/05  N.NOS                     */
022900240705            IF (&XSEL = '34') DO
023000240705                CALL       PGM(*LIBL/TMN97)
023100240705                CHGVAR   VAR(&IN34)   VALUE('0')
023200240705            ENDDO
023300950726 /* 95.7.26 END                               */
023400000000      CHGVAR VAR(&XSEL) VALUE('  ')
023500000000      CHGVAR VAR(&WSEL) VALUE('  ')
023600000000      GOTO \010
023700000000ENDPGM

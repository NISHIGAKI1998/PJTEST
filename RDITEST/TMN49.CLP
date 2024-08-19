000100051027/*********************************************************************/
000200161202/**    **    **                 **/
000300161202/**                                         CREATE  :  16/12/01     **/
000400051027/**                                                                 **/
000500240306/**    PROG-ID : TMN49                      WRITER  :  NOS          **/
000600051027/*********************************************************************/
000700240610/* 24/06/10 NOS.NISHIGAKI 35,36                      */
000800240614/* 24/06/14 NOS.NISHIGAKI 15,16                      */
000900080911/*********************************************************************/
001000000000PGM
001100161202
001200240306DCLF       FILE(*LIBL/TMN49FM)
001300000000      DCL     VAR(&WSEL)   TYPE(*CHAR) LEN(2)
001400000000      DCL     VAR(&XWS)    TYPE(*CHAR) LEN(10)
001500080911/*    DCL     VAR(&XOUTQ)  TYPE(*CHAR) LEN(10)                      */
001600000000      DCL     VAR(&DATE)   TYPE(*CHAR) LEN(6)
001700080911/*    DCL     VAR(&TIME)   TYPE(*CHAR) LEN(6)                       */
001800000000      DCL     VAR(&FILE)  TYPE(*CHAR) LEN(1)
001900000000      RTVJOBA JOB(&XWS)    DATE(&DATE)
002000051027      CHGVAR  VAR(&XWSID)  VALUE(%SUBSTRING(&XWS 1 4))
002100161202
002200240306/*    ADDLIBLE   LIB(NOSO)     */
002300161202      MONMSG     MSGID(CPF0000)
002400240306/*    ADDLIBLE   LIB(NOSD)      */
002500240306      MONMSG     MSGID(CPF0000)
002600161202
002700240306\010: SNDRCVF RCDFMT(TMN49R)
002800000000      CHGVAR   VAR(&FILE)   VALUE(' ')
002900000000            CHGVAR   VAR(&IN01)   VALUE('0')
003000000000            CHGVAR   VAR(&IN02)   VALUE('0')
003100051027            CHGVAR   VAR(&IN03)   VALUE('0')
003200000000            CHGVAR   VAR(&IN04)   VALUE('0')
003300240306            CHGVAR   VAR(&IN05)   VALUE('0')
003400240306            CHGVAR   VAR(&IN06)   VALUE('0')
003500240306            CHGVAR   VAR(&IN07)   VALUE('0')
003600080911            CHGVAR   VAR(&IN09)   VALUE('0')
003700080911            CHGVAR   VAR(&IN10)   VALUE('0')
003800080911            CHGVAR   VAR(&IN11)   VALUE('0')
003900240614/*          CHGVAR   VAR(&IN12)   VALUE('0')   */
004000240614/*          CHGVAR   VAR(&IN13)   VALUE('0')   */
004100240614            CHGVAR   VAR(&IN15)   VALUE('0')
004200240614            CHGVAR   VAR(&IN16)   VALUE('0')
004300051027            CHGVAR   VAR(&IN21)   VALUE('0')
004400051027            CHGVAR   VAR(&IN22)   VALUE('0')
004500161202            CHGVAR   VAR(&IN23)   VALUE('0')
004600051027            CHGVAR   VAR(&IN24)   VALUE('0')
004700240306            CHGVAR   VAR(&IN25)   VALUE('0')
004800240306            CHGVAR   VAR(&IN26)   VALUE('0')
004900051027            CHGVAR   VAR(&IN29)   VALUE('0')
005000051027            CHGVAR   VAR(&IN30)   VALUE('0')
005100051027            CHGVAR   VAR(&IN31)   VALUE('0')
005200051027            CHGVAR   VAR(&IN32)   VALUE('0')
005300051027            CHGVAR   VAR(&IN33)   VALUE('0')
005400240610/* 24/06/10 NOS.NISHIGAKI 35,36                      */
005500240610            CHGVAR   VAR(&IN35)   VALUE('0')
005600240610            CHGVAR   VAR(&IN36)   VALUE('0')
005700000000            IF (&XSEL = '01') CHGVAR   VAR(&IN01)   VALUE('1')
005800000000            IF (&XSEL = '02') CHGVAR   VAR(&IN02)   VALUE('1')
005900051027            IF (&XSEL = '03') CHGVAR   VAR(&IN03)   VALUE('1')
006000000000            IF (&XSEL = '04') CHGVAR   VAR(&IN04)   VALUE('1')
006100240306            IF (&XSEL = '05') CHGVAR   VAR(&IN04)   VALUE('1')
006200240306            IF (&XSEL = '06') CHGVAR   VAR(&IN06)   VALUE('1')
006300240306            IF (&XSEL = '07') CHGVAR   VAR(&IN07)   VALUE('1')
006400080911            IF (&XSEL = '09') CHGVAR   VAR(&IN09)   VALUE('1')
006500080911            IF (&XSEL = '10') CHGVAR   VAR(&IN10)   VALUE('1')
006600080911            IF (&XSEL = '11') CHGVAR   VAR(&IN11)   VALUE('1')
006700240614 /*         IF (&XSEL = '12') CHGVAR   VAR(&IN12)   VALUE('1')   */
006800240614 /*         IF (&XSEL = '13') CHGVAR   VAR(&IN13)   VALUE('1')   */
006900240614            IF (&XSEL = '15') CHGVAR   VAR(&IN15)   VALUE('1')
007000240614            IF (&XSEL = '16') CHGVAR   VAR(&IN16)   VALUE('1')
007100051027            IF (&XSEL = '21') CHGVAR   VAR(&IN21)   VALUE('1')
007200051027            IF (&XSEL = '22') CHGVAR   VAR(&IN22)   VALUE('1')
007300161202            IF (&XSEL = '23') CHGVAR   VAR(&IN23)   VALUE('1')
007400051027            IF (&XSEL = '24') CHGVAR   VAR(&IN24)   VALUE('1')
007500240306            IF (&XSEL = '25') CHGVAR   VAR(&IN25)   VALUE('1')
007600240306            IF (&XSEL = '26') CHGVAR   VAR(&IN26)   VALUE('1')
007700051027            IF (&XSEL = '29') CHGVAR   VAR(&IN29)   VALUE('1')
007800051027            IF (&XSEL = '30') CHGVAR   VAR(&IN30)   VALUE('1')
007900051027            IF (&XSEL = '31') CHGVAR   VAR(&IN31)   VALUE('1')
008000051027            IF (&XSEL = '32') CHGVAR   VAR(&IN32)   VALUE('1')
008100051027            IF (&XSEL = '33') CHGVAR   VAR(&IN33)   VALUE('1')
008200240610/* 24/06/10 NOS.NISHIGAKI 35,36                      */
008300240610            IF (&XSEL = '35') CHGVAR   VAR(&IN35)   VALUE('1')
008400240610            IF (&XSEL = '36') CHGVAR   VAR(&IN36)   VALUE('1')
008500000000            IF (&XSEL = '99') DO
008600000000                SIGNOFF
008700000000            ENDDO
008800000000            IF (&XSEL = '98') DO
008900161202                RMVLIBLE   LIB(NOSD)
009000161202                MONMSG     MSGID(CPF0000)
009100161202                RMVLIBLE   LIB(NOSO)
009200161202                MONMSG     MSGID(CPF0000)
009300000000                RETURN
009400000000            ENDDO
009500000000      IF COND(&XSEL *NE &WSEL) THEN(DO)
009600000000         CHGVAR   VAR(&WSEL)  VALUE(&XSEL)
009700000000         GOTO \010
009800000000      ENDDO
009900240306/**/
010000051028             IF         COND(&XSEL = '01') THEN(DO)
010100240306             CALL       PGM(*LIBL/TD3570)
010200051028             CHGVAR     VAR(&IN01) VALUE('0')
010300051028             ENDDO
010400240306/**/
010500051028             IF         COND(&XSEL = '02') THEN(DO)
010600240306             CALL       PGM(*LIBL/TD3580)
010700051028             CHGVAR     VAR(&IN02) VALUE('0')
010800051028             ENDDO
010900240306/**/
011000051028             IF         COND(&XSEL = '03') THEN(DO)
011100240306             CALL       PGM(*LIBL/TD3590)
011200051028             CHGVAR     VAR(&IN03) VALUE('0')
011300051028             ENDDO
011400051028             IF         COND(&XSEL = '04') THEN(DO)
011500051028             CHGVAR     VAR(&IN04) VALUE('0')
011600051028             ENDDO
011700240306             IF         COND(&XSEL = '06') THEN(DO)
011800240306             CHGVAR     VAR(&IN06) VALUE('0')
011900240306             ENDDO
012000240306             IF         COND(&XSEL = '07') THEN(DO)
012100240306             CHGVAR     VAR(&IN07) VALUE('0')
012200240306             ENDDO
012300240306             IF         COND(&XSEL = '08') THEN(DO)
012400240306             CHGVAR     VAR(&IN08) VALUE('0')
012500240306             ENDDO
012600080911             IF         COND(&XSEL = '09') THEN(DO)
012700080911             CHGVAR     VAR(&IN09) VALUE('0')
012800080911             ENDDO
012900080911             IF         COND(&XSEL = '10') THEN(DO)
013000080911             CHGVAR     VAR(&IN10) VALUE('0')
013100080911             ENDDO
013200080911             IF         COND(&XSEL = '11') THEN(DO)
013300080911             CHGVAR     VAR(&IN11) VALUE('0')
013400080911             ENDDO
013500240614 /*          IF         COND(&XSEL = '12') THEN(DO)      */
013600240614 /*          CHGVAR     VAR(&IN12) VALUE('0')            */
013700240614 /*          ENDDO                                       */
013800240614 /*          IF         COND(&XSEL = '13') THEN(DO)      */
013900240614 /*          CHGVAR     VAR(&IN13) VALUE('0')            */
014000240614 /*          ENDDO                                       */
014100240614/* 24/06/14 NOS.NISHIGAKI 15                         */
014200240614/* NB (                          */
014300240614             IF (&XSEL = '15') DO
014400240614              CALL       PGM(*LIBL/TD3577C)
014500240614              CHGVAR     VAR(&IN15) VALUE('0')
014600240614             ENDDO
014700240614/* 24/06/14 NOS.NISHIGAKI 16                         */
014800240614/* NB (                        */
014900240614             IF (&XSEL = '16') DO
015000240614              CALL       PGM(*LIBL/TD3578C)
015100240614              CHGVAR     VAR(&IN16) VALUE('0')
015200240614             ENDDO
015300240306/**/
015400051028            IF (&XSEL = '21') DO
015500240306             CALL       PGM(*LIBL/TD3510)
015600240306             CHGVAR     VAR(&IN21) VALUE('0')
015700051028            ENDDO
015800240306/**/
015900051028            IF (&XSEL = '22') DO
016000240306             CALL       PGM(*LIBL/TD3520) PARM('1')
016100051028             CHGVAR     VAR(&IN22) VALUE('0')
016200051028            ENDDO
016300240306/**/
016400240306            IF (&XSEL = '23') DO
016500240306             CALL       PGM(*LIBL/TD3520) PARM('2')
016600240306             CHGVAR     VAR(&IN23) VALUE('0')
016700240306            ENDDO
016800240306/**/
016900240306            IF (&XSEL = '24') DO
017000240306             CALL       PGM(*LIBL/TD3520) PARM('3')
017100240306             CHGVAR     VAR(&IN24) VALUE('0')
017200240306            ENDDO
017300240306/**/
017400240306            IF (&XSEL = '25') DO
017500240306             CALL       PGM(*LIBL/TD3530)
017600240306             CHGVAR     VAR(&IN25) VALUE('0')
017700240306            ENDDO
017800240306/**/
017900240306            IF (&XSEL = '26') DO
018000240306             CALL       PGM(*LIBL/TD3560)
018100240306             CHGVAR     VAR(&IN26) VALUE('0')
018200240306            ENDDO
018300240610            IF (&XSEL = '28') DO
018400240610             CHGVAR     VAR(&IN28) VALUE('0')
018500240610            ENDDO
018600240610            IF (&XSEL = '29') DO
018700240610             CHGVAR     VAR(&IN29) VALUE('0')
018800240610            ENDDO
018900051028             IF         COND(&XSEL = '30') THEN(DO)
019000051028             CHGVAR     VAR(&IN30) VALUE('0')
019100051028             ENDDO
019200051028             IF         COND(&XSEL = '31') THEN(DO)
019300051028             CHGVAR     VAR(&IN31) VALUE('0')
019400051028             ENDDO
019500051028             IF         COND(&XSEL = '32') THEN(DO)
019600051028             CHGVAR     VAR(&IN32) VALUE('0')
019700051028             ENDDO
019800051028             IF         COND(&XSEL = '33') THEN(DO)
019900051028             CHGVAR     VAR(&IN33) VALUE('0')
020000051028             ENDDO
020100240610/* 24/06/10 NOS.NISHIGAKI    */
020200240610/* */
020300240610            IF (&XSEL = '35') DO
020400240610             CALL       PGM(*LIBL/TD3516C)
020500240610             CHGVAR     VAR(&IN35) VALUE('0')
020600240610            ENDDO
020700240610/* 24/06/10 NOS.NISHIGAKI    */
020800240610/* */
020900240610            IF (&XSEL = '36') DO
021000240610             CALL       PGM(*LIBL/TD3518C)
021100240610             CHGVAR     VAR(&IN36) VALUE('0')
021200240610            ENDDO
021300000000      CHGVAR VAR(&XSEL) VALUE('  ')
021400000000      CHGVAR VAR(&WSEL) VALUE('  ')
021500000000      GOTO \010
021600000000ENDPGM

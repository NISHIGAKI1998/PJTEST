000100000000/********************************************************************/
000200240604/**                                         CREATE  :  24/06/04    **/
000300240604/**   CL                     **/
000400000000/**                                         CHANGE  :  XX/XX/XX    **/
000500240610/**    PROG-ID : TD3516C                                           **/
000600240604/**                                         WRITER  : NOS NISHIGAKI**/
000700000000/********************************************************************/
000800240604/** 24/06/04 NOS NISHIGAKI*/
000900000000/********************************************************************/
001000000000
001100240604             PGM
001200240605/*            */
001300240605CLRPFM     FILE(*LIBL/NKNFLPZ)
001400240604/*            */
001500240610             CALL       PGM(TD3516)
001600000000
001700240604/*                  */
001800240610             RUNQRY     QRY(TD3516QRY)
001900000000EXIT:
002000000000             ENDPGM

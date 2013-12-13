#IFNDEF _NDJXDEF_CH

    #DEFINE _NDJXDEF_CH
    
    #XCOMMAND NDJ BEGIN TRANSACTION <cIDTTS> => BEGIN SEQUENCE; StaticCall(NDJLIB031,NDJBegTTS,<cIDTTS>)
    #XCOMMAND NDJ BEGIN TRANSACTION EXTENDED <cIDTTS> => BEGIN SEQUENCE; StaticCall(NDJLIB031,NDJBegTTS,<cIDTTS>)
  
    #XCOMMAND NDJ RECOVER TRANSACTION <cIDTTS> => RECOVER; StaticCall(NDJLIB031,NDJDisTTS,<cIDTTS>)
    #XCOMMAND NDJ RECOVER TRANSACTION EXTENDED <cIDTTS> => RECOVER; StaticCall(NDJLIB031,NDJDisTTS,<cIDTTS>)
  
    #XCOMMAND NDJ END TRANSACTION  <cIDTTS> => StaticCall(NDJLIB031,NDJEndTTS,<cIDTTS>); END SEQUENCE
    #XCOMMAND NDJ END TRANSACTION EXTENDED <cIDTTS> => StaticCall(NDJLIB031,NDJEndTTS,<cIDTTS>); END SEQUENCE
    
    #XTRANSLATE NDJ BEGIN TRANSACTION <cIDTTS> => BEGIN SEQUENCE; StaticCall(NDJLIB031,NDJBegTTS,<cIDTTS>)
    #XTRANSLATE NDJ BEGIN TRANSACTION EXTENDED <cIDTTS> => BEGIN SEQUENCE; StaticCall(NDJLIB031,NDJBegTTS,<cIDTTS>)
  
    #XTRANSLATE NDJ RECOVER TRANSACTION <cIDTTS> => RECOVER; StaticCall(NDJLIB031,NDJDisTTS,<cIDTTS>)
    #XTRANSLATE NDJ RECOVER TRANSACTION EXTENDED <cIDTTS> => RECOVER; StaticCall(NDJLIB031,NDJDisTTS,<cIDTTS>)
  
    #XTRANSLATE NDJ END TRANSACTION  <cIDTTS> => StaticCall(NDJLIB031,NDJEndTTS,<cIDTTS>); END SEQUENCE
    #XTRANSLATE NDJ END TRANSACTION EXTENDED <cIDTTS> => StaticCall(NDJLIB031,NDJEndTTS,<cIDTTS>); END SEQUENCE

    #DEFINE NDJ_TRANNULL     0
    #DEFINE NDJ_TRANBEGIN    1
    #DEFINE NDJ_TRANCOMMIT   2
    #DEFINE NDJ_TRANROLLBACK 3
    #DEFINE NDJ_TRANEND      4
    #DEFINE NDJ_TRANAS400    5
 
    #DEFINE NDJ_NIPCSLEEP       1000
    #DEFINE NDJ_NIPCGLBLOCK     0
    #DEFINE NDJ_CIPCPATHCONTROL "\NDJsemaphore\"
    #DEFINE NDJ_CIPCFILECONTROL "NDJIPCControl.lck"
    
    #DEFINE NDJ_MSGCONOUT 	 1
    #DEFINE NDJ_MSGINTERNAL  2
    #DEFINE NDJ_MSGALERT     3 

#ENDIF
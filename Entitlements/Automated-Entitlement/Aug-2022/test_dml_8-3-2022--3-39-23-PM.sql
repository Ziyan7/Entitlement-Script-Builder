/*********************************************************************************************************/
-- <APPLICATION_NAME>'Personal Action Plan'</APPLICATION_NAME>
-- <RELEASE> 5.2</RELEASE>
-- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
-- <PROD_SCHEMA_NAME>acdc</PROD_SCHEMA_NAME>
-- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
-- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
-- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
-- <JIRA>sdasacs</JIRA>
-- <SHORTID>undefined</SHORTID>
/*********************************************************************************************************/

delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='Personal Action Plan' and guid in ("123");
commit;
delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='Personal Action Plan' and guid in ("123");

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'CO','123','DENY','Personal Action Plan','KP_EBIZ','Personal Action Plan',SYSTIMESTAMP,SYSTIMESTAMP);

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'DB','123','DENY','Personal Action Plan','KP_EBIZ','Personal Action Plan',SYSTIMESTAMP,SYSTIMESTAMP);

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'CS','123','DENY','Personal Action Plan','KP_EBIZ','Personal Action Plan',SYSTIMESTAMP,SYSTIMESTAMP);

commit;commit;
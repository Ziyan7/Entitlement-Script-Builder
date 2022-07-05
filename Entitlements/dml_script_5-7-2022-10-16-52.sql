/*********************************************************************************************************/
    -- <APPLICATION_NAME>Personal Action Plan</APPLICATION_NAME>
    -- <RELEASE> 5.2</RELEASE>
    -- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
    -- <PROD_SCHEMA_NAME>HINT1,HPPIDC,HREG1</PROD_SCHEMA_NAME>
    -- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
    -- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
    -- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
    -- <JIRA>https://jira-aes.kp.org/browse/RM-43065</JIRA>
    -- <SHORTID>234</SHORTID>
    /*********************************************************************************************************/

delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='Personal Action Plan' and guid in ("12345");

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'North West (KNW)','12345','PERMIT','Personal Action Plan','EPIC','Personal Action Plan',SYSTIMESTAMP,SYSTIMESTAMP);

commit;
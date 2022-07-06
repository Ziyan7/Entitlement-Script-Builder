/*********************************************************************************************************/
-- <APPLICATION_NAME>CareMgmt-Orders-TestGraphing</APPLICATION_NAME>
-- <RELEASE> 5.2</RELEASE>
-- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
-- <PROD_SCHEMA_NAME>aaaa</PROD_SCHEMA_NAME>
-- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
-- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
-- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
-- <JIRA>https://jira-aes.kp.org/browse/    aaa</JIRA>
-- <SHORTID>210</SHORTID>
/*********************************************************************************************************/

delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='CareMgmt-Orders-TestGraphing') and RGN_ID in ('MID');
commit;
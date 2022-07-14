/*********************************************************************************************************/
-- <APPLICATION_NAME>Administrative-StaffAdministered-HCOFeatures</APPLICATION_NAME>
-- <RELEASE> 5.2</RELEASE>
-- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
-- <PROD_SCHEMA_NAME>aa</PROD_SCHEMA_NAME>
-- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
-- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
-- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
-- <JIRA>aa</JIRA>
-- <SHORTID>108</SHORTID>
/*********************************************************************************************************/

delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='Administrative-StaffAdministered-HCOFeatures') and RGN_ID in ('CO','DB','CS');
commit;
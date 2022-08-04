/*********************************************************************************************************/
-- <APPLICATION_NAME>Administrative-StaffAdministered-HCOFeatures</APPLICATION_NAME>
-- <RELEASE> 5.2</RELEASE>
-- <DEVELOPER>Sanjana G Rao</DEVELOPER>
-- <PROD_SCHEMA_NAME>ssss</PROD_SCHEMA_NAME>
-- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
-- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
-- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
-- <JIRA>A</JIRA>
-- <SHORTID>108</SHORTID>
/*********************************************************************************************************/

delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='Administrative-StaffAdministered-HCOFeatures' and guid in ("123");
commit;
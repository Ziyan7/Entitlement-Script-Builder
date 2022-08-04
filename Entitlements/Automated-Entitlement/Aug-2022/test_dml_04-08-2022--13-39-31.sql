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

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'CO','123','DENY','Administrative-StaffAdministered-HCOFeatures','KP_EBIZ','Administrative-StaffAdministered-HCOFeatures',SYSTIMESTAMP,SYSTIMESTAMP);

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'DB','123','DENY','Administrative-StaffAdministered-HCOFeatures','KP_EBIZ','Administrative-StaffAdministered-HCOFeatures',SYSTIMESTAMP,SYSTIMESTAMP);

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'CS','123','DENY','Administrative-StaffAdministered-HCOFeatures','KP_EBIZ','Administrative-StaffAdministered-HCOFeatures',SYSTIMESTAMP,SYSTIMESTAMP);

commit;
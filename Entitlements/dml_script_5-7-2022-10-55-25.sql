/*********************************************************************************************************/
    -- <APPLICATION_NAME>CareMgmt-CondMgmt-Immunizations</APPLICATION_NAME>
    -- <RELEASE> 5.2</RELEASE>
    -- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
    -- <PROD_SCHEMA_NAME></PROD_SCHEMA_NAME>
    -- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
    -- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
    -- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
    -- <JIRA>https://jira-aes.kp.org/browse/</JIRA>
    -- <SHORTID>208</SHORTID>
    /*********************************************************************************************************/

delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='CareMgmt-CondMgmt-Immunizations') and RGN_ID in ('KNW');

INSERT INTO WPP_CFE_PRVLG_FOR_RGN ( CFE_ID, RGN_ID, DIS_IN ) VALUES ( (select cfe_id from wpp_cfe where CFE_NM=CareMgmt-CondMgmt-Immunizations), 'KNW', 'N');

commit;
/*********************************************************************************************************/
    -- <APPLICATION_NAME>Diagnostics-ClinDx-Allergies</APPLICATION_NAME>
    -- <RELEASE> 5.2</RELEASE>
    -- <DEVELOPER>Adithya S Shenoy</DEVELOPER>
    -- <PROD_SCHEMA_NAME>HINT1,HPPIDC,HREG1</PROD_SCHEMA_NAME>
    -- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
    -- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
    -- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
    -- <JIRA>https://jira-aes.kp.org/browse/RM-43065</JIRA>
    -- <SHORTID>505</SHORTID>
    /*********************************************************************************************************/

delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='Diagnostics-ClinDx-Allergies' and guid in ("12345");
commit;
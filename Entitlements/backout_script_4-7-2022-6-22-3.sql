/*********************************************************************************************************/
      -- <APPLICATION_NAME>Application-Features-Mobile-Covid-19-Center</APPLICATION_NAME>
      -- <RELEASE> 5.2</RELEASE>
      -- <DEVELOPER>Kundan Suryansh</DEVELOPER>
      -- <PROD_SCHEMA_NAME>HINT1,HPPIDC,HREG1</PROD_SCHEMA_NAME>
      -- <TRANSACTION_TYPE>DML</TRANSACTION_TYPE>
      -- <OPERATION_TYPE>DELETE,INSERT</OPERATION_TYPE>
      -- <AFFECTED_TABLES>DELETE:WPP_CFE_PRVLG_FOR_RGN, INSERT:WPP_CFE_PRVLG_FOR_RGN</AFFECTED_TABLES>
      -- <JIRA>https://jira-aes.kp.org/browse/RM-43065</JIRA>
      -- <SHORTID>505</SHORTID>
      /*********************************************************************************************************/
delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='CareMgmt-CondMgmt-Immunizations') and RGN_ID in ('CO','DB','CS','MID');
commit;
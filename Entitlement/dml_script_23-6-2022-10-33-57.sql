delete from WPP_ENTL_PRMSN_OVRD where ENTL_NM='CareMgmt-CondMgmt-Immunizations' and guid in (12345);

INSERT INTO WPP_ENTL_PRMSN_OVRD (WPP_ENTL_PRMSN_OVRD_IK,RGN,GUID,ENTL_PRMSN,ENTL_NM,ENTL_SRC_ID,PILOT_APP_NAME,CRTE_DT_TM,MOD_DT_TM)VALUES (null,'Mid Atlantic (MID)','12345','PERMIT','CareMgmt-CondMgmt-Immunizations','EPIC','CareMgmt-CondMgmt-Immunizations',SYSTIMESTAMP,SYSTIMESTAMP);

commit;
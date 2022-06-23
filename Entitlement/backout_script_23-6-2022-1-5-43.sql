delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='CareMgmt-CondMgmt-Immunizations') and RGN_ID in ('MID','HAW');
commit;
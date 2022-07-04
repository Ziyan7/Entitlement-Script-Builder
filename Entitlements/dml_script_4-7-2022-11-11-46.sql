delete from WPP_CFE_PRVLG_FOR_RGN where CFE_ID=(select cfe_id from wpp_cfe where CFE_NM='Administrative-StaffAdministered-HCOFeatures') and RGN_ID in ('CO','DB','CS');

INSERT INTO WPP_CFE_PRVLG_FOR_RGN ( CFE_ID, RGN_ID, DIS_IN ) VALUES ( (select cfe_id from wpp_cfe where CFE_NM=Administrative-StaffAdministered-HCOFeatures), 'CO', 'Y');

INSERT INTO WPP_CFE_PRVLG_FOR_RGN ( CFE_ID, RGN_ID, DIS_IN ) VALUES ( (select cfe_id from wpp_cfe where CFE_NM=Administrative-StaffAdministered-HCOFeatures), 'DB', 'Y');

INSERT INTO WPP_CFE_PRVLG_FOR_RGN ( CFE_ID, RGN_ID, DIS_IN ) VALUES ( (select cfe_id from wpp_cfe where CFE_NM=Administrative-StaffAdministered-HCOFeatures), 'CS', 'Y');

commit;
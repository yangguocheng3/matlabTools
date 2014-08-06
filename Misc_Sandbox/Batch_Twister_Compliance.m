function [complete_data]=Batch_Twister_Compliance(matfile_name)

%
% Batch_Twister_Compliance.m
%
% Description:
%
% Inputs:
%
% Outputs:
%
% Author:
%   Curtis Neiderer, 6/16/2009
%
% Notes/Changes:
%

% General Parameter Settings
num_steps=50;
GD_smooth=140;
user='Default_User';
num_files=20;

% SN001
Master_FileList.system_name='SN001';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\11.85 LH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 001\RFE_SN_001_FULL DATA\SN 001 FINALTEST\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN001_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN001_data,Master_FileList);
clear Master_FileList

% SN002
Master_FileList.system_name='SN002';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\11.85 LH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 002\SN002 FULL DATA\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN002_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN002_data,Master_FileList);
clear Master_FileList

% SN003
Master_FileList.system_name='SN003';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\11.85 LH ONLY.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\14.125 RH ONLY.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 003\SN003 ATP Data\TX\DIR ANT\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN003_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN003_data,Master_FileList);
clear Master_FileList

% SN004
Master_FileList.system_name='SN004';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\11.85 LH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\RX DIR ANT\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\DIR ANT\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\WB ANT RX\15.25.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\WB ANT RX\14.615.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\WB ANT RX\14.665.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\RX\WB ANT RX\15.19.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\WB ANT\15.25.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\WB ANT\14.615.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\WB ANT\14.665.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 004\TX\WB ANT\15.19.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN004_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN004_data,Master_FileList);
clear Master_FileList

% SN005
Master_FileList.system_name='SN005';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\11.85 LH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 005\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN005_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN005_data,Master_FileList);
clear Master_FileList

% SN006
Master_FileList.system_name='SN006';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\11.85 LH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\14.125.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 006 FINAL DATA\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN006_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN006_data,Master_FileList);
clear Master_FileList

% SN007
Master_FileList.system_name='SN007';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\11.85.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\14.125.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 007 FINAL TEST\SN007 FINAL TEST2\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN007_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN007_data,Master_FileList);
clear Master_FileList

% SN008
Master_FileList.system_name='SN008';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\11.85.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\RX\15.19 RH.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 008 FINAL TEST\SN 008 FINAL TEST\TX\15.19 RH.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN008_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN008_data,Master_FileList);
clear Master_FileList

% SN009
Master_FileList.system_name='SN009';
%NB "RX" Files
Master_FileList.NB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\10.3 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\11.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\15.19 RH.cti'};
%NB "TX" Files
Master_FileList.NB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\15.25 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\9.85 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\14.125 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\14.615 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\14.665 RH.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\15.19 RH.cti'};
%WB "RX" Files
Master_FileList.WB_RX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\WIDEBAND ANT\15.25.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\WIDEBAND ANT\14.615.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\WIDEBAND ANT\14.665.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\RX\WIDEBAND ANT\15.19.cti'};
%WB "TX" Files
Master_FileList.WB_TX_FileList={...
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\WIDE BAND\15.25.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\WIDE BAND\14.615.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\WIDE BAND\14.665.cti';
'F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA\SN 009 FINAL TEST\TX\WIDE BAND\15.19.cti'};

Master_FileList.nstep=num_steps;
Master_FileList.GDSmoothie=GD_smooth;
Master_FileList.user_name=user;
Master_FileList.num_files=num_files;
complete_data.SN009_data=sys_comp_chk_Batch_ver(Master_FileList);
sys_comp_xls_Batch_ver(complete_data.SN009_data,Master_FileList);
clear Master_FileList



% 
disp({'';'Finished batch processing of TWISTER system compliance data.'})
save(['C:\MATLAB_Toolbox\Results\TWISTER_Related\',matfile_name,...
    datestr(now,30),'.mat'],'complete_data');

INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(31,73,'SECTRA_L30','Sectra L30','RAW')
,(32,82,'AXIOMARTIS_VC14J','Axiom Artis (VC14J)','SR')
,(33,85,'D750HD','Discovery 750 HD','RAW')
,(34,86,'D750HD_11MW44_11','Discovery 750 HD Hybride (11MW44.11)','RAW')
,(35,87,'AX_ARTIS_VC14J_2','Axiom Artis (VC14J MPPS)','MPPS')
,(36,89,'FD20','FD20 7.6.3','MPPS')
,(37,90,'SENSATION64','Sensation 64 (MPPS)','MPPS')
,(38,96,'D750HD_SR','Discovery HD 750 (SR)','SR')
,(39,97,'VCT2','LightSpeed VCT SR (12HW14.6)','SR')
,(40,98,'AXIOM_ZEE_SR','Axiom Zee (SR)','SR')
;
INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(41,99,'FD20_2','FD20','MPPS')
,(42,100,'AERO_DRX750','AeroDR X70 test','RAW')
,(43,101,'BIOG_MCT_2012A','Biograph mCT (2012A SR)','SR')
,(44,102,'FLASH_2012B','Definition Flash (2012B SR)','SR')
,(45,103,'ASPLUS_2011A','Definition AS+ (2011A SR) ','SR')
,(46,104,'ASPLUS_2011A_hyb','Definition AS+ (2011A hyb) ','RAW')
,(47,105,'FPPR_LISTENER','DCM4CHEE PACS de Steph','RAW')
,(48,106,'HISPEED_QXi','HiSpeed QXi','RAW')
,(49,107,'nmd690','Discovery 690 Hybride','RAW')
,(50,109,'sct3','LightSPeed 16','RAW')
;
INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(51,110,'LS_ULTRA_07MW11_10','LightSpeed Ultra (07MW11.10)','RAW')
,(52,111,'LS16_07MW11_10','LightSpeed 16 (07MW11.10)','RAW')
,(53,112,'VCT_RAW','LightSpeed VCT (images)','RAW')
,(54,113,'VCT_09MW08_10','LightSpeed VCT (09MW08.10)','RAW')
,(55,114,'MWL_SRV','C_MWL_SRV','MPPS')
,(56,115,'DVTK_MW_SCP','C_DVTK_MW_SCP','MPPS')
,(57,116,'AQU_PRIME_V4_93','Aquilion Prime','SR')
,(58,118,'OPTIMA660_SR','Optima 660 (SR)','SR')
,(59,119,'OEC_9900_RAW','OEC 9900 (7.0.46)','RAW')
,(60,120,'INSPIRATION_VB20B','MAMMOMAT Inspiration (VB20B)','RAW')
;

ALTER TABLE device1 ADD COLUMN first_device VARCHAR(100);
ALTER TABLE device2 ADD COLUMN second_device VARCHAR(100);
ALTER TABLE device_three ADD COLUMN third_device VARCHAR(100);
ALTER TABLE device_four ADD COLUMN fourth_device VARCHAR(100);


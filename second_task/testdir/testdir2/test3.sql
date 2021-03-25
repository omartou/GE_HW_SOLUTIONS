INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(61,121,'B40_MPPS','Brilliance 40 (MPPS)','MPPS')
,(62,122,'INGENUITY_MPPS','Ingenuity','MPPS')
,(63,123,'DISCOVERY_690','Discovery 690','SR')
,(64,124,'DISCOVERY_STE','Discovery STE','RAW')
,(65,125,'ASPLUS_2012B','Definition AS+ (2012B)','RAW')
,(66,126,'SYMBIA_T6','Symbia T6 (2007E)','MPPS')
,(67,127,'AQUILION1_V4_82','Aquilion ONE (V4.82)','SR')
,(68,128,'AQU1_V4_82_HYB','Aquilion ONE (V4.82 RAW)','RAW')
,(69,130,'EMOTION16_2009E','Emotion 16 (syngo CT 2009E) ','RAW')
,(70,131,'INNOVA_MPPS','Innova (MPPS)','MPPS')
;
INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(71,132,'SENO_ESS_MPPS','Senographe Essential (MPPS)','MPPS')
,(72,133,'B_ICT','Brilliance iCT 128','RAW')
,(73,134,'VCT_SR','LightSpeed VCT XTE (SR)','SR')
,(74,135,'INGENUITY_128','Ingenuity (SR 4.0)','SR')
,(75,136,'CONNEXITY','Connexity (4.9.11)','MPPS')
,(76,137,'TST_INNOVA','Innova SR','SR')
,(77,138,'DIGITAL_DIAG','Digital Diagnost (R 1.5.3.1)','MPPS')
,(78,139,'UROSKOP','Uroskop','MPPS')
,(79,140,'AX_ARTIS_MP','Axiom Artis MP','MPPS')
,(80,141,'MOBILETT','Mobilett XP Digital','MPPS')
;
INSERT INTO device (device_key,id,aet,name,data_type) VALUES 
(81,142,'INTE20_RAW_SCP','RDSR SerphyLink inte-20','MPPS')
,(82,143,'SENSAT40_VB30B','Sensation 40 (VB30B MPPS)','MPPS')
,(83,144,'EMO16','EMO16 SSDE','RAW')
,(84,145,'INSPIRATION_VB30B','MAMMOMAT Inspiration (VB30B)','RAW')
,(85,146,'FLC_VF72A_MPPS','Fluorospot Compact (VF72A MPPS)','MPPS')
,(86,147,'EMO16_2012E_HYB','Emotion 16 (2012E hyb)','RAW')
,(87,148,'SENO_PROD','SENO_PROD','RAW')
,(88,149,'GEMINI','GEMINI','MPPS')
,(89,150,'DX-D100','DX-D100','SR')
,(90,151,'AMULET','Amulet','RAW')
;

ALTER TABLE device_five ADD COLUMN fifth_device VARCHAR(100);
ALTER TABLE device_six ADD COLUMN sixth_device VARCHAR(100);
ALTER TABLE device7 ADD COLUMN seventh_device VARCHAR(100);
ALTER TABLE device8 ADD COLUMN eighth_device VARCHAR(100);
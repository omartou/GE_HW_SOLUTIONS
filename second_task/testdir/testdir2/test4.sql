INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13175,238,'Spiral',0.5,'Y')
,(13176,238,'Constant angle',3.676,NULL)
,(13177,239,'Constant angle',5.57,NULL)
,(13178,239,'Spiral',1,'Y')
,(13179,240,'Constant angle',3.394,NULL)
,(13180,240,'SmartPrep',0.5,'N')
,(13181,240,'Spiral',0.446,'Y')
,(13182,240,'SmartPrep',0.5,'N')
,(13183,241,'Constant angle',5.34,NULL)
,(13184,241,'Undefined',6.5,'Y')
;
INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13191,244,'Constant angle',7.9,NULL)
,(13192,244,'Undefined',10.62,'Y')
,(13193,245,'Constant angle',4.6,NULL)
,(13194,245,'Constant angle',4.6,NULL)
,(13195,245,'Spiral',4.84,'Y')
,(13196,246,'Constant angle',7.1,NULL)
,(13197,246,'Constant angle',7.1,NULL)
,(13198,246,'Spiral',9.08,'Y')
,(13201,248,'Constant angle',2.78,NULL)
,(13202,248,'Undefined',11.89,'Y')
;
INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13203,249,'Constant angle',7.9,NULL)
,(13204,249,'Undefined',11.08,'Y')
,(13205,250,'Spiral',0.5,'Y')
,(13206,250,'SmartPrep',1,'N')
,(13207,250,'Constant angle',3.676,NULL)
,(13208,251,'Constant angle',7.6,NULL)
,(13209,251,'Constant angle',7.6,NULL)
,(13210,251,'Spiral',7.91,'Y')
,(13211,253,'Constant angle',5.5,NULL)
,(13212,253,'Constant angle',5.48,NULL)
;

ALTER TABLE serie_one ADD COLUMN first_serie VARCHAR(100);
ALTER TABLE serie2 ADD COLUMN second_serie VARCHAR(100);
ALTER TABLE serie3 ADD COLUMN third_serie VARCHAR(100);
ALTER TABLE serie_four ADD COLUMN fourth_serie VARCHAR(100);
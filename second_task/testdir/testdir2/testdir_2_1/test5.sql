INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13350,302,'Constant angle',7.9,NULL)
,(13351,302,'Undefined',9.58,'Y')
,(13352,303,'Constant angle',NULL,NULL)
,(13353,304,'Constant angle',7.9,NULL)
,(13354,304,'Undefined',51.89,'Y')
,(13355,305,'Constant angle',5.6,NULL)
,(13356,305,'Constant angle',5.6,NULL)
,(13357,305,'Spiral',7.32,'Y')
,(13358,306,'Constant angle',7.1,NULL)
,(13359,306,'Constant angle',7.1,NULL)
;
INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13360,306,'Spiral',8.92,'Y')
,(13366,308,'Constant angle',7.1,NULL)
,(13367,308,'Constant angle',7.1,NULL)
,(13368,308,'Spiral',8.47,'Y')
,(13372,310,'Undefined',NULL,NULL)
,(13373,310,'Undefined',NULL,'Y')
,(13374,311,'Spiral',5.75,'Y')
,(13375,311,'Spiral',5.59,'Y')
,(13376,311,'Stationary',3.5,'N')
,(13377,311,'Constant angle',7.6,NULL)
;
INSERT INTO serie (id,study_key,series_type,series_duration,diagnostic) VALUES
(13378,311,'Constant angle',7.6,NULL)
,(13383,313,'Constant angle',5.6,NULL)
,(13384,313,'Constant angle',5.6,NULL)
,(13385,313,'Spiral',5.69,'Y')
,(13386,314,'Constant angle',3.8,NULL)
,(13387,314,'Constant angle',3.8,NULL)
,(13388,314,'Spiral',2.55,'Y')
,(13389,314,'Spiral',1.74,'Y')
,(13390,314,'Sequenced',0.8,'N')
,(13391,314,'Sequenced',0.8,'N')
;

ALTER TABLE serie5 ADD COLUMN fifth_serie VARCHAR(100);
ALTER TABLE serie6 ADD COLUMN sixth_serie VARCHAR(100);
ALTER TABLE serie_seventh ADD COLUMN seventh_serie VARCHAR(100);
ALTER TABLE seriedw33 ADD COLUMN dwcolumn VARCHAR(100);
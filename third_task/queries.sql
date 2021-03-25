# - Melyik a 4. legtöbb felvételt készítő gép?
SELECT device.name,
       Count(study.ae_key)
FROM study
         JOIN device
              ON study.ae_key = device.id
GROUP BY device.name
ORDER BY Count(study.ae_key) DESC
LIMIT 1 offset 3;

SELECT a.*,
       device.name
FROM (SELECT ae_key,
             Count(ae_key) AS number
      FROM study
      GROUP BY ae_key
      ORDER BY Count(ae_key) DESC) AS a
         JOIN device
              ON a.ae_key = device.id
ORDER BY a.number DESC
LIMIT 1 offset 3;
;

# - Melyik volt a legzsúfoltabb nap, azaz melyik nap történt a legtöbb felvétel?
SELECT Cast(study_datetime AS date)        AS date,
       Count(Cast(study_datetime AS date)) AS number_of_records
FROM study
GROUP BY date
ORDER BY number_of_records DESC
LIMIT 1;

# - Mennyi volt az átlagos képkészítési idő (series_duration) képtípusonként (series_type)
SELECT series_type,
       Avg(series_duration) AS avarage_record_time
FROM serie
GROUP BY series_type;

# - Melyik adattípusnak (data_type) a legmagasabb a diagnosztikai eredményessége (legnagyobb arányú a diagnostic=Y értéke)
SELECT device.data_type,
       serie.diagnostic,
       Count(serie.diagnostic) AS number_of_Y
FROM device
         JOIN study
              ON device.id = study.ae_key
         JOIN serie
              ON serie.study_key = study.id
GROUP BY serie.diagnostic,
         device.data_type
HAVING diagnostic = 'Y'
ORDER BY Count(serie.diagnostic) DESC
LIMIT 1;
SELECT Ektimhths.[monadikos kwdikos],PLITHOS_KATOIKIWN,PLITHOS_GRAFEIWN
FROM Ektimhths LEFT OUTER JOIN
     (SELECT Ektimhsh.[kwdikos ek],COUNT(*) AS PLITHOS_KATOIKIWN
	 FROM Ektimhsh LEFT OUTER JOIN Katoikies ON Ektimhsh.[kwdikos a]=Katoikies.AT
	 WHERE Ektimhsh.hmeromhnia<='2020-12-31'
	 GROUP BY Ektimhsh.[kwdikos ek]) AS A ON Ektimhths.[monadikos kwdikos]=A.[kwdikos ek] LEFT OUTER JOIN
	          (SELECT Ektimhsh.[kwdikos ek],COUNT(*) AS PLITHOS_GRAFEIWN
			  FROM Ektimhsh LEFT OUTER JOIN Grafeia ON Ektimhsh.[kwdikos a]=Grafeia.AFM
			  WHERE Ektimhsh.hmeromhnia<='2020-12-31'
			  GROUP BY Ektimhsh.[kwdikos ek]) AS B ON A.[kwdikos ek]=B.[kwdikos ek]
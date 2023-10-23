SELECT Ektimhsh.[kwdikos a]
FROM Ektimhsh
WHERE Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
GROUP BY Ektimhsh.[kwdikos a]
HAVING COUNT(*)>=2
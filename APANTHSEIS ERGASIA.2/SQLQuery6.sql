SELECT COUNT(*), Ektimhths.[monadikos kwdikos],MAX(Ektimhths.fylo),MAX(Ektimhths.hlikia) 
FROM Ektimhths INNER JOIN Ektimhsh ON Ektimhths.[monadikos kwdikos]=Ektimhsh.[kwdikos ek]
WHERE Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
GROUP BY Ektimhths.[monadikos kwdikos]
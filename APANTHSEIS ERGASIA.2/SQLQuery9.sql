SELECT COUNT(*)
FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
WHERE Perioxh.plithismos>50000 AND Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
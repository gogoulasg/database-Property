SELECT COUNT(*),Perioxh.kwdikos,avg(Ektimhsh.timh/Akinhta.megethos)
FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
GROUP BY Perioxh.kwdikos
order by avg(Ektimhsh.timh/akinhta.megethos) asc
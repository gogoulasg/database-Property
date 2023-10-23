SELECT COUNT(*),Perioxh.kwdikos,Ektimhths.fylo
FROM Ektimhsh INNER JOIN Ektimhths ON Ektimhsh.[kwdikos ek]=Ektimhths.[monadikos kwdikos]
INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
GROUP BY Perioxh.kwdikos,Ektimhths.fylo
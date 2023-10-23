SELECT Ektimhths.epitheto,Ektimhths.onoma,Akinhta.odos,Akinhta.arithmos,Akinhta.TK,Akinhta.orofos,Ektimhsh.timh
FROM Ektimhsh INNER JOIN Ektimhths ON Ektimhths.[monadikos kwdikos]=Ektimhsh.[kwdikos ek]
INNER JOIN Akinhta ON AKINHTA.[monadikos kwdikos]=Ektimhsh.[kwdikos a]
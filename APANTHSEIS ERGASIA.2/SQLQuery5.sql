select AKINHTA.[monadikos kwdikos],AKINHTA.odos,Akinhta.orofos,Akinhta.arithmos,Akinhta.TK
FROM  Akinhta INNER JOIN Ektimhsh ON AKINHTA.[monadikos kwdikos]=Ektimhsh.[kwdikos a] 
INNER JOIN Perioxh ON PERIOXH.kwdikos=Akinhta.[kwdikos perioxhs]
WHERE (PERIOXH.[meso eisodhma]>40000) AND (Ektimhsh.hmeromhnia between '2020-12-24' and '2020-12-31')
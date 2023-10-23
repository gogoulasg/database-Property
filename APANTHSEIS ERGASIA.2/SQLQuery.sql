 /* erwthma 1*/
SELECT *
FROM Ektimhsh
/*erwthma 2*/
SELECT Ektimhths.onoma,Ektimhths.epitheto
FROM Ektimhths
WHERE (fylo='female') AND (hlikia>30)
/*erwthma 3*/
SELECT Ektimhths.epitheto,Ektimhths.onoma,Akinhta.odos,Akinhta.arithmos,Akinhta.TK,Akinhta.orofos,Ektimhsh.timh
FROM Ektimhsh INNER JOIN Ektimhths ON Ektimhths.[monadikos kwdikos]=Ektimhsh.[kwdikos ek]
INNER JOIN Akinhta ON AKINHTA.[monadikos kwdikos]=Ektimhsh.[kwdikos a]
/*erwthma 4*/
update Ektimhsh set timh = timh +(timh*10/100) 
select Ektimhsh.timh
from Ektimhsh
/*erwthma 5*/
select AKINHTA.[monadikos kwdikos],AKINHTA.odos,Akinhta.orofos,Akinhta.arithmos,Akinhta.TK
FROM  Akinhta INNER JOIN Ektimhsh ON AKINHTA.[monadikos kwdikos]=Ektimhsh.[kwdikos a] 
INNER JOIN Perioxh ON PERIOXH.kwdikos=Akinhta.[kwdikos perioxhs]
WHERE (PERIOXH.[meso eisodhma]>40000) AND (Ektimhsh.hmeromhnia between '2020-12-24' and '2020-12-31')
/*erwthma 6*/
SELECT COUNT(*), Ektimhths.[monadikos kwdikos],MAX(Ektimhths.fylo),MAX(Ektimhths.hlikia) 
FROM Ektimhths INNER JOIN Ektimhsh ON Ektimhths.[monadikos kwdikos]=Ektimhsh.[kwdikos ek]
WHERE Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
GROUP BY Ektimhths.[monadikos kwdikos]
/*erwthma 7*/
SELECT Ektimhsh.[kwdikos a]
FROM Ektimhsh
WHERE Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
GROUP BY Ektimhsh.[kwdikos a]
HAVING COUNT(*)>=2
/*erwthma 8*/
SELECT Ektimhsh.[monadikos kwdikos]
FROM Ektimhsh
WHERE Ektimhsh.[kwdikos a] IN (SELECT Akinhta.[monadikos kwdikos]
                               FROM Akinhta
							   WHERE Akinhta.[kwdikos perioxhs] IN (SELECT Perioxh.kwdikos
							                                        FROM Perioxh
																	WHERE Perioxh.[meso eisodhma]>25000))
/*erwthma 9*/
SELECT COUNT(*)
FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
WHERE Perioxh.plithismos>50000 AND Ektimhsh.hmeromhnia BETWEEN '2020-1-1' AND '2020-12-31'
/*erwthma 10*/
SELECT COUNT(*),Perioxh.kwdikos,Ektimhths.fylo
FROM Ektimhsh INNER JOIN Ektimhths ON Ektimhsh.[kwdikos ek]=Ektimhths.[monadikos kwdikos]
INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
GROUP BY Perioxh.kwdikos,Ektimhths.fylo
/*erwthma 11 */
SELECT COUNT(*),Perioxh.kwdikos,avg(Ektimhsh.timh/Akinhta.megethos)
FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
INNER JOIN Perioxh ON Akinhta.[kwdikos perioxhs]=Perioxh.kwdikos
GROUP BY Perioxh.kwdikos
order by avg(Ektimhsh.timh/akinhta.megethos) asc
/*erwthma 12*/
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
/*erwthma 14*/
SELECT A.[kwdikos perioxhs],COUNT(*) AS PLITHOS_EKTIMHTWN
FROM
      (SELECT Akinhta.[kwdikos perioxhs],Ektimhsh.[kwdikos ek]
	  FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
	  GROUP BY Akinhta.[kwdikos perioxhs],Ektimhsh.[kwdikos ek]) AS A
GROUP BY A.[kwdikos perioxhs]

SELECT A.[kwdikos perioxhs],COUNT(*) AS PLITHOS_EKTIMHTWN
FROM
      (SELECT Akinhta.[kwdikos perioxhs],Ektimhsh.[kwdikos ek]
	  FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
	  GROUP BY Akinhta.[kwdikos perioxhs],Ektimhsh.[kwdikos ek]) AS A
GROUP BY A.[kwdikos perioxhs]
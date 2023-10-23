SELECT Ektimhsh.[monadikos kwdikos]
FROM Ektimhsh
WHERE Ektimhsh.[kwdikos a] IN (SELECT Akinhta.[monadikos kwdikos]
                               FROM Akinhta
							   WHERE Akinhta.[kwdikos perioxhs] IN (SELECT Perioxh.kwdikos
							                                        FROM Perioxh
																	WHERE Perioxh.[meso eisodhma]>25000))
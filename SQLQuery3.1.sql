CREATE OR ALTER PROCEDURE a @Kwdikas varchar(50)
AS
SELECT kwdikos,onomasia
FROM Perioxh
WHERE [anwterh perioxh]=@Kwdikas
GO

EXECUTE  a '123ct'
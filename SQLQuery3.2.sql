CREATE OR ALTER  PROCEDURE Askhsh32 @CODE varchar(50), @date1 date , @date2 date
AS
DECLARE cursorAskhsh3 CURSOR
 FOR SELECT Ektimhsh.[monadikos kwdikos],Ektimhsh.[kwdikos a],Akinhta.odos,Akinhta.arithmos,Akinhta.orofos,Akinhta.TK,Ektimhsh.timh,Ektimhsh.hmeromhnia
 FROM Ektimhsh INNER JOIN Akinhta ON Ektimhsh.[kwdikos a]=Akinhta.[monadikos kwdikos]
 WHERE Ektimhsh.[kwdikos ek]=@CODE AND (Ektimhsh.hmeromhnia BETWEEN @date1 AND @date2)
DECLARE @CODE_EKTIMISHS varchar(50),@c_akinhtou varchar(50),@odos varchar(50),@orofos varchar(10),@arithmos varchar(50),@TK varchar(10),@TIMH numeric(18,2),@hmeromhnia date
OPEN cursorAskhsh3;
FETCH NEXT FROM cursorAskhsh3 INTO @CODE_EKTIMISHS,@c_akinhtou,@odos,@orofos,@arithmos,@TK,@TIMH,@hmeromhnia
WHILE @@FETCH_STATUS = 0 
BEGIN
 PRINT 'Kwdikos ektimhshs:'+@CODE_EKTIMISHS;
 PRINT 'Kwdikos akinhtou:'+@c_akinhtou;
 PRINT 'H Odos einai:' +@odos;
 PRINT 'Orofos:' +@orofos;
 PRINT 'Arithmos:' +@arithmos;
 PRINT 'TK:' +@TK;
 PRINT 'H timh einai:' +STR(@TIMH);
 PRINT 'H hmeromhnia:' +convert(varchar,@hmeromhnia,111);
 FETCH NEXT FROM cursorAskhsh3 INTO  @CODE_EKTIMISHS,@c_akinhtou,@odos,@orofos,@arithmos,@TK,@TIMH,@hmeromhnia;
END;
CLOSE cursorAskhsh3;
DEALLOCATE cursorAskhsh3;
GO

EXECUTE Askhsh32 'ap14','2020-1-1','2020-12-31'
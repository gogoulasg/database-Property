USE [project baseis dedomnwn 21]
GO
INSERT [dbo].[Kathgories] ([monadikos kwdikos], [onomasia]) VALUES (N'ekp59', N'villa')
INSERT [dbo].[Kathgories] ([monadikos kwdikos], [onomasia]) VALUES (N'val26', N'diamerisma')
GO
INSERT [dbo].[Perioxh] ([kwdikos], [onomasia], [plithismos], [meso eisodhma], [anwterh perioxh]) VALUES (N'123ct', N'sterea', N'100000', N'200000', NULL)
INSERT [dbo].[Perioxh] ([kwdikos], [onomasia], [plithismos], [meso eisodhma], [anwterh perioxh]) VALUES (N'567ct', N'athena', N'60000000', N'35600', N'123ct')
INSERT [dbo].[Perioxh] ([kwdikos], [onomasia], [plithismos], [meso eisodhma], [anwterh perioxh]) VALUES (N'b1mar', N'marousi', N'73000', N'85000', N'b1mar')
INSERT [dbo].[Perioxh] ([kwdikos], [onomasia], [plithismos], [meso eisodhma], [anwterh perioxh]) VALUES (N'nglyf', N'glyfada', N'83000', N'67000', N'nglyf')
GO
INSERT [dbo].[Akinhta] ([monadikos kwdikos], [arithmos], [odos], [TK], [orofos], [megethos], [etos kataskeyhs], [kwdikos perioxhs]) VALUES (N'k1234', N'43', N'katexakis', N'16789', N'5', N'100', N'1972', N'567ct')
INSERT [dbo].[Akinhta] ([monadikos kwdikos], [arithmos], [odos], [TK], [orofos], [megethos], [etos kataskeyhs], [kwdikos perioxhs]) VALUES (N'lr689', N'10', N'papanastasiou', N'14321', N'3', N'75', N'1956', N'567ct')
INSERT [dbo].[Akinhta] ([monadikos kwdikos], [arithmos], [odos], [TK], [orofos], [megethos], [etos kataskeyhs], [kwdikos perioxhs]) VALUES (N'pk456', N'7', N'karaiskaki', N'12142', N'2', N'690', N'2010', N'567ct')
INSERT [dbo].[Akinhta] ([monadikos kwdikos], [arithmos], [odos], [TK], [orofos], [megethos], [etos kataskeyhs], [kwdikos perioxhs]) VALUES (N'ri534', N'9', N'filopapou', N'14329', N'2', N'143', N'1994', N'123ct')
GO
INSERT [dbo].[Katoikies] ([kwdikos a], [AT], [kwdikos kathgorias]) VALUES (N'ri534', N'AI435609', N'ekp59')
INSERT [dbo].[Katoikies] ([kwdikos a], [AT], [kwdikos kathgorias]) VALUES (N'pk456', N'AO768924', N'val26')
GO
INSERT [dbo].[Grafeia] ([kwdikos a], [AFM]) VALUES (N'k1234', N'11111111')
INSERT [dbo].[Grafeia] ([kwdikos a], [AFM]) VALUES (N'lr689', N'22222222')
GO
INSERT [dbo].[Ektimhths] ([monadikos kwdikos], [onoma], [TK], [odos], [arithmos], [fylo], [hlikia], [epitheto]) VALUES (N'a14', N'anastasis', N'17555', N'poutetsi', N'9', N'male      ', N'52        ', N'papadopoulos')
INSERT [dbo].[Ektimhths] ([monadikos kwdikos], [onoma], [TK], [odos], [arithmos], [fylo], [hlikia], [epitheto]) VALUES (N'ap14', N'anastasis', N'17555', N'poutetsi', N'9', N'male      ', N'52        ', N'papastartos')
INSERT [dbo].[Ektimhths] ([monadikos kwdikos], [onoma], [TK], [odos], [arithmos], [fylo], [hlikia], [epitheto]) VALUES (N'b2', N'giorgos', N'14322', N'elpidos', N'7', N'male      ', N'45        ', N'karelias')
INSERT [dbo].[Ektimhths] ([monadikos kwdikos], [onoma], [TK], [odos], [arithmos], [fylo], [hlikia], [epitheto]) VALUES (N'c123', N'maria', N'14328', N'papagou', N'2', N'female', N'32        ', N'kamhlou')
GO
INSERT [dbo].[Ektimhsh] ([monadikos kwdikos], [timh], [kwdikos ek], [kwdikos a], [hmeromhnia]) VALUES (N'a2317', CAST(145000.00 AS Numeric(18, 2)), N'ap14', N'ri534', CAST(N'2020-12-27' AS Date))
INSERT [dbo].[Ektimhsh] ([monadikos kwdikos], [timh], [kwdikos ek], [kwdikos a], [hmeromhnia]) VALUES (N'b8710', CAST(1000000.00 AS Numeric(18, 2)), N'b2', N'pk456', CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Ektimhsh] ([monadikos kwdikos], [timh], [kwdikos ek], [kwdikos a], [hmeromhnia]) VALUES (N'c786', CAST(130000.00 AS Numeric(18, 2)), N'c123', N'pk456', CAST(N'2020-12-28' AS Date))
GO
INSERT [dbo].[Syndesh] ([wra], [diarkeia syndeshs], [kwdikos ek], [hmeromhnia]) VALUES (N'8:00', N'01:23:12', N'ap14', CAST(N'2020-12-27' AS Date))
INSERT [dbo].[Syndesh] ([wra], [diarkeia syndeshs], [kwdikos ek], [hmeromhnia]) VALUES (N'15:00', N'02:10:30', N'b2', CAST(N'2020-11-10' AS Date))
INSERT [dbo].[Syndesh] ([wra], [diarkeia syndeshs], [kwdikos ek], [hmeromhnia]) VALUES (N'11:00', N'00:15:38', N'c123', CAST(N'2020-12-28' AS Date))
GO

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b9604631-c14c-49c5-ad5c-069159094e0e', N'admin', N'admin', N'649c6d38-eff6-4839-965f-996881c6b8df')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0d0efca0-d2e1-4bbb-bf59-4ae82d01c2cc', N'Admins@forum.com', N'ADMINS@FORUM.COM', N'Admins@forum.com', N'ADMINS@FORUM.COM', 1, N'AQAAAAEAACcQAAAAEG1fVN+mw1uHyCYiX+HyALrs4Ca5aWIqL3FT248W7tyGJb4zqy2eJYwBMIEQgiairw==', N'VKUWDPQWRXLTTD6NZOWU3LLMUJDPWTWH', N'32829c88-216b-4cc0-92df-2d45d6564205', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'1c26c8b8-219f-4448-ac5d-0f4758ec9a28', N'eva@fourm.com', N'EVA@FOURM.COM', N'eva@fourm.com', N'EVA@FOURM.COM', 1, N'AQAAAAEAACcQAAAAECYWhvG/NAIP9GnqgykXK8s6SZtqfykuv9ztwAKs6kQxJ5E2ENoCmTavQlc0fJPxYQ==', N'DXV3KJECJIU4JZPD7OQF6RTST7JCWCIF', N'72bbce47-455d-444f-8c52-4cfd19b3e9b5', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'97cd0401-3ca2-4acb-9e28-73d956a84136', N'Admin@forum.com', N'ADMIN@FORUM.COM', N'Admin@forum.com', N'ADMIN@FORUM.COM', 1, N'AQAAAAEAACcQAAAAEIs+tIE5YUTslL1F78BYPes+PqZJGO3C9zVnAZQRdwIq0+tr4G/jZZRoAJtGeDvm3Q==', N'6MRLMHFDZYTHB45NH4EYOAXE56MKX25A', N'deef413c-d689-4634-9c64-d2939fe3a58c', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ee0ed126-9ed8-4e68-b812-bdb1c115e4ae', N'liam@fourm.com', N'LIAM@FOURM.COM', N'liam@fourm.com', N'LIAM@FOURM.COM', 1, N'AQAAAAEAACcQAAAAEEtrwGgHMbXCJ5W5Jkb2SCT954cEvYjGPNYNL4S2HyYSDo/HkvLdGDGLbK/2+YOmTA==', N'2P3MV5IR2AX4N3B6EWTRT3TWZVQSZ3R4', N'34608a3f-1071-4262-8363-2faef14eaf84', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d0efca0-d2e1-4bbb-bf59-4ae82d01c2cc', N'b9604631-c14c-49c5-ad5c-069159094e0e')
GO
SET IDENTITY_INSERT [dbo].[Subjects] ON 
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (1, N'Core Java')
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (2, N'Spring Boot')
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (3, N'HTML & CSS')
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (4, N'Data Structure')
GO
INSERT [dbo].[Subjects] ([SubjectID], [SubjectName]) VALUES (5, N'Dot Net')
GO
SET IDENTITY_INSERT [dbo].[Subjects] OFF
GO
SET IDENTITY_INSERT [dbo].[Questions] ON 
GO
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle], [QuestionText], [UserName], [PostDate], [SubjectID]) VALUES (1, N'Examples of GoF Design Patterns in Java''s core libraries', N'I am learning GoF Java Design Patterns and I want to see some real life examples of them. What are some good examples of these Design Patterns in Java''s core libraries?', N'Admins@forum.com', CAST(N'2021-07-12T21:58:37.0000000' AS DateTime2), 1)
GO
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle], [QuestionText], [UserName], [PostDate], [SubjectID]) VALUES (2, N'What are bitwise shift (bit-shift) operators and how do they work?', N'I''ve been attempting to learn C in my spare time, and other languages (C#, Java, etc.) have the same concept (and often the same operators) ...

What I''m wondering is, at a core level, what does bit-shifting (<<, >>, >>>) do, what problems can it help solve, and what gotchas lurk around the bend? In other words, an absolute beginner''s guide to bit shifting in all its goodness.', N'Admins@forum.com', CAST(N'2021-07-12T22:00:15.6996220' AS DateTime2), 1)
GO
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle], [QuestionText], [UserName], [PostDate], [SubjectID]) VALUES (3, N'What is the difference between java and core java?', N'When looking at job openings on-line, I noticed that some openings required knowledge of "core Java". What is core java and how is different from java?', N'eva@fourm.com', CAST(N'2021-07-12T23:19:10.6232695' AS DateTime2), 1)
GO
INSERT [dbo].[Questions] ([QuestionID], [QuestionTitle], [QuestionText], [UserName], [PostDate], [SubjectID]) VALUES (4, N'Finding Number of Cores in Java', N'How can I find the number of cores available to my application from within Java code?', N'liam@fourm.com', CAST(N'2021-07-12T23:19:36.1640790' AS DateTime2), 1)
GO
SET IDENTITY_INSERT [dbo].[Questions] OFF
GO
SET IDENTITY_INSERT [dbo].[Answers] ON 
GO
INSERT [dbo].[Answers] ([AnswerID], [AnswerText], [UserName], [AnswerDate], [QuestionID]) VALUES (1, N'You can find an overview of a lot of design patterns in Wikipedia. It also mentions which patterns are mentioned by GoF. I''ll sum them up here and try to assign as many pattern implementations as possible, found in both the Java SE and Java EE APIs.', N'liam@fourm.com', CAST(N'2021-07-12T23:11:14.7773708' AS DateTime2), 1)
GO
INSERT [dbo].[Answers] ([AnswerID], [AnswerText], [UserName], [AnswerDate], [QuestionID]) VALUES (2, N'Flyweight is used with some values of Byte, Short, Integer, Long and String.
Facade is used in many place but the most obvious is Scripting interfaces.
Singleton - java.lang.Runtime comes to mind.
Abstract Factory - Also Scripting and JDBC API.
Command - TextComponent''s Undo/Redo.
Interpreter - RegEx (java.util.regex.) and SQL (java.sql.) API.
Prototype - Not 100% sure if this count, but I thinkg clone() method can be used for this purpose.', N'eva@fourm.com', CAST(N'2021-07-12T23:12:40.5398925' AS DateTime2), 1)
GO
INSERT [dbo].[Answers] ([AnswerID], [AnswerText], [UserName], [AnswerDate], [QuestionID]) VALUES (3, N'"Core Java" is Sun''s term, used to refer to Java SE, the standard edition and a set of related technologies, like the Java VM, CORBA, et cetera. This is mostly to differentiate from, say, Java ME or Java EE.

Also note that they''re talking about a set of libraries rather than the programming language. That is, the underlying way you write Java doesn''t change, regardless of the libraries you''re using.', N'liam@fourm.com', CAST(N'2021-07-12T23:19:55.2045338' AS DateTime2), 3)
GO
INSERT [dbo].[Answers] ([AnswerID], [AnswerText], [UserName], [AnswerDate], [QuestionID]) VALUES (4, N'int cores = Runtime.getRuntime().availableProcessors();
If cores is less than one, either your processor is about to die, or your JVM has a serious bug in it, or the universe is about to blow up.', N'eva@fourm.com', CAST(N'2021-07-12T23:20:20.6566152' AS DateTime2), 4)
GO
SET IDENTITY_INSERT [dbo].[Answers] OFF
GO
SET IDENTITY_INSERT [dbo].[Suggestions] ON 
GO
INSERT [dbo].[Suggestions] ([SuggestionID], [Name], [EmailID], [SuggestionDate], [SuggestionText]) VALUES (1, N'Adi Sarren', N'adi@sareen.com', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), N'Make some questionarie in web application for improving interaction with users.')
GO
SET IDENTITY_INSERT [dbo].[Suggestions] OFF
GO

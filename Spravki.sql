USE [master]
GO
/****** Object:  Database [Spravki]    Script Date: 02.05.2023 20:55:08 ******/
CREATE DATABASE [Spravki]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Spravki', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Spravki.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Spravki_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Spravki_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Spravki] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Spravki].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Spravki] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Spravki] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Spravki] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Spravki] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Spravki] SET ARITHABORT OFF 
GO
ALTER DATABASE [Spravki] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Spravki] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Spravki] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Spravki] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Spravki] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Spravki] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Spravki] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Spravki] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Spravki] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Spravki] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Spravki] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Spravki] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Spravki] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Spravki] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Spravki] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Spravki] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Spravki] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Spravki] SET RECOVERY FULL 
GO
ALTER DATABASE [Spravki] SET  MULTI_USER 
GO
ALTER DATABASE [Spravki] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Spravki] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Spravki] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Spravki] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [Spravki]
GO
/****** Object:  Table [dbo].[Adres]    Script Date: 02.05.2023 20:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres](
	[ID] [int] NOT NULL,
	[NameSela] [nvarchar](50) NULL,
	[NameYlichi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Adres] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dannie]    Script Date: 02.05.2023 20:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dannie](
	[ID] [int] NOT NULL,
	[NomerDocumenta] [nvarchar](50) NULL,
	[Data] [nvarchar](50) NULL,
	[FIO] [nvarchar](50) NULL,
	[Adres] [nvarchar](50) NULL,
	[Telephone] [nvarchar](50) NULL,
	[Pochta] [nvarchar](50) NULL,
	[SeriyaPasporta] [nvarchar](50) NULL,
	[NomerPasporta] [nvarchar](50) NULL,
	[KemVidan] [nvarchar](50) NULL,
	[DataVidachi] [nvarchar](50) NULL,
	[Uslugi] [nvarchar](50) NULL,
 CONSTRAINT [PK_Dannie] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (1, N'п. Ужовка
', N'улица Восточная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (2, N'п. Ужовка
', N'улица Гагарина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (3, N'п. Ужовка
', N'улица Газгородок
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (4, N'п. Ужовка
', N'улица Дачная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (5, N'п. Ужовка
', N'улица Калинина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (6, N'п. Ужовка
', N'улица Лесная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (7, N'п. Ужовка
', N'улица Пушкинская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (8, N'п. Ужовка
', N'улица Садовая 
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (9, N'п. Ужовка
', N'улица Советская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (10, N'п. Ужовка
', N'улица Южная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (11, N'с. Наруксово
', N'улица Агафонова
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (12, N'с. Наруксово
', N'Базарный переулок
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (13, N'с. Наруксово
', N'улица Горького
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (14, N'с. Наруксово
', N'улица Зеленая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (15, N'с. Наруксово
', N'улица Калинина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (16, N'с. Наруксово
', N'улица Кирова
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (17, N'с. Наруксово
', N'улица Кооперативная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (18, N'с. Наруксово
', N'улица Максима Горького
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (19, N'с. Наруксово
', N'улица Новая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (20, N'с. Наруксово
', N'улица Октября
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (21, N'с. Наруксово
', N'улица Первомайская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (22, N'с. Наруксово
', N'улица Полевая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (23, N'с. Наруксово
', N'улица Совхозная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (24, N'с. Наруксово
', N'Школьный переулок
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (25, N'с. Починки
', N'Площадь Ленина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (26, N'с. Починки
', N'улица 10-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (27, N'с. Починки
', N'улица 11-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (28, N'с. Починки
', N'улица 12-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (29, N'с. Починки
', N'улица 13-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (30, N'с. Починки
', N'улица 1-е Мая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (31, N'с. Починки
', N'улица 1-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (32, N'с. Починки
', N'улица 2-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (33, N'с. Починки
', N'улица 3-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (34, N'с. Починки
', N'улица 4-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (35, N'с. Починки
', N'улица 5-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (36, N'с. Починки
', N'улица 65 лет Победы
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (37, N'с. Починки
', N' улица 6-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (38, N'с. Починки
', N'улица 7-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (39, N'с. Починки
', N'улица 8-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (40, N'с. Починки
', N'улица 9-я линия
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (41, N'с. Починки
', N'улица Березовая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (42, N'с. Починки
', N'улица Большая Краснофлотская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (43, N'с. Починки
', N'улица Весенняя
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (44, N'с. Починки
', N'улица Вишневая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (45, N'с. Починки
', N'улица Восточная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (46, N'с. Починки
', N'улица Горка
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (47, N'с. Починки
', N'улица Гражданская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (48, N'с. Починки
', N'улица Дальняя
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (49, N'с. Починки
', N'улица Елисеева
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (50, N'с. Починки
', N'улица Западная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (51, N'с. Починки
', N'улица Заречная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (52, N'с. Починки
', N'улица Зеленая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (53, N'с. Починки
', N'улица Калинина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (54, N'с. Починки
', N'улица Карла Маркса
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (55, N'с. Починки
', N'улица Колхозная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (56, N'с. Починки
', N'улица Коммунистическая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (57, N'с. Починки
', N'улица Коммуны
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (58, N'с. Починки
', N'улица Комсомольская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (59, N'с. Починки
', N'улица Конный завод
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (60, N'с. Починки
', N'улица Красная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (61, N'с. Починки
', N'улица Красноармейская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (62, N'с. Починки
', N'улица Ленина
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (63, N'с. Починки
', N'улица Луговая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (64, N'с. Починки
', N'улица Луначарского
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (65, N'с. Починки
', N'улица Малая Краснофлотская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (66, N'с. Починки
', N'улица Михаила Сенцова
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (67, N'с. Починки
', N'улица Нагорная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (68, N'с. Починки
', N'улица Напольная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (69, N'с. Починки
', N'улица Новая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (70, N'с. Починки
', N' улица Новая Колхозная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (71, N'с. Починки
', N'улица Осенняя
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (72, N'с. Починки
', N'улица Планты 1-я улица
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (73, N'с. Починки
', N' улица Планты 2-я улица
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (74, N'с. Починки
', N'улица Полевая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (75, N'с. Починки
', N'улица Привольная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (76, N'с. Починки
', N'улица Садовая
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (77, N'с. Починки
', N'улица Семашко
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (78, N'с. Починки
', N'улица Сидорова
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (79, N'с. Починки
', N'улица Советская
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (80, N'с. Починки
', N' улица Строителей
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (81, N'с. Починки
', N'улица Чкалова
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (82, N'с. Починки
', N'улица Юбилейная
')
INSERT [dbo].[Adres] ([ID], [NameSela], [NameYlichi]) VALUES (83, N'с. Починки
', N' улица Ясная
')
GO
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (1, N'1', N'10 марта 2023 года', N'Иванов Иван Иванович', N'ул. Колхозная, 23', N'89123789456', N'ivanov@mail.ru', N'2217', N'123456', N'Отделом УФМС России по Нижегородской области', N'17.03.2017', N'Для неполной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (2, N'2', N'23 марта 2023 года', N'Романов Илья Николаевич', N'ул. Колхозная, 23', N'89456123565', N'romanova@yandex.ru', N'2214', N'789465', N'Отделом УФМС России по Нижегородской области', N'25.06.2014', N'Для неполной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (3, N'3', N'27.03.2023', N'Иванова Татьяна Сергеевна', N'Нижегородская область, с.Починки, ул. Ленина, 5', N'89456123987', N'Ivanova@mail.ru', N'2218', N'123456', N'Отделом УФМС России по Нижегородской области', N'27.03.2023', N'для неполной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (4, N'4', N'13 марта 2023 года', N'Петрова Анна Владимирова', N'ул. Ленина, 54', N'89142569783', N'petrova@yandex.ru', N'2218', N'789465', N'Отделом УФМС России по Нижегородской области', N'18.04.2018', N'Для многодетной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (5, N'5', N'14 марта 2023 года', N'Сидорова Анастасия Григорьевна', N'ул. Коммунистическая, 57', N'89456123741', N'sidorova@yandex.ru', N'2219', N'456123', N'Отделом УФМС России по Нижегородской области', N'19.05.2019', N'Для малоимущей  семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (6, N'6', N'15 марта 2023 года', N'Сергеев Сергей Сергеевич', N'ул. Западная, дом 67', N'89456123741', N'sergeev@mail.ru', N'2220', N'563626', N'Отделом УФМС России по Нижегородской области', N'20.06.2020', N'Для неполной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (7, N'7', N'16 марта 2023 года', N'Александрова Людмила Александрова', N'ул. Большая Краснофлотская, 76', N'89412563891', N'alecsandrova@yandex.ru', N'2221', N'456789', N'Отделом УФМС России по Нижегородской области', N'21.07.2021', N'Для многодетной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (8, N'8', N'17 марта 2023 года', N'Григорьева Галина Николаевна', N'ул. Малая Краснофлотская, 78', N'89123455878', N'grigoriev@mail.ru', N'2222', N'789456', N'Отделом УФМС России по Нижегородской области', N'22.08.2022', N'Для малоимущей  семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (9, N'9', N'20 марта 2023 года', N'Смирнов Михаил Сергеевич', N'ул. Западная, 67', N'89456123741', N'smirnov@mail.ru', N'2223', N'784123', N'Отделом УФМС России по Нижегородской области', N'22.02.2023', N'Для неполной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (10, N'10', N'21 марта 2023 года', N'Сеченова Ольга Ивановна', N'ул. Ленина, 56', N'89456125665', N'sechenova@mail.ru', N'2212', N'135569', N'Отделом УФМС России по Нижегородской области', N'22.02.2012', N'Для многодетной семьи')
INSERT [dbo].[Dannie] ([ID], [NomerDocumenta], [Data], [FIO], [Adres], [Telephone], [Pochta], [SeriyaPasporta], [NomerPasporta], [KemVidan], [DataVidachi], [Uslugi]) VALUES (11, N'11', N'22 марта 2023 года', N'Павлова Светлана Виктровна', N'ул. Западная, дом 67', N'89456123741', N'pavlova@mail.ru', N'2213', N'456112', N'Отделом УФМС России по Нижегородской области', N'22.05.2013', N'Для малоимущей  семьи')
GO
USE [master]
GO
ALTER DATABASE [Spravki] SET  READ_WRITE 
GO

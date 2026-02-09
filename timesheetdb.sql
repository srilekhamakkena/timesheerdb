USE [TimesheetDB]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employee_id] [int] NOT NULL,
	[employee_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee_project]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee_project](
	[employeeproject_id] [int] NOT NULL,
	[employee_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[employeeproject_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_work_type]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_work_type](
	[projectworktype_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[work_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[projectworktype_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[project_id] [int] NOT NULL,
	[project_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Timesheet]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Timesheet](
	[timesheet_id] [int] IDENTITY(1,1) NOT NULL,
	[employee_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[projectworktype_id] [int] NOT NULL,
	[worked_date] [date] NOT NULL,
	[hours_worked] [decimal](4, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[timesheet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Worktype]    Script Date: 1/4/2026 4:47:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Worktype](
	[work_id] [int] NOT NULL,
	[work_name] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[work_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[employee_project]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employee] ([employee_id])
GO
ALTER TABLE [dbo].[employee_project]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[project_work_type]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
ALTER TABLE [dbo].[project_work_type]  WITH CHECK ADD FOREIGN KEY([work_id])
REFERENCES [dbo].[Worktype] ([work_id])
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD FOREIGN KEY([employee_id])
REFERENCES [dbo].[Employee] ([employee_id])
GO
ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD FOREIGN KEY([project_id])
REFERENCES [dbo].[Projects] ([project_id])
GO
-- ALTER TABLE [dbo].[Timesheet]  WITH CHECK ADD FOREIGN KEY([projectworktype_id])
-- REFERENCES [dbo].[project_work_type] ([projectworktype_id])
-- GO

this is sql code

this for tesing branch

select t1, t2 from teja join sl on t.id = s.id;

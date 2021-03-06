USE [wsm]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 2019/12/9 13:10:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[SystemCode] [nvarchar](max) NULL,
	[ContactName] [nvarchar](max) NULL,
	[Cellphone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CallLogs]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallLogs](
	[SerialNo] [int] IDENTITY(1,1) NOT NULL,
	[RequestId] [nvarchar](max) NULL,
	[ServiceName] [nvarchar](max) NULL,
	[RequestIPAddress] [nvarchar](max) NULL,
	[SoapAction] [nvarchar](max) NULL,
	[StartDt] [datetime] NULL,
	[EndDt] [datetime] NULL,
	[MessageInfo] [nvarchar](max) NULL,
	[MessageResponse] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[RemoteServer] [nvarchar](max) NULL,
	[StreamBaseServer] [nvarchar](max) NULL,
	[SubScription_Id] [int] NULL,
	[MessageType] [varchar](max) NULL,
	[WSInterval] [int] NULL,
	[WorkFlowName] [varchar](max) NULL,
 CONSTRAINT [PK_CallLogs] PRIMARY KEY CLUSTERED 
(
	[SerialNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CallLogs_Bak]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CallLogs_Bak](
	[SerialNo] [int] NULL,
	[RequestId] [nvarchar](max) NULL,
	[ServiceName] [nvarchar](max) NULL,
	[RequestIPAddress] [nvarchar](max) NULL,
	[SoapAction] [nvarchar](max) NULL,
	[StartDt] [datetime] NULL,
	[EndDt] [datetime] NULL,
	[MessageInfo] [nvarchar](max) NULL,
	[MessageResponse] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[RemoteServer] [nvarchar](max) NULL,
	[StreamBaseServer] [nvarchar](max) NULL,
	[SubScription_Id] [int] NULL,
	[MessageType] [varchar](max) NULL,
	[WSInterval] [int] NULL,
	[WorkFlowName] [nvarchar](100) NULL,
	[backupdatetime] [smalldatetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCode] [nvarchar](max) NULL,
	[ServiceName] [nvarchar](max) NULL,
	[MessageType] [nvarchar](max) NULL,
	[Remark] [nvarchar](max) NULL,
	[ServiceAddress] [nvarchar](max) NULL,
	[ServiceNamespace] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubScriptions]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubScriptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account_Id] [int] NOT NULL,
	[Service_Id] [int] NOT NULL,
 CONSTRAINT [PK_SubScriptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_authority]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_authority](
	[authority_id] [int] NOT NULL,
	[authority_pid] [int] NOT NULL,
	[authority_name] [varchar](50) NULL,
	[authority_describe] [varchar](max) NULL,
 CONSTRAINT [PK_sys_authority] PRIMARY KEY CLUSTERED 
(
	[authority_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_authority]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_authority](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[role_id] [int] NOT NULL,
	[authority_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_user]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[sys_role_id] [int] NOT NULL,
	[sys_user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NULL,
	[password] [varchar](100) NOT NULL,
	[cellphone] [varchar](13) NULL,
	[email] [varchar](50) NULL,
 CONSTRAINT [PK__sys_user__3213E83F2BD0CC37] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkFlows]    Script Date: 2019/12/9 13:10:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkFlows](
	[name] [varchar](50) NULL,
	[serviceName] [varchar](50) NULL,
	[requestIp] [varchar](100) NULL,
	[targetIp] [varchar](100) NULL,
	[platformIp] [varchar](100) NULL,
	[authority] [int] NULL,
	[state] [int] NULL,
	[streambaseServer] [varchar](50) NOT NULL,
	[workFlowName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WorkFlows] PRIMARY KEY CLUSTERED 
(
	[streambaseServer] ASC,
	[workFlowName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([Id], [SystemName], [Password], [SystemCode], [ContactName], [Cellphone], [Email], [Remark]) VALUES (1, N'Caresteam RIS', N'******', N'0001', N'Mork Xu', N'', N'', NULL)
INSERT [dbo].[Accounts] ([Id], [SystemName], [Password], [SystemCode], [ContactName], [Cellphone], [Email], [Remark]) VALUES (2, N'HuChuang UIS', N'******', N'0002', N'杜亮', N'', N'', NULL)
INSERT [dbo].[Accounts] ([Id], [SystemName], [Password], [SystemCode], [ContactName], [Cellphone], [Email], [Remark]) VALUES (4, N'HuChuang EIS', N'******', N'0003', N'雷工', N'', N'', NULL)
INSERT [dbo].[Accounts] ([Id], [SystemName], [Password], [SystemCode], [ContactName], [Cellphone], [Email], [Remark]) VALUES (5, N'ZeXing HIS', N'******', N'0004', N'计工', N'', N'', NULL)
INSERT [dbo].[Accounts] ([Id], [SystemName], [Password], [SystemCode], [ContactName], [Cellphone], [Email], [Remark]) VALUES (6, N'Ruimei LIS', N'******', N'0005', N'', N'', N'', NULL)
SET IDENTITY_INSERT [dbo].[Accounts] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (1, N'0001', N'CancelETOrderRegister', N'1', N'撤销申请单登记执行信息 ', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=CancelETOrderRegister', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (2, N'0002', N'QueryBaseData', N'1', N'基础数据查询 ', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryBaseData', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (3, N'0003', N'QueryBookingETOrder ', N'1', N'申请单预约查询', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryBookingETOrder ', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (4, N'0004', N'QueryCriticalReplay', N'1', N'危急值回复查询', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryCriticalReplay', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (5, N'0005', N'QueryDynamicFormList', N'1', N'动态表单查询', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryDynamicFormList', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (6, N'0006', N'QueryETOFeeInfo', N'1', N'申请单费用查询', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryETOFeeInfo', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (7, N'0007', N'QueryETOrderAllInfo', N'1', N'查询申请单及明细', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryETOrderAllInfo', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (8, N'0008', N'QueryPatientInfo', N'1', N'查询病人信息', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryPatientInfo', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (9, N'0009', N'QueryPatientInfoByTime', N'1', N'病人查询', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryPatientInfoByTime', N'http://172.26.82.208:8800')
INSERT [dbo].[Services] ([Id], [ServiceCode], [ServiceName], [MessageType], [Remark], [ServiceAddress], [ServiceNamespace]) VALUES (10, N'0010', N'QueryTechOrder', N'1', N'加载已收费待确认的申请单列表', N'http://172.26.82.208:8800/MedicalServiceESB.asmx?op=QueryTechOrder', N'http://172.26.82.208:8800')
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[SubScriptions] ON 

INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (1, 1, 1)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (9, 1, 7)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (10, 5, 6)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (11, 2, 7)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (12, 6, 6)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (13, 5, 10)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (14, 6, 9)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (15, 2, 9)
INSERT [dbo].[SubScriptions] ([Id], [Account_Id], [Service_Id]) VALUES (16, 6, 9)
SET IDENTITY_INSERT [dbo].[SubScriptions] OFF
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (1, 0, N'账户维护', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (3, 0, N'服务维护', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (5, 0, N'订阅维护', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (7, 0, N'调用日志', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (9, 0, N'用户配置', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (11, 0, N'角色配置', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (13, 0, N'workflow配置', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (15, 3, N'账户维护_新增', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (17, 3, N'账户维护_编辑', NULL)
INSERT [dbo].[sys_authority] ([authority_id], [authority_pid], [authority_name], [authority_describe]) VALUES (19, 0, N'', NULL)
SET IDENTITY_INSERT [dbo].[sys_role] ON 

INSERT [dbo].[sys_role] ([id], [name]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[sys_role] ([id], [name]) VALUES (17, N'ROLE_RENJI')
INSERT [dbo].[sys_role] ([id], [name]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[sys_role] OFF
SET IDENTITY_INSERT [dbo].[sys_role_authority] ON 

INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (1, 1, 1)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (2, 1, 3)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (3, 1, 5)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (4, 1, 7)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (5, 1, 9)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (6, 1, 11)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (7, 1, 13)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (49, 17, 7)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (50, 17, 9)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (51, 17, 11)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (52, 17, 13)
INSERT [dbo].[sys_role_authority] ([id], [role_id], [authority_id]) VALUES (53, 2, 7)
SET IDENTITY_INSERT [dbo].[sys_role_authority] OFF
SET IDENTITY_INSERT [dbo].[sys_role_user] ON 

INSERT [dbo].[sys_role_user] ([id], [sys_role_id], [sys_user_id]) VALUES (1, 1, 1)
INSERT [dbo].[sys_role_user] ([id], [sys_role_id], [sys_user_id]) VALUES (3, 2, 1)
INSERT [dbo].[sys_role_user] ([id], [sys_role_id], [sys_user_id]) VALUES (16, 17, 3)
INSERT [dbo].[sys_role_user] ([id], [sys_role_id], [sys_user_id]) VALUES (18, 2, 5)
SET IDENTITY_INSERT [dbo].[sys_role_user] OFF
SET IDENTITY_INSERT [dbo].[sys_user] ON 

INSERT [dbo].[sys_user] ([id], [username], [password], [cellphone], [email]) VALUES (1, N'admin', N'$2a$10$C7AaeubQDO0hKo5uXGPo2eDpEdcxir70suKnKx5l/wGzSh3eEMQey', N'17625922615', N'1712@qq.com')
INSERT [dbo].[sys_user] ([id], [username], [password], [cellphone], [email]) VALUES (3, N'renji', N'$2a$10$csNmAl93.KVdB8J7n56r2OMOyVJRrhUEoKIh3jctFgqJDgqV7fiPa', N'1231231', N'')
INSERT [dbo].[sys_user] ([id], [username], [password], [cellphone], [email]) VALUES (5, N'xiaowang', N'$2a$10$dRH42gHnlc/S3vI4CF0XC.v0PLFTzhtZ9kH3RYAqHxLq5NdBDxEgC', N'', N'')
SET IDENTITY_INSERT [dbo].[sys_user] OFF
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->RIS', N'SB8181HISRIS', N'172.26.82.208', N'172.26.11.89', N'172.26.10.55:8181', 1, 0, N'172.26.11.18', N'8181_HISForRIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'RIS->HIS', N'SB8282RISHIS', N'172.26.11.89', N'172.26.82.208:2210', N'172.26.10.55:8282', 1, 0, N'172.26.11.18', N'8282_RISForHIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->UIS', N'SB8383HISUIS', N'172.26.82.208', N'172.26.11.89', N'172.26.10.55:8383', 1, 0, N'172.26.11.18', N'8383_HISForUIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->LIS', N'SB8585HISLIS', N'172.26.11.89', N'172.26.11.89', N'172.26.10.55:8585', 1, 0, N'172.26.11.18', N'8484_HISForLIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->LIS', N'SB8686LISHIS', N'172.26.11.89', N'172.26.82.208:2210', N'172.26.10.55:86856', 1, 0, N'172.26.11.18', N'8484_LISForHIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'UIS->HIS', N'SB8484UISHIS', N'172.26.82.208', N'172.26.82.208:2210', N'172.26.10.55:8484', 1, 0, N'172.26.11.18', N'8484_UISForHIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->RIS', N'SB8181HISRIS', N'172.26.82.208', N'172.26.11.89', N'172.26.10.56:8181', 1, 0, N'172.26.11.19', N'8181_HISForRIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'RIS->RIS', N'SB8282RISHIS', N'172.26.11.89', N'172.26.82.208:2210', N'172.26.10.56:8282', 1, 0, N'172.26.11.19', N'8282_RISForHIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->UIS', N'SB8383HISUIS', N'172.26.82.208', N'172.26.11.89', N'172.26.10.56:8383', 1, 0, N'172.26.11.19', N'8383_HISForUIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->LIS', N'SB8585HISLIS', N'172.26.11.89', N'172.26.11.89', N'172.26.10.56:8585', 1, 0, N'172.26.11.19', N'8484_HISForLIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'HIS->LIS', N'SB8686LISHIS', N'172.26.11.89', N'172.26.82.208:2210', N'172.26.10.56:86856', 1, 0, N'172.26.11.19', N'8484_LISForHIS')
INSERT [dbo].[WorkFlows] ([name], [serviceName], [requestIp], [targetIp], [platformIp], [authority], [state], [streambaseServer], [workFlowName]) VALUES (N'UIS->HIS', N'SB8484UISHIS', N'172.26.82.208', N'172.26.82.208:2210', N'172.26.10.56:8484', 1, 0, N'172.26.11.19', N'8484_UISForHIS')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sys_role__72E12F1B98794B10]    Script Date: 2019/12/9 13:10:57 ******/
ALTER TABLE [dbo].[sys_role] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__sys_user__F3DBC572CE78ADF2]    Script Date: 2019/12/9 13:10:57 ******/
ALTER TABLE [dbo].[sys_user] ADD  CONSTRAINT [UQ__sys_user__F3DBC572CE78ADF2] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CallLogs_Bak] ADD  CONSTRAINT [DF_CallLogs_Bak_backupdatetime]  DEFAULT (getdate()) FOR [backupdatetime]
GO
ALTER TABLE [dbo].[CallLogs]  WITH CHECK ADD  CONSTRAINT [FK_SubScriptionCallLog] FOREIGN KEY([SubScription_Id])
REFERENCES [dbo].[SubScriptions] ([Id])
GO
ALTER TABLE [dbo].[CallLogs] CHECK CONSTRAINT [FK_SubScriptionCallLog]
GO
ALTER TABLE [dbo].[SubScriptions]  WITH CHECK ADD  CONSTRAINT [FK_AccountSubScription] FOREIGN KEY([Account_Id])
REFERENCES [dbo].[Accounts] ([Id])
GO
ALTER TABLE [dbo].[SubScriptions] CHECK CONSTRAINT [FK_AccountSubScription]
GO
ALTER TABLE [dbo].[SubScriptions]  WITH CHECK ADD  CONSTRAINT [FK_ServiceSubScription] FOREIGN KEY([Service_Id])
REFERENCES [dbo].[Services] ([Id])
GO
ALTER TABLE [dbo].[SubScriptions] CHECK CONSTRAINT [FK_ServiceSubScription]
GO
ALTER TABLE [dbo].[sys_role_authority]  WITH CHECK ADD  CONSTRAINT [FK_sys_role_authority_sys_authority] FOREIGN KEY([authority_id])
REFERENCES [dbo].[sys_authority] ([authority_id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sys_role_authority] CHECK CONSTRAINT [FK_sys_role_authority_sys_authority]
GO
ALTER TABLE [dbo].[sys_role_authority]  WITH CHECK ADD  CONSTRAINT [FK_sys_role_authority_sys_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[sys_role] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sys_role_authority] CHECK CONSTRAINT [FK_sys_role_authority_sys_role]
GO
ALTER TABLE [dbo].[sys_role_user]  WITH CHECK ADD  CONSTRAINT [FK_sys_role_user_sys_role] FOREIGN KEY([sys_role_id])
REFERENCES [dbo].[sys_role] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sys_role_user] CHECK CONSTRAINT [FK_sys_role_user_sys_role]
GO
ALTER TABLE [dbo].[sys_role_user]  WITH CHECK ADD  CONSTRAINT [FK_sys_role_user_sys_user] FOREIGN KEY([sys_user_id])
REFERENCES [dbo].[sys_user] ([id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sys_role_user] CHECK CONSTRAINT [FK_sys_role_user_sys_user]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Accounts'
GO

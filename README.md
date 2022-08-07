# Blockchain-Energy-TradingPage
## SQL Database
### Energy Sold Table

```sql
CREATE DATABASE Trade

USE [Trade]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EnergyS_Table](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](500) NULL,
	[ProducerId] [int] NULL,
	[timestamp] [datetime] NULL,
	[FiscalCode] [varchar](500) NULL,
	[QuantityEnergy] [varchar](500) NULL,
	[ProducerName] [varchar](500) NULL,
	[SelectDistance] [varchar](500) NULL,
	[Select_DM_Per_Km] [varchar](500) NULL,
	[Cost] [real] NULL
	
 CONSTRAINT [PK_EnergyS_Table] PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

```

### Client Table

```sql
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client_Table](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](500) NULL,
	[CreatedUserId] [int] NULL,
	[timestamp] [datetime] NULL,
	[FiscalCode] [varchar](500) NULL,
	[UserAddress] [varchar](500) NULL,
	[UserType] [varchar](500) NULL,
	[ProducedEnergy] [varchar](500) NULL,
	[ConsumedEnergy] [varchar](500) NULL,
	
 CONSTRAINT [PK_Client_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] 

```
### Users_Table


```sql
GO
SET ANSI_PADDING OFF
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users_Table](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](500) NULL,
	[Pwd] [varchar](500) NULL,
	[Role] [varchar](50) NULL,
	[CreatedUserId] [int] NULL,
	[FiscalCode] [varchar](500) NULL,
	[UserAddress] [varchar](500) NULL,
	[UserType] [varchar](500) NULL,
	[ProducedEnergy] [varchar](500) NULL,
	[ConsumedEnergy] [varchar](500) NULL
    CONSTRAINT [DF_Users_Table_CreatedUserId]  DEFAULT ((0)),
 CONSTRAINT [PK_Users_Table] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

```
### Price_Table

```sql
GO
SET ANSI_PADDING OFF
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Price_Table](
	[ppId] [int] IDENTITY(1,1) NOT NULL,
	[Distance] [varchar](500) NULL,
	[Per_km_Price] [varchar](500) NULL,
	[CreatedbyUserId] [int] NULL,
 CONSTRAINT [PK_Price_Table] PRIMARY KEY CLUSTERED 
(
	[ppId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

```

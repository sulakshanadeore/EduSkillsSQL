/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [Locid]
      ,[Locname]
  FROM [EducationInstitute].[dbo].[Location]
  
  use educationinstitute
  go
  alter table location
  alter column  Locname varchar(20)


  alter table location
  modify locname varchar(20)

    

  sp_rename 'location.Locname','locationname'
  sp_rename 'dept','department'

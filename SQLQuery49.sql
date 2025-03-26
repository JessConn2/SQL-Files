USE [Hospital]
GO
/****** Object:  StoredProcedure [dbo].[PWON_vw]    Script Date: 6/18/2020 12:15:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[PWON_sproc]
as
begin
Select Nurse.NurseID, Interaction.PatientID
from Nurse
left join Interaction
on Nurse.NurseID = Interaction.NurseID
End

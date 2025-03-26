Create view NPEvent_VW
as
select top 1000 NurseID, EventID
from Interaction

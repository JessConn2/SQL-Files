Create view CIX_Player_VW with schemabinding
as
select Player.[Last],Player.[State], Player.DOB
from dbo.Player
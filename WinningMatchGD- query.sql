create proc WinningMAtchGD_param @Result char(2), @TeamName nvarchar(25)
as
with WinningMatchGD_cte (MatchID,GoalDifferential)
as
(--#3
select PlaysIn.MatchID,(max(PlaysIn.GoalsScored) - 
min(PlaysIn.GoalsScored)) as GoalDifferential
from PlaysIn
group by PlaysIn.MatchID
)
select Team.TeamName as 'Winning Team', PlaysIn.MatchID,Field.[Name],
Field.[State],WinningMatchGD_cte.GoalDifferential

from WinningMatchGD_cte
join PlaysIn
on WinningMatchGD_cte.MatchID = PlaysIn.MatchID
join Team
on PlaysIn.TeamID = Team.TeamID
join Match
on Match.MatchID = PlaysIn.MatchID
join Field
on Field.FieldID = Match.FieldID
where @Result = PlaysIn.Result and @TeamName = Team.TeamName
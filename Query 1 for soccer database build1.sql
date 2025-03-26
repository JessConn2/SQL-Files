create sproc IndividualPlayerReport_sproc
as
begin
select top 100 p.PlayerID,p.[First]+' '+p.[Last] as
'Player', t.TeamName, pa.season,sum(pa.GoalsScored) 
as 'GoalsScored', sum(pa.MinutesPlayed) as 
'Minutes Played'
from Player p
join ParticipatesIn pa
on P.PlayerID = Pa.PlayerID
join PlaysIn pl
on Pa.MatchID = Pl.MatchID
join Team t
on Pl.TeamID = T.TeamID

group by [First],[Last],p.PlayerID,pa.GoalsScored,
pa.MinutesPlayed, pa.Season,t.TeamName
order by pa.GoalsScored desc
--#1 sproc
end
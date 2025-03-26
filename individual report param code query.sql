create proc IndividualPlayerReport_param @TeamName nvarchar(25), @GoalsScored numeric(4,2)
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
where (@TeamName = t.TeamName) and (@GoalsScored = pa.GoalsScored)
group by [First],[Last],p.PlayerID,pa.GoalsScored,
pa.MinutesPlayed, pa.Season,t.TeamName
order by pa.GoalsScored desc
--#1 param
end
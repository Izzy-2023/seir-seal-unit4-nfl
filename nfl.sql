-- 1. List the names of all NFL teams'
select name from teams ORDER BY name ASC;

#	name
1	Arizona Cardinals
2	Atlanta Falcons
3	Baltimore Ravens
4	Buffalo Bills
5	Carolina Panthers
6	Chicago Bears
7	Cincinnati Bengals
8	Cleveland Browns
9	Dallas Cowboys
10	Denver Broncos
11	Detroit Lions
12	Green Bay Packers
13	Houston Texans
14	Indianapolis Colts
15	Jacksonville Jaguars
16	Kansas City Chiefs
17	Miami Dolphins
18	Minnesota Vikings
19	New England Patriots
20	New Orleans Saints
21	New York Giants
22	New York Jets
23	Oakland Raiders
24	Philadelphia Eagles
25	Pittsburgh Steelers
26	San Diego Chargers
27	San Francisco 49ers
28	Seattle Seahawks
29	St. Louis Rams
30	Tampa Bay Buccaneers
31	Tennessee Titans
32	Washington Redskins

-- 2. List the stadium name and head coach of all NFC teams
SELECT stadium, head_coach, conference FROM teams WHERE conference = 'NFC';

#	stadium	head_coach	conference
1	AT&T Stadium	Jason Garrett	NFC
2	MetLife Stadium	Tom Coughlin	NFC
3	Lincoln Financial Field	Chip Kelly	NFC
4	FedExField	Jay Gruden	NFC
5	Soldier Field	Marc Trestman	NFC
6	Ford Field	Jim Caldwell	NFC
7	Lambeau Field	Mike McCarthy	NFC
8	TCF Bank Stadium	Mike Zimmer	NFC
9	Georgia Dome	Mike Smith	NFC
10	Bank of America Stadium	Ron Rivera	NFC
11	Mercedes-Benz Superdome	Sean Payton	NFC
12	Raymond James Stadium	Lovie Smith	NFC
13	University of Phoenix Stadium	Bruce Arians	NFC
14	Edward Jones Dome	Jeff Fisher	NFC
15	Levis Stadium	Jim Harbaugh	NFC
16	CenturyLink Field	Pete Carroll	NFC

-- 3. List the head coaches of the AFC South
SELECT head_coach, conference FROM teams WHERE conference = 'AFC';

#	head_coach	conference
1	Doug Marrone	AFC
2	Joe Philbin	AFC
3	Bill Belichick	AFC
4	Rex Ryan	AFC
5	John Harbaugh	AFC
6	Marvin Lewis	AFC
7	Mike Pettine	AFC
8	Mike Tomlin	AFC
9	Bill OBrien	AFC
10	Chuck Pagano	AFC
11	Gus Bradley	AFC
12	Ken Whisenhunt	AFC
13	John Fox	AFC
14	Andy Reid	AFC
15	Tony Sparano	AFC
16	Mike McCoy	AFC

-- 4. The total number of players in the NFL
SELECT COUNT(*) as total_players FROM players;

#	total_players
1	1532

-- 5. The team names and head coaches of the NFC North and AFC East


-- 6. The 50 players with the highest salaries


-- 7. The average salary of all NFL players


-- 8. The names and positions of players with a salary above 10_000_000


-- 9. The player with the highest salary in the NFL


-- 10. The name and position of the first 100 players with the lowest salaries


-- 11. The average salary for a DE in the nfl


-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers
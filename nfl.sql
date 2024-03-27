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
SELECT name, head_coach
FROM teams
WHERE conference = 'NFC' OR conference = 'AFC';

#	name	head_coach	conference
1	Buffalo Bills	Doug Marrone	AFC
2	Miami Dolphins	Joe Philbin	AFC
3	New England Patriots	Bill Belichick	AFC
4	New York Jets	Rex Ryan	AFC
5	Baltimore Ravens	John Harbaugh	AFC
6	Cincinnati Bengals	Marvin Lewis	AFC
7	Cleveland Browns	Mike Pettine	AFC
8	Pittsburgh Steelers	Mike Tomlin	AFC
9	Houston Texans	Bill OBrien	AFC
10	Indianapolis Colts	Chuck Pagano	AFC
11	Jacksonville Jaguars	Gus Bradley	AFC
12	Tennessee Titans	Ken Whisenhunt	AFC
13	Denver Broncos	John Fox	AFC
14	Kansas City Chiefs	Andy Reid	AFC
15	Oakland Raiders	Tony Sparano	AFC
16	San Diego Chargers	Mike McCoy	AFC
17	Dallas Cowboys	Jason Garrett	NFC
18	New York Giants	Tom Coughlin	NFC
19	Philadelphia Eagles	Chip Kelly	NFC
20	Washington Redskins	Jay Gruden	NFC
21	Chicago Bears	Marc Trestman	NFC
22	Detroit Lions	Jim Caldwell	NFC
23	Green Bay Packers	Mike McCarthy	NFC
24	Minnesota Vikings	Mike Zimmer	NFC
25	Atlanta Falcons	Mike Smith	NFC
26	Carolina Panthers	Ron Rivera	NFC
27	New Orleans Saints	Sean Payton	NFC
28	Tampa Bay Buccaneers	Lovie Smith	NFC
29	Arizona Cardinals	Bruce Arians	NFC
30	St. Louis Rams	Jeff Fisher	NFC
31	San Francisco 49ers	Jim Harbaugh	NFC
32	Seattle Seahawks	Pete Carroll	NFC

-- 6. The 50 players with the highest salaries
SELECT name, position, salary
FROM players
ORDER BY salary DESC
LIMIT 50;

#	name	position	salary
1	Peyton Manning	QB	18000000
2	Drew Brees	QB	15760000
3	Dwight Freeney	DE	14035000
4	Elvis Dumervil	DE	14000000
5	Michael Vick	QB	12500000
6	Sam Bradford	QB	12000000
7	Jared Allen	DE	11619850
8	Matt Ryan	QB	11500000
9	Matthew Stafford	QB	11500000
10	Tamba Hali	DE	11250000
11	Jake Long	T	11200000
12	Nnamdi Asomugha	CB	11000000
13	Trent Williams	T	11000000
14	Vincent Jackson	WR	11000000
15	Cliff Avril	DE	10600000
16	Calais Campbell	DE	10600000
17	Joe Thomas	T	10500000
18	Brent Grimes	CB	10431000
19	Peyton Manning (buyout)	QB	10400000
20	Chris Long	DE	10310000
21	Philip Rivers	QB	10200000
22	Jason Smith	T	10000000
23	David Harris	LB	9900000
24	Wes Welker	WR	9515000
25	Davin Joseph	G	9500000
26	Dwayne Bowe	WR	9443000
27	Asante Samuel	CB	9400000
28	Brandon Marshall	WR	9300000
29	Ndamukong Suh	DT	9250000
30	Tony Romo	QB	9000000
31	Julius Peppers	DE	8900000
32	Anthony Spencer	LB	8800000
33	Karlos Dansby	LB	8800000
34	Jordan Gross	T	8500000
35	Tyson Jackson	DE	8005000
36	Adrian Peterson	RB	8000000
37	Champ Bailey	CB	8000000
38	Chris Johnson	RB	8000000
39	Aaron Rodgers	QB	8000000
40	Jason Peters	T	7900000
41	Eric Wright	CB	7750000
42	Steve Smith	WR	7750000
43	Santonio Holmes	WR	7750000
44	Jay Cutler	QB	7700000
45	Matt Forte	RB	7700000
46	Ray Rice	RB	7700000
47	Brian Urlacher	LB	7500000
48	Johnathan Joseph	CB	7250000
49	Gary Brackett	LB	7200000
50	Ed Reed	S	7200000

-- 7. The average salary of all NFL players
SELECT ROUND(AVG(salary), 2) AS average_salary
FROM players;

#	average_salary
1	1579692.54

-- 8. The names and positions of players with a salary above 10_000_000
SELECT name, position, salary
FROM players
WHERE salary > 10000000;

#	name	position	salary
1	Jake Long	T	11200000
2	Joe Thomas	T	10500000
3	Dwight Freeney	DE	14035000
4	Peyton Manning (buyout)	QB	10400000
5	Peyton Manning	QB	18000000
6	Elvis Dumervil	DE	14000000
7	Tamba Hali	DE	11250000
8	Philip Rivers	QB	10200000
9	Michael Vick	QB	12500000
10	Nnamdi Asomugha	CB	11000000
11	Trent Williams	T	11000000
12	Matthew Stafford	QB	11500000
13	Cliff Avril	DE	10600000
14	Jared Allen	DE	11619850
15	Matt Ryan	QB	11500000
16	Brent Grimes	CB	10431000
17	Drew Brees	QB	15760000
18	Vincent Jackson	WR	11000000
19	Calais Campbell	DE	10600000
20	Sam Bradford	QB	12000000
21	Chris Long	DE	10310000

-- 9. The player with the highest salary in the NFL
SELECT name, position, salary
FROM players
ORDER BY salary DESC
LIMIT 1;

#	name	position	salary
1	Peyton Manning	QB	18000000

-- 10. The name and position of the first 100 players with the lowest salaries
SELECT name, position
FROM players
ORDER BY salary
LIMIT 100;

#	name	position
1	Phillip Dillard	
2	Eric Kettani	RB
3	Austin Sylvester	RB
4	Greg Orton	WR
5	Jerrod Johnson	QB
6	McLeod Bethel-Thompson	QB
7	Jonathan Crompton	QB
8	Travon Bellamy	CB
9	Caleb King	RB
10	Mike Mohamed	LB
11	Kyle Nelson	LS
12	John Malecki	G
13	Nathan Bussey	LB
14	Robert James	LB
15	Markell Carter	DE
16	Aaron Lavarias	DT
17	Mark Dell	WR
18	Ronald Johnson	WR
19	Doug Worthington	DT
20	Derrick Jones	WR
21	Sealver Siliga	DT
22	Chase Beeler	C
23	Kenny Wiggins	T
24	Konrad Reuland	TE
25	Michael Wilhoite	LB
26	Garrett Chisolm	G
27	Juamorris Stewart	WR
28	Chad Spann	RB
29	Trevis Turner	T
30	Justin Medlock	KR
31	Armon Binns	WR
32	Derek Hall	T
33	Shaky Smithson	WR
34	Armando Allen	RB
35	DAndre Goodwin	WR
36	Jeremy Beal	DE
37	Brett Brackett	TE
38	Shaun Draughn	RB
39	John Clay	RB
40	Tristan Davis	RB
41	Curtis Holcomb	CB
42	Jimmy Young	WR
43	Kevin Cone	WR
44	Cory Nelms	CB
45	Ben Guidugli	TE
46	David Gilreath	WR
47	Dontavia Bogan	WR
48	Joe Hastings	WR
49	Marshall McFadden	LB
50	Kade Weston	DT
51	Kyle Hix	T
52	Mark LeGree	S
53	Mike Hartline	QB
54	Jameson Konz	WR
55	Tyler Beiler	
56	Mike Blanc	DT
57	Corbin Bryant	DT
58	Michael Jasper	DT
59	Mike Rivera	LB
60	Pat Devlin	QB
61	Jerome Messam	RB
62	Jamie McCoy	TE
63	Lestar Jean	WR
64	Malcolm Williams	CB
65	Ricky Sapp	DE
66	Rashad Carmichael	CB
67	Alex Silvestro	DT
68	Adam Weber	QB
69	Adam Grant	T
70	Jammie Kirlew	DE
71	Joe Reitz	T
72	Brandon Browner	CB
73	Jeff Byers	C
74	Jed Collins	TE
75	Aaron Berry	CB
76	Logan Payne	WR
77	Marcus Sherels	CB
78	T.J. Conley	PR
79	Cameron Sheffield	LB
80	Kyle Bosworth	LB
81	Garrett McIntyre	DT
82	John Estes	C
83	Thomas Austin	G
84	Emmanuel Stephens	DT
85	Markus White	DE
86	Ricardo Matthews	DT
87	Quinten Lawrence	WR
88	Bilal Powell	RB
89	Taylor Boggs	C
90	Kamar Aiken	WR
91	Dexter Jackson	WR
92	Justin Rogers	CB
93	Johnny White	RB
94	Eron Riley	WR
95	Tracy Wilson	CB
96	DaNorris Searcy	S
97	Chris White	LB
98	Sterling Moore	CB
99	Chris Hairston	T
100	Andrew Hawkins	WR

-- 11. The average salary for a DE in the nfl
SELECT Round(AVG(salary), 2) AS average_salary
FROM players
WHERE position = 'DE';

#	average_salary
1	2161326.38

-- 12. The names of all the players on the Buffalo Bills


-- 13. The total salary of all players on the New York Giants


-- 14. The player with the lowest salary on the Green Bay Packers
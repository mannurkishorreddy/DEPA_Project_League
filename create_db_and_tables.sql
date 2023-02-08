#show variables like "local_infile";
#set global local_infile = 1;

drop database if exists project_de;
create database if not exists project_de;
use project_de;

#first table 'country' creation and data load
drop table if exists project_de.country;
create table if not exists project_de.country (
id int,
name varchar(64)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Country.csv'
INTO TABLE country
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#second table 'league' creation and data load
drop table if exists project_de.league;
create table if not exists project_de.league
(
id int,
country_id bigint,
name varchar(64)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/League.csv'
INTO TABLE league
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#third table 'match' creation and data load
drop table if exists project_de.`match`;
create table if not exists project_de.`match`
(
id						int          ,
country_id	     		int          ,
league_id	    		int          ,
season	                varchar(64)  ,
stage	        		int          ,
date	        		date         ,
match_api_id			int          ,
home_team_api_id		int          ,
away_team_api_id		int          ,
home_team_goal	        int          ,
away_team_goal	        int          ,
home_player_X1	        varchar(64)  ,
home_player_X2	        varchar(64)  ,
home_player_X3	        varchar(64)  ,
home_player_X4	        varchar(64)  ,
home_player_X5	        varchar(64)  ,
home_player_X6	        varchar(64)  ,
home_player_X7	        varchar(64)  ,
home_player_X8	        varchar(64)  ,
home_player_X9	        varchar(64)  ,
home_player_X10	        varchar(64)  ,
home_player_X11	        varchar(64)  ,
away_player_X1	        varchar(64)  ,
away_player_X2	        varchar(64)  ,
away_player_X3	        varchar(64)  ,
away_player_X4	        varchar(64)  ,
away_player_X5	        varchar(64)  ,
away_player_X6	        varchar(64)  ,
away_player_X7	        varchar(64)  ,
away_player_X8	        varchar(64)  ,
away_player_X9	        varchar(64)  ,
away_player_X10	        varchar(64)  ,
away_player_X11	        varchar(64)  ,
home_player_Y1	        varchar(64)  ,
home_player_Y2	        varchar(64)  ,
home_player_Y3	        varchar(64)  ,
home_player_Y4	        varchar(64)  ,
home_player_Y5	        varchar(64)  ,
home_player_Y6	        varchar(64)  ,
home_player_Y7	        varchar(64)  ,
home_player_Y8	        varchar(64)  ,
home_player_Y9	        varchar(64)  ,
home_player_Y10	        varchar(64)  ,
home_player_Y11	        varchar(64)  ,
away_player_Y1	        varchar(64)  ,
away_player_Y2	        varchar(64)  ,
away_player_Y3	        varchar(64)  ,
away_player_Y4	        varchar(64)  ,
away_player_Y5	        varchar(64)  ,
away_player_Y6	        varchar(64)  ,
away_player_Y7	        varchar(64)  ,
away_player_Y8	        varchar(64)  ,
away_player_Y9	        varchar(64)  ,
away_player_Y10	        varchar(64)  ,
away_player_Y11	        varchar(64)  ,
home_player_1	        varchar(64)  ,
home_player_2	        varchar(64)  ,
home_player_3	        varchar(64)  ,
home_player_4	        varchar(64)  ,
home_player_5	        varchar(64)  ,
home_player_6	        varchar(64)  ,
home_player_7	        varchar(64)  ,
home_player_8	        varchar(64)  ,
home_player_9	        varchar(64)  ,
home_player_10	        varchar(64)  ,
home_player_11	        varchar(64)  ,
away_player_1	        varchar(64)  ,
away_player_2	        varchar(64)  ,
away_player_3	        varchar(64)  ,
away_player_4	        varchar(64)  ,
away_player_5	        varchar(64)  ,
away_player_6	        varchar(64)  ,
away_player_7	        varchar(64)  ,
away_player_8	        varchar(64)  ,
away_player_9	        varchar(64)  ,
away_player_10	        varchar(64)  ,
away_player_11	        varchar(64)  ,
goal		            longtext ,
shoton					longtext ,
shotoff	                longtext ,
foulcommit	            longtext ,
card	                longtext ,
`cross`	                longtext ,
corner	                longtext ,
possession	            longtext ,
B365H					varchar(64)  ,
B365D	                varchar(64)  ,
B365A	                varchar(64)  ,
BWH	                    varchar(64)  ,
BWD	                    varchar(64)  ,
BWA	                    varchar(64)  ,
IWH	                    varchar(64)  ,
IWD	                    varchar(64)  ,
IWA	                    varchar(64)  ,
LBH	                    varchar(64)  ,
LBD	                    varchar(64)  ,
LBA	                    varchar(64)  ,
PSH	                    varchar(64)  ,
PSD	                    varchar(64)  ,
PSA	                    varchar(64)  ,
WHH	                    varchar(64)  ,
WHD	                    varchar(64)  ,
WHA	                    varchar(64)  ,
SJH	                    varchar(64)  ,
SJD	                    varchar(64)  ,
SJA	                    varchar(64)  ,
VCH                     varchar(64)  ,
VCD                     varchar(64)  ,
VCA                     varchar(64)  ,
GBH	                    varchar(64)  ,
GBD	                    varchar(64)  ,
GBA	                    varchar(64)  ,
BSH	                    varchar(64)  ,
BSD	                    varchar(64)  ,
BSA                     varchar(64)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Match.csv'
INTO TABLE `match`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#fourth table 'player' creation and data load
drop table if exists project_de.player;
create table if not exists project_de.player
(
id int,
player_api_id bigint,
player_name	varchar(64),
player_fifa_api_id bigint,
birthday date,
height float,
weight float
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Player.csv'
INTO TABLE player
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#fifth table 'player_attributes' creation and data load
drop table if exists project_de.player_attributes;
create table if not exists project_de.player_attributes
(
id int,
player_fifa_api_id int,
player_api_id int,
`date` date,
overall_rating varchar(16),
potential varchar(16),
preferred_foot varchar(16),
attacking_work_rate varchar(16),
defensive_work_rate	varchar(16),
crossing varchar(16),
finishing varchar(16),
heading_accuracy varchar(16),
short_passing varchar(16),
volleys varchar(16),
dribbling varchar(16),
curve                varchar(16),
free_kick_accuracy   varchar(16),
long_passing         varchar(16),
ball_control         varchar(16),
acceleration         varchar(16),
sprint_speed         varchar(16),
agility              varchar(16),
reactions            varchar(16),
balance				 varchar(16),
shot_power           varchar(16),
jumping				 varchar(16),
stamina				 varchar(16),
strength             varchar(16),
long_shots           varchar(16),
aggression           varchar(16),
interceptions        varchar(16),
positioning			 varchar(16),
vision               varchar(16),
penalties            varchar(16),
marking              varchar(16),
standing_tackle      varchar(16),
sliding_tackle       varchar(16),
gk_diving            varchar(16),
gk_handling			 varchar(16),
gk_kicking           varchar(16),
gk_positioning       varchar(16),
gk_reflexes          varchar(16)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Player_Attributes.csv'
INTO TABLE player_attributes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#sixth table sqlite_sequence and data load
drop table if exists project_de.sqlite_sequence;
create table if not exists project_de.sqlite_sequence
(
name varchar(32),
sequence varchar(16)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/sqlite_sequence.csv'
INTO TABLE sqlite_sequence
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#seventh table team and data load
drop table if exists project_de.team;
create table if not exists project_de.team
(
id int,
team_api_id int,
team_fifa_api_id varchar(16),
team_long_name varchar(64),
team_short_name varchar(8)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Team.csv'
INTO TABLE team
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

#eighth table 'team_attributes' creation and data load
drop table if exists project_de.team_attributes;
create table if not exists project_de.team_attributes
(
id	int,
team_fifa_api_id varchar(16),
team_api_id	int,
`date` date,
buildUpPlaySpeed int,
buildUpPlaySpeedClass varchar(16),
buildUpPlayDribbling varchar(8),
buildUpPlayDribblingClass varchar(16),
buildUpPlayPassing varchar(8),
buildUpPlayPassingClass	varchar(16),
buildUpPlayPositioningClass varchar(16),
chanceCreationPassing varchar(8),
chanceCreationPassingClass varchar(16),
chanceCreationCrossing varchar(8),
chanceCreationCrossingClass	varchar(16),
chanceCreationShooting varchar(8),
chanceCreationShootingClass varchar(16),
chanceCreationPositioningClass varchar(16),	
defencePressure	varchar(16),
defencePressureClass varchar(16),
defenceAggression	varchar(16),
defenceAggressionClass varchar(16),
defenceTeamWidth varchar(16),
defenceTeamWidthClass varchar(16),
defenceDefenderLineClass varchar(16)
);
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Team_Attributes.csv'
INTO TABLE team_attributes
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

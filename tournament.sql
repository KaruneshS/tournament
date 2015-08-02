-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- DROP Tables
DROP TABLE matches;
DROP TABLE players;

-- DROP VIEW;
DROP VIEW standings;
DROP View metamatches;
DROP VIEW wins;
DROP TABLE matches;
DROP TABLE players;

-- players Table
CREATE TABLE players (
	id SERIAL primary key,
	name varchar(255)
);

-- matches Table
CREATE TABLE matches (
	id SERIAL primary key,
	player int references players(id),
	opponent int references players(id),
	result boolean
);

-- View to show number of wins for each Player
CREATE VIEW wins AS
	SELECT players.id, COUNT(matches.opponent) AS n 
	FROM players
	LEFT JOIN (SELECT * FROM matches WHERE result = true) as matches
	ON players.id = matches.player
	GROUP BY players.id;

-- View to show number of matches for each Player
CREATE VIEW metamatches AS
	SELECT players.id, COUNT(matches.opponent) AS n 
	FROM players
	LEFT JOIN matches
	ON players.id = matches.player
	GROUP BY players.id;

-- View to show number of wins and matches for each Player
CREATE VIEW standings AS 
	SELECT players.id, players.name, wins.n as wins, metamatches.n as matches 
	FROM players, metamatches, wins
	WHERE players.id = wins.id and wins.id = metamatches.id;

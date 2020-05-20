

--==========================================================================================================================
-- Historical Religions
--==========================================================================================================================
-- FavoredReligions 
------------------------------------------------------------

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_GEDEMO_WILLEM';

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_WILLEM'),                             ('RELIGION_PROTESTANTISM')
WHERE NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_GEDEMO_WILLEM'),                             ('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');



--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,	Y)
VALUES	('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'GiantEarth',		15,	71),
		('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'GreatestEarthMap', 43,	53),
		('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'LargeEurope', 30,	49),
		('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'PlayEuropeAgain', 36,	59),
		('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'Zobtzler_NorthernEurope_Map', 25,	7),
		('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'LargestEarthCustom', 19,	89),
		('CIVILIZATION_NETHERLANDS',  'LEADER_GEDEMO_WILLEM',  'CordiformEarth',  36, 33);




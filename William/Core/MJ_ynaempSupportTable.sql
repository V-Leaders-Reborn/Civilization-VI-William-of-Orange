

--==========================================================================================================================
-- Historical Religions
--==========================================================================================================================
-- FavoredReligions 
------------------------------------------------------------

DELETE FROM FavoredReligions WHERE LeaderType = 'LEADER_WILLIAM_OF_ORANGE';

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_WILLIAM_OF_ORANGE'),                             ('RELIGION_PROTESTANTISM')
WHERE NOT EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');

INSERT OR REPLACE INTO FavoredReligions
           (LeaderType,                                       ReligionType)
SELECT   ('LEADER_WILLIAM_OF_ORANGE'),                             ('RELIGION_P1_CALVINISM')
WHERE EXISTS (SELECT * FROM Religions WHERE ReligionType = 'RELIGION_P1_CALVINISM');



--==========================================================================================================================
-- William of Orange YNAEMP
--==========================================================================================================================
-- StartPosition 
------------------------------------------------------------	
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
		(Civilization,						Leader,						MapName,			X,	Y)
VALUES	('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'GiantEarth',		15,	71),
		('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'GreatestEarthMap', 43,	53),
		('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'LargeEurope', 30,	49),
		('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'PlayEuropeAgain', 36,	59),
		('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'Zobtzler_NorthernEurope_Map', 25,	7),
		('CIVILIZATION_NETHERLANDS',	'LEADER_WILLIAM_OF_ORANGE',	'LargestEarthCustom', 19,	89),
		('CIVILIZATION_NETHERLANDS',    'LEADER_WILLIAM_OF_ORANGE',  'CordiformEarth',  36, 33);




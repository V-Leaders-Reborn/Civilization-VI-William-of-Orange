-- GameData1
-- Author: Steffalon
-- DateCreated: 2/16/2019 9:20:31 AM
--------------------------------------------------------------

--==========================================================================================================================
-- LEADERS: COLOURS
--==========================================================================================================================
-- PlayerColors
--------------------------------------------------------------------------------------------------------------------------	



INSERT INTO Colors 
		(Type, 															Color)
VALUES	('COLOR_PLAYER_NETHERLANDS_WILLIAM_A_PRIMARY',	'236,	82,	28,	255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_A_SECONDARY', 	'255,	233,	236,	255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_B_PRIMARY',	'155,25,62,255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_B_SECONDARY', 	'255,189,102,255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_C_PRIMARY',	'38,96,94,255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_C_SECONDARY', 	'252,202,132,255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_D_PRIMARY',	'3,103,152,255'),
		('COLOR_PLAYER_NETHERLANDS_WILLIAM_D_SECONDARY', 	'242,178,48,255');




-----------------------------------------------
-- PlayerColors
-----------------------------------------------

INSERT INTO	PlayerColors (Type, Usage, PrimaryColor, SecondaryColor, Alt1PrimaryColor, Alt1SecondaryColor, Alt2PrimaryColor, Alt2SecondaryColor, Alt3PrimaryColor, Alt3SecondaryColor )
VALUES	(
		'LEADER_WILLIAM_OF_ORANGE',
		'Unique',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_A_PRIMARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_A_SECONDARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_B_PRIMARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_B_SECONDARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_C_PRIMARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_C_SECONDARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_D_PRIMARY',
		'COLOR_PLAYER_NETHERLANDS_WILLIAM_D_SECONDARY'
		);
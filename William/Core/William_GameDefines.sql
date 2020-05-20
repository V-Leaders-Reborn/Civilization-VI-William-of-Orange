--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,							Kind)
VALUES	('LEADER_GEDEMO_WILLEM',	'KIND_LEADER');
		

--------------------------------------------------------------------------------------------------------------------------
-- Leaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,					Name,										InheritFrom,		SceneLayers)
VALUES	('LEADER_GEDEMO_WILLEM',	'LOC_LEADER_GEDEMO_WILLEM',		'LEADER_DEFAULT',	4);	
--------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,			Quote)
VALUES	('LEADER_GEDEMO_WILLEM',	'LOC_PEDIA_LEADERS_PAGE_LEADER_GEDEMO_WILLEM_QUOTE');	

--==========================================================================================================================
-- LEADER: AGENDAS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('TRAIT_AGENDA_GEDEMO_WILLEM',		'KIND_TRAIT');
--------------------------------------------------------------------------------------------------------------------------
-- Agendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Agendas
		(AgendaType,								Name,										Description)
VALUES	('AGENDA_GEDEMO_WILLEM',				'LOC_AGENDA_GEDEMO_WILLEM_NAME',		'LOC_AGENDA_GEDEMO_WILLEM_DESCRIPTION');
--------------------------------------------------------------------------------------------------------------------------
-- Traits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,									Name,										Description)
VALUES	('TRAIT_AGENDA_GEDEMO_WILLEM',		'LOC_PLACEHOLDER',							'LOC_PLACEHOLDER');
--------------------------------------------------------------------------------------------------------------------------
-- AgendaTraits
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO AgendaTraits
		(AgendaType,								TraitType)
VALUES	('AGENDA_GEDEMO_WILLEM',				'TRAIT_AGENDA_GEDEMO_WILLEM');

INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_AGENDA_GEDEMO_WILLEM',						'AGENDA_VADER_TRADE');

INSERT INTO Modifiers	
		(ModifierId,												ModifierType,	OwnerRequirementSetId, SubjectRequirementSetId)
VALUES	('AGENDA_VADER_TRADE',				'MODIFIER_PLAYER_DIPLOMACY_TRADE_RELATIONS', 'ON_TURN_STARTED',	'PLAYER_IS_MAJOR_CIV_KNOWN_30_TURNS');

INSERT INTO ModifierArguments
		(ModifierId,												Name,						Value)
VALUES	('AGENDA_VADER_TRADE',		'TradeBonus',			'3'),
		('AGENDA_VADER_TRADE',		'NoTradePenalty',			'12'),
		('AGENDA_VADER_TRADE',		'BonusPerRoute',			'true'),
		('AGENDA_VADER_TRADE',		'OnlyInboundTrade',			'true'),
		('AGENDA_VADER_TRADE',		'StatementKey',			'LOC_DIPLO_KUDO_EXIT_LEADER_GEDEMO_WILLEM_ANY'),
		('AGENDA_VADER_TRADE',		'SimpleModifierDescription',			'LOC_DIPLO_MODIFIER_VADER_TRADE');




--------------------------------------------------------------------------------------------------------------------------
-- ExclusiveAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ExclusiveAgendas
		(AgendaOne,									AgendaTwo)
VALUES	('AGENDA_GEDEMO_WILLEM',				'AGENDA_BILLIONAIRE');

--------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO HistoricalAgendas
		(LeaderType,				AgendaType)
VALUES	('LEADER_GEDEMO_WILLEM',	'AGENDA_GEDEMO_WILLEM');

--------------------------------------------------------------------------------------------------------------------------
-- AgendaPreferredLeaders
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AgendaPreferredLeaders	
		(LeaderType,					AgendaType)
VALUES	('LEADER_GEDEMO_WILLEM',	'AGENDA_MONEY_GRUBBER');	




--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,						BackgroundImage, 						ForegroundImage,						PlayDawnOfManAudio)
VALUES	('LEADER_GEDEMO_WILLEM',		'LEADER_NEUTRAL_BACKGROUND',		'LEADER_WILLEM_NEUTRAL',			0);	
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	

----------------------------------------------------------------------------------------------------------------------------
-- Civilizations
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,					LeaderType,										CapitalName)
VALUES	('CIVILIZATION_NETHERLANDS',	'LEADER_GEDEMO_WILLEM',	'LOC_CITY_NAME_THE_HAGUE');	
----------------------------------------------------------------------------------------------------------------------------			

----------------------------------------------------------------------------------------------------------------------------			
-------------------------------------
-- CityNames
-------------------------------------
INSERT INTO CityNames	
			(CivilizationType,				LeaderType,					SortIndex,	CityName)	
VALUES		('CIVILIZATION_NETHERLANDS',		'LEADER_GEDEMO_WILLEM',		-1,			'LOC_CITY_NAME_THE_HAGUE');	
			
--------------------------------------------------------------------------------------------------------------------------		
-- BackGround Art		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO DiplomacyInfo			
		(Type,								BackgroundImage)
VALUES	('LEADER_GEDEMO_WILLEM',		'ART_LEADER_WILLEM.dds');

--------------------------------------------------------------------------------------------------------------------------	
-- Types
--------------------------------------------------------------------------------------------------------------------------	

INSERT INTO Types	
		(Type,														Kind)
VALUES	('TRAIT_LEADER_GEDEMO_WILLEM',						'KIND_TRAIT');	

--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,													Name,													Description)
VALUES	('TRAIT_LEADER_GEDEMO_WILLEM',						'LOC_TRAIT_LEADER_GEDEMO_WILLEM_NAME',			'LOC_TRAIT_LEADER_GEDEMO_WILLEM_DESCRIPTION');	

--------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_GEDEMO_WILLEM',	'TRAIT_LEADER_GEDEMO_WILLEM');
		


--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,													ModifierId)
VALUES	('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_INTERNATIONAL_FOOD'),
		('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_INTERNATIONAL_CULTURE'),
		('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_INTERNATIONAL_SCIENCE'),
		('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_INCOMING_RECIEVE_GOLD'),
		
		('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_IMPROVE_ROUTE_CAPACITY'),
		('TRAIT_LEADER_GEDEMO_WILLEM',						'TRAIT_WILLEM_INCOMING_OFFER_PRODUCTION');

--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,												ModifierType)
VALUES	('TRAIT_WILLEM_INTERNATIONAL_FOOD',							'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),		
		('TRAIT_WILLEM_INTERNATIONAL_CULTURE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('TRAIT_WILLEM_INTERNATIONAL_SCIENCE',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL'),
		('TRAIT_WILLEM_INCOMING_RECIEVE_GOLD',						'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_FROM_OTHERS'),	
		
		('TRAIT_WILLEM_IMPROVE_ROUTE_CAPACITY',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY'),			
		('TRAIT_WILLEM_INCOMING_OFFER_PRODUCTION',					'MODIFIER_PLAYER_CITIES_ADJUST_TRADE_ROUTE_YIELD_TO_OTHERS');					
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,							Value)
VALUES	('TRAIT_WILLEM_INTERNATIONAL_CULTURE',		'YieldType',			'YIELD_CULTURE'),
		('TRAIT_WILLEM_INTERNATIONAL_CULTURE',		'Amount',						2),

		('TRAIT_WILLEM_INTERNATIONAL_FOOD',		'YieldType',			'YIELD_FOOD'),
		('TRAIT_WILLEM_INTERNATIONAL_FOOD',		'Amount',						2),

		('TRAIT_WILLEM_INTERNATIONAL_SCIENCE',		'YieldType',			'YIELD_SCIENCE'),
		('TRAIT_WILLEM_INTERNATIONAL_SCIENCE',		'Amount',						2),
		
		('TRAIT_WILLEM_INCOMING_RECIEVE_GOLD',		'YieldType',			'YIELD_GOLD'),
		('TRAIT_WILLEM_INCOMING_RECIEVE_GOLD',		'Amount',						2),


		('TRAIT_WILLEM_IMPROVE_ROUTE_CAPACITY',		'Amount',			1),

		('TRAIT_WILLEM_INCOMING_OFFER_PRODUCTION',		'YieldType',			'YIELD_PRODUCTION'),
		('TRAIT_WILLEM_INCOMING_OFFER_PRODUCTION',			'Amount',		2);



-----------------------------------------------
-- AiListTypes
-----------------------------------------------

INSERT INTO AiListTypes
		(ListType										)
VALUES 	('LEADER_GEDEMO_WILLEM_TECHS'			),
		('LEADER_GEDEMO_WILLEM_CIVICS'		),
		('LEADER_GEDEMO_WILLEM_DISTRICTS'		),
		('LEADER_GEDEMO_WILLEM_BUILDINGS'		),
		('LEADER_GEDEMO_WILLEM_DIPLOMACY'		),
		('LEADER_GEDEMO_WILLEM_EXPANSION'		),
		('LEADER_GEDEMO_WILLEM_PSEUDOS'		);

-----------------------------------------------
-- AiLists
-----------------------------------------------

INSERT INTO AiLists
		(ListType,										LeaderType,								System						)
VALUES  ('LEADER_GEDEMO_WILLEM_TECHS',		'TRAIT_LEADER_GEDEMO_WILLEM',	'Technologies'				),
		('LEADER_GEDEMO_WILLEM_CIVICS',		'TRAIT_LEADER_GEDEMO_WILLEM',	'Civics'					),
		
		('LEADER_GEDEMO_WILLEM_BUILDINGS',	'TRAIT_LEADER_GEDEMO_WILLEM',	'Buildings'					);
		
		
-----------------------------------------------
-- AiFavoredItems
-----------------------------------------------

INSERT INTO AiFavoredItems
		(ListType,										Item,										Favored,	StringVal		)
VALUES  -- TECHS
		('LEADER_GEDEMO_WILLEM_TECHS',		'TECH_ASTROLOGY',								1,			NULL						),
		('LEADER_GEDEMO_WILLEM_TECHS',		'TECH_IRRIGATION',						1,			NULL						),
		('LEADER_GEDEMO_WILLEM_TECHS',		'TECH_HORSEBACK_RIDING',						1,			NULL						),
		('LEADER_GEDEMO_WILLEM_TECHS',		'TECH_ELECTRICITY',							1,			NULL						),
		
		-- CIVICS
		('LEADER_GEDEMO_WILLEM_CIVICS',		'CIVIC_THEOLOGY',					1,			NULL						),
		('LEADER_GEDEMO_WILLEM_CIVICS',		'CIVIC_CIVIL_SERVICE',					1,			NULL						),
		('LEADER_GEDEMO_WILLEM_CIVICS',		'CIVIC_HUMANISM',						1,			NULL						),
		('LEADER_GEDEMO_WILLEM_CIVICS',		'CIVIC_DIPLOMATIC_SERVICE',						1,			NULL						),
		
		
		-- WONDERS
		('LEADER_GEDEMO_WILLEM_BUILDINGS',	'BUILDING_HANGING_GARDENS',							1,			NULL						),
		('LEADER_GEDEMO_WILLEM_BUILDINGS',	'BUILDING_MAHABODHI_TEMPLE',						1,			NULL						),
		('LEADER_GEDEMO_WILLEM_BUILDINGS',	'BUILDING_OXFORD_UNIVERSITY',					1,			NULL						);
		





/*
	UA
	Authors: ChimpanG
*/

-----------------------------------------------
-- Types
-----------------------------------------------

INSERT INTO	Types (Type, Kind)
SELECT	'MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION',	'KIND_MODIFIER'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

-----------------------------------------------
-- TraitModifiers
-----------------------------------------------

DELETE FROM TraitModifiers
WHERE ModifierId = 'MODIFIER_CVS_TIGRANES_II_UA_EXTRA_DISTRICT'
AND EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

INSERT INTO	TraitModifiers (TraitType, ModifierId)
SELECT	'TRAIT_LEADER_CVS_TIGRANES_II_UA',	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

-----------------------------------------------
-- DynamicModifiers
-----------------------------------------------

INSERT INTO	DynamicModifiers (ModifierType, CollectionType, EffectType)
SELECT	'MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION', 'COLLECTION_OWNER', 'EFFECT_GRANT_BOOST_WITH_GREAT_PERSON'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

-----------------------------------------------
-- Modifiers
-----------------------------------------------

INSERT INTO	Modifiers (ModifierId, ModifierType)
SELECT	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION', 'MODTYPE_CVS_TIGRANES_II_UA_GRANT_INSPIRATION'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

-----------------------------------------------
-- ModifierArguments
-----------------------------------------------

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION', 'GreatPersonClass', 'GREAT_PERSON_CLASS_GENERAL'
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));
		
INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION', 'TechBoost', 0
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

INSERT INTO	ModifierArguments (ModifierId, Name, Value)
SELECT	'MODIFIER_CVS_TIGRANES_II_UA_GRANT_INSPIRATION', 'OtherPlayers', 0
WHERE EXISTS (SELECT * FROM ModValidation WHERE Version IN ('XP1', 'XP2'));

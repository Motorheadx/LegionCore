/*=============
-- Update Human Zone 
=============*/
-- Rabbit (721)
UPDATE `creature_template` SET `AIName`='' WHERE `entry`=721;
DELETE FROM `smart_scripts` WHERE `entryorguid`=721;


-- Brother Sammuel (925)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=925;

DELETE FROM `smart_scripts` WHERE `entryorguid`=925;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(925, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 118247, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Sammuel - On Respawn - Cast Holy Channeling (Paladin)');


-- Bao (63258)
DELETE FROM `creature_template_addon` WHERE `entry`=63258;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(63258, 0, 0, 0, 1, 533, 0, 0, 0, '');


-- Ashley Blank (43278)
UPDATE `creature_template_addon` SET `emote`='214' WHERE  `entry`=43278;


-- Drusilla La Salle (459)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=459;

DELETE FROM `smart_scripts` WHERE `entryorguid`=459;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(459, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 45104, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Drusilla La Salle - On Respawn - Cast Shadow Channelling');


-- Dane Winslow (6373)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=6373;

DELETE FROM `smart_scripts` WHERE `entryorguid`=6373;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6373, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 146130, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dane Winslow - On Respawn - Cast Cosmetic - Fel Fire Channeling Omni');


-- Priestess Anetta (375)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=375;

DELETE FROM `smart_scripts` WHERE `entryorguid`=375;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(375, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 51361, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Priestess Anetta - On Respawn - Cast Holy Channeling');


-- Khelden Bremen (198)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=198;

DELETE FROM `smart_scripts` WHERE `entryorguid`=198;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(198, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 54219, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Khelden Bremen - On Respawn - Cast Arcane Channeling');


-- Blackrock Worg (49871)
DELETE FROM `creature` WHERE `guid` IN (129931,129922,129909,129898,129882,129884,129940,129992,129991,130006,130009,129993,129997,129999,129880);
DELETE FROM `creature_addon` WHERE `guid` IN (129931,129922,129909,129898,129882,129884,129940,129992,129991,130006,130009,129993,129997,129999,129880);
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='49871' AND NOT `MovementType`='2';


-- Stormwind Infantry (49869)
UPDATE `creature_template_addon` SET `bytes2`='1', `emote`='333' WHERE  `entry`=49869;
UPDATE `creature_addon` SET `bytes2`='1', `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=49869);


-- Injured Stormwind Infantry Dummy (50378)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=50378;
DELETE FROM `creature` WHERE `guid`=129889;
DELETE FROM `creature_addon` WHERE `guid`=129889;


-- Brother Paxton (951)
DELETE FROM `creature_template_addon` WHERE `entry`=951;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `auras`) VALUES 
(951, 0, 0, 0, 1, 425, 0, 0, 0, '');

DELETE FROM `smart_scripts` WHERE `entryorguid`=951;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (95100,95103) AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(951, 0, 0, 0, 1, 0, 100, 0, 0, 0, 1800000, 1800000, '', 11, 13864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Paxton - OCC - Cast Power Word: Fortitude'),
(951, 0, 1, 0, 1, 0, 100, 0, 1000, 5000, 20000, 20000, '', 88, 95100, 95103, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Paxton - OCC - Run Random Actionlist'),
(95100, 9, 0, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 11, 66097, 0, 0, 0, 0, 0, 19, 49869, 20, 0, 0, 0, 0, 0, 'Brother Paxton - Cast Penance on Creature Stormwind Infantry'),
(95100, 9, 1, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Paxton - Say Random Line 2'),
(95103, 9, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, '', 11, 93091, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Paxton - Cast Prayer of Healing'),
(95103, 9, 1, 0, 0, 0, 100, 1, 600, 600, 0, 0, '', 1, 0, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Paxton - Say Random Line 1');

DELETE FROM `creature_text` WHERE `CreatureID`=951 AND `GroupID`=0 AND `ID`=4;
DELETE FROM `creature_text` WHERE `CreatureID`=951 AND `GroupID`=0 AND `ID`=0;


-- Goblin Assassin (50039)
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=50039;
DELETE FROM `creature_queststarter` WHERE `id`=50039;


-- Gug Fatcandle (62)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=62;


-- Hose Anchor (42944)
UPDATE `creature_template` SET `InhabitType`='4', `flags_extra`='128' WHERE  `entry`=42944;


-- Northshire Vineyards Fire Trigger (42940)
UPDATE `creature_template` SET `InhabitType`='4' WHERE  `entry`=42940;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=42940;
DELETE FROM `smart_scripts` WHERE `entryorguid`=42940 AND `source_type`=0 AND `id`=1 AND `link`=0;


-- Blackrock Invader (42937)
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=42937;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=42937);
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='42937' AND NOT `MovementType`='2';
UPDATE `creature_loot_template` SET `Chance`='100', `QuestRequired`='1' WHERE  `Item`=1019;


-- Kurtok the Slayer (42938)
UPDATE `creature_template` SET `npcflag`='0' WHERE `entry`=42938;
DELETE FROM `creature_queststarter` WHERE `id`=42938;
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=42938;
UPDATE `creature_template_addon` SET `emote`='375' WHERE  `entry`=42938;
UPDATE `creature_addon` SET `emote`='375' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=42938);


-- Northshire Guard (1642)
DELETE FROM `smart_scripts` WHERE `entryorguid`=1642;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1642, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, '', 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Northshire Guard - Cast Shoot');


-- Stormwind Royal Guard (42218)
DELETE FROM `smart_scripts` WHERE `entryorguid`=42218;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(42218, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, '', 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Royal Guard - Cast Shoot');


-- Informa en Villadorada (54)
DELETE FROM `quest_poi` WHERE `QuestID`=54;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(54, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=54;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(54, 0, 0, -9466, 74, 24330);


-- Brother Neals (952)
UPDATE `creature_template_addon` SET `emote`='400' WHERE  `entry`=952;


-- Northshire Peasant (11260)
UPDATE `creature_template_addon` SET `bytes2`='1', `emote`='234' WHERE  `entry`=11260;
UPDATE `creature_addon` SET `bytes2`='1', `emote`='234' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=11260);
UPDATE `creature` SET `modelid`='3629' WHERE  `id`=11260;

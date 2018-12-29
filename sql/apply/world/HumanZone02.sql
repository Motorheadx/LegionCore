/*================
-- Update Human Zone 02
================*/
-- Innecesary Spawns
DELETE FROM `creature` WHERE `guid` IN (131115,131129,130455,130456,140842,130402,130401,130501,130764,130765,130766,130767,130768,130769,130770,130771,130772,130594);
DELETE FROM `creature_addon` WHERE `guid` IN (131115,131129,130455,130456,140842,130402,130401,130501,130764,130765,130766,130767,130768,130769,130770,130771,130772,130594);
DELETE FROM `creature_formations` WHERE `leaderGUID`=130764;


-- Descanso y relajaci�n (2158,37112)
UPDATE `quest_template_addon` SET `ExclusiveGroup`='2158' WHERE  `ID`=2158;
UPDATE `quest_template_addon` SET `ExclusiveGroup`='2158' WHERE  `ID`=37112;


-- Lee Brown (1651)
UPDATE `creature_template_addon` SET `emote`='379' WHERE  `entry`=1651;


-- Toddrick (3935)
UPDATE `creature_template_addon` SET `emote`='69' WHERE  `entry`=3935;


-- Maximillian Crowe (906)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=906;

DELETE FROM `smart_scripts` WHERE `entryorguid`=906;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(906, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 45104, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Maximillian Crowe - On Respawn - Cast Shadow Channelling');


-- Cylina Darkheart (6374)
DELETE FROM `smart_scripts` WHERE `entryorguid`=6374;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6374, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 146130, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Cylina Darkheart - On Respawn - Cast Cosmetic - Fel Fire Channeling Omni');


-- Melika Isenstrider (6778)
UPDATE `creature_template_addon` SET `emote`='400' WHERE  `entry`=6778;


-- Zaldimar Wefhellt (328)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=328;

DELETE FROM `smart_scripts` WHERE `entryorguid`=328;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(328, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 54219, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Zaldimar Wefhellt - On Respawn - Cast Arcane Channeling');


-- Priestess Josetta (377)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=377;

DELETE FROM `smart_scripts` WHERE `entryorguid`=377;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(377, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 51361, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Priestess Josetta - On Respawn - Cast Holy Channeling');


-- Michelle Belle (2329)
UPDATE `creature_template` SET `AIName`='SmartAI'  WHERE  `entry`=2329;

DELETE FROM `smart_scripts` WHERE `entryorguid`=2329;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(2329, 0, 0, 0, 1, 0, 100, 0, 0, 0, 20000, 20000, '', 11, 61493, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Michelle Belle - OOC - Cast [DND] First Aid');


-- Cow (2442)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='2442' AND NOT `MovementType`='2';
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `guid` IN (130071,130056);


-- Cutpurse (94)
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=94;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=94);


-- Black Lamb (60649)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='60649' AND NOT `MovementType`='2';


-- Stormwind Guard (1423)
DELETE FROM `creature` WHERE `guid` IN (130660,130664);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES 
(130660, 1423, 0, 12, 87, 1, 0, 0, 0, -1, 0, 1, -9433.204, 63.673, 56.582, 2.98839, 180, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 26365),
(130664, 1423, 0, 12, 87, 1, 0, 0, 0, -1, 0, 1, -9478.267, 76.466, 56.848, 3.57745, 180, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', 26365);

DELETE FROM `smart_scripts` WHERE `entryorguid`=1423;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1423, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2300, 3900, '', 11, 95826, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Stormwind Guard - Cast Shoot');


-- Lien Farner (47384)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=47384;

DELETE FROM `smart_scripts` WHERE `entryorguid`=47384;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(47384, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 15000, 30000, '', 10, 1, 113, 29, 574, 71, 391, 1, 0, 0, 0, 0, 0, 0, 0, 'Lien Farner - OOC - Random Emote');


-- Tharynn Bouden (66)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=66;

DELETE FROM `smart_scripts` WHERE `entryorguid`=66;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(66, 0, 0, 0, 1, 0, 100, 0, 1000, 5000, 15000, 30000, '', 10, 1, 113, 29, 574, 71, 391, 1, 0, 0, 0, 0, 0, 0, 0, 'Tharynn Bouden - OOC - Random Emote');


-- Brother Wilhelm (927)
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=927;

DELETE FROM `smart_scripts` WHERE `entryorguid`=927;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(927, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, '', 11, 118247, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Brother Wilhelm - On Respawn - Cast Holy Channeling (Paladin)');


-- Andrew Krighton (2046)
UPDATE `creature_template_addon` SET `emote`='69' WHERE  `entry`=2046;


-- Corina Steele (54)
UPDATE `creature_template_addon` SET `emote`='69' WHERE  `entry`=54;


-- Jason Mathers (383)
UPDATE `creature_template_addon` SET `emote`='616' WHERE  `entry`=383;


-- Fangs (64334)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='64334' AND NOT `MovementType`='2';


-- Slither (64335)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='64335' AND NOT `MovementType`='2';


-- Stormwind Rat (62954)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='62954' AND NOT `MovementType`='2';


-- Stormwind Rat (49540)
DELETE FROM `creature_text` WHERE `CreatureID`=49540 AND `GroupID`=5 AND `ID`=0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(49540, 5, 0, '%s becomes enraged!', 16, 0, 100, 0, 0, 0, 7798, 0, 'Stormwind Rat');


-- Goldtooth (327)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=327;


-- Narg the Taskmaster (79)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=79;

DELETE FROM `smart_scripts` WHERE `entryorguid`=79;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(79, 0, 0, 0, 0, 0, 100, 0, 2000, 2000, 18000, 18000, '', 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Narg the Taskmaster - Cast Battle Shout');


-- J�venes enamorados (106)
DELETE FROM `quest_poi` WHERE `QuestID`=106;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(106, 0, 0, -1, 0, 0, 0, 30, 0, 0, 3, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=106;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(106, 0, 0, -9930, 500, 24330);


-- Princess (330)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=330;

DELETE FROM `smart_scripts` WHERE `entryorguid`=330;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(330, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, '', 11, 6268, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Princess - On Aggro - Cast Rushing Charge');


-- Una nota para William (107)
DELETE FROM `quest_poi` WHERE `QuestID`=107;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(107, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=107;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(107, 0, 0, -9460, 32, 24330);


-- Vuelve con Billy (84)
DELETE FROM `quest_poi` WHERE `QuestID`=84;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(84, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=84;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(84, 0, 0, -9924, 38, 24330);


-- Bandit (116)
UPDATE `creature_template` SET `unit_flags`='32768' WHERE `entry`=116;
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=116;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=116);

DELETE FROM `smart_scripts` WHERE `entryorguid`=116;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(116, 0, 0, 0, 4, 0, 35, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bandit - On Aggro - Say Line 0'),
(116, 0, 1, 0, 0, 0, 100, 0, 8500, 10500, 37100, 42100, '', 11, 8646, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bandit - Cast Snap Kick');


-- William Pestle (253)
DELETE FROM `smart_scripts` WHERE `entryorguid`=25300 AND `source_type`=9 AND `id`=4 AND `link`=0;


-- La fuga (114)
DELETE FROM `quest_poi` WHERE `QuestID`=114;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(114, 0, 0, -1, 0, 0, 0, 34, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=114;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(114, 0, 0, -10014, 38, 24330);


-- Maybell Maclure (251)
UPDATE `creature` SET `spawntimesecs`='30' WHERE  `id`=251;


-- Ambusher (583)
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=583;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=583);

DELETE FROM `smart_scripts` WHERE `entryorguid`=583;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(583, 0, 0, 0, 4, 0, 30, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Ambusher - On Aggro - Say Random Text');


-- Mensajero a toda prisa (26393)
DELETE FROM `quest_poi` WHERE `QuestID`=26393;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(26393, 0, 0, -1, 0, 0, 0, 30, 0, 0, 3, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=26393;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(26393, 0, 0, -9436, 88, 24330);


-- Prosigue hasta Ventormenta (26394)
DELETE FROM `quest_poi` WHERE `QuestID`=26394;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(26394, 0, 0, -1, 0, 0, 0, 301, 0, 0, 3, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=26394;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(26394, 0, 0, -8702, 382, 24330);


-- Dungar Tragolargo (26395)
DELETE FROM `quest_poi` WHERE `QuestID`=26395;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(26395, 0, 0, -1, 0, 0, 0, 301, 0, 0, 3, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=26395;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(26395, 0, 0, -8835, 490, 24330);


-- Vuelve con Argus (26396)
DELETE FROM `quest_poi` WHERE `QuestID`=26396;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(26396, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=26396;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(26396, 0, 0, -9457, 88, 24330);


-- Rogue Wizard (474)
UPDATE `creature_template_addon` SET `emote`='425' WHERE  `entry`=474;
UPDATE `creature_addon` SET `emote`='425' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=474);

DELETE FROM `smart_scripts` WHERE `entryorguid`=474;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(474, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4700, '', 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Rogue Wizard - Cast Frostbolt'),
(474, 0, 1, 2, 2, 0, 100, 1, 0, 15, 0, 0, '', 25, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rogue Wizard - At 15% HP - Flee'),
(474, 0, 2, 0, 61, 0, 100, 1, 0, 15, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rogue Wizard - At 15% HP - Say Line 0'),
(474, 0, 3, 0, 1, 0, 100, 0, 500, 1000, 600000, 600000, '', 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rogue Wizard - On Spawn - Cast Frost Armor'),
(474, 0, 4, 0, 4, 0, 35, 1, 0, 0, 0, 0, '', 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Rogue Wizard - On Aggro - Say Line 0');


-- Kitta Firewind (11072)
UPDATE `creature_template_addon` SET `emote`='69' WHERE  `entry`=11072;
UPDATE `creature_addon` SET `emote`='69' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=11072);


-- Servant of Azora (1949)
UPDATE `creature` SET `spawndist`='2', `MovementType`='1' WHERE  `id`='1949' AND NOT `MovementType`='2';


-- Informa a Thomas (71)
DELETE FROM `quest_poi` WHERE `QuestID`=71;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(71, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=71;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(71, 0, 0, -9610, -1032, 24330);


-- Armadura de pa�o y cuero (59)
DELETE FROM `quest_poi` WHERE `QuestID`=59;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(59, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=59;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(59, 0, 0, -9532, -1222, 24330);


-- James Clark (13159)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=13159;


-- El Coleccionista (123)
DELETE FROM `quest_poi` WHERE `QuestID`=123;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(123, 0, 0, -1, 0, 0, 0, 30, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=123;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(123, 0, 0, -9468, -1306, 24330);


-- La persecuci�n (147)
DELETE FROM `creature_queststarter` WHERE `id`=240 AND `quest`=147;


-- Hogger (448)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=448;


-- Minion of Hogger (46932)
DELETE FROM `smart_scripts` WHERE `entryorguid`=46932;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(46932, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Minion of Hogger - On Spawn - Set Random Movement'),
(46932, 0, 1, 0, 1, 0, 100, 1, 60000, 60000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Minion of Hogger - OCC for 60 seg - Despawn Instant');


-- Dead Thief (42259)
UPDATE `creature` SET `unit_flags`='33554432' WHERE  `guid`=130336;


-- Las escrituras de Cejade (184)
DELETE FROM `quest_poi` WHERE `QuestID`=184;
INSERT INTO `quest_poi` (`QuestID`, `BlobIndex`, `Idx1`, `ObjectiveIndex`, `QuestObjectiveID`, `QuestObjectID`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `WorldEffectID`, `PlayerConditionID`, `WoDUnk1`, `AlwaysAllowMergingBlobs`, `VerifiedBuild`) VALUES 
(184, 0, 0, -1, 0, 0, 0, 39, 0, 0, 1, 0, 0, 0, 0, 24330);

DELETE FROM `quest_poi_points` WHERE `QuestID`=184;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(184, 0, 0, -9852, 918, 24330);


-- Eastvale Peasant (11328)
UPDATE `creature_template_addon` SET `bytes2`='1', `emote`='234' WHERE  `entry`=11328;
UPDATE `creature_addon` SET `bytes2`='1', `emote`='234' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=11328);
UPDATE `creature` SET `modelid`='3629' WHERE  `id`=11328;


-- Bundle of Wood (176793)
UPDATE `gameobject` SET `spawntimesecs`='60' WHERE  `id`=176793;


-- Solomon (798)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='798' AND NOT `MovementType`='2';


-- Kevin (799)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='799' AND NOT `MovementType`='2';


-- Kyle (800)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='800' AND NOT `MovementType`='2';


-- Eric (801)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='801' AND NOT `MovementType`='2';


-- Jay (802)
UPDATE `creature` SET `spawndist`='10', `MovementType`='1' WHERE  `id`='802' AND NOT `MovementType`='2';


-- Rallic Finn (1198)
UPDATE `creature_template_addon` SET `bytes2`='2', `emote`='376' WHERE  `entry`=1198;


-- Morgan the Collector (473)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=473;

DELETE FROM `smart_scripts` WHERE `entryorguid`=473;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(473, 0, 0, 0, 67, 0, 100, 0, 3900, 6900, 0, 0, '', 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Morgan the Collector - Cast Backstab'),
(473, 0, 1, 0, 0, 0, 100, 0, 4000, 5000, 17900, 18700, '', 11, 1776, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Morgan the Collector - Cast Gouge');


-- Eastvale Lumberjack (1975)
UPDATE `creature` SET `spawndist`='3', `MovementType`='1' WHERE  `id`='1975' AND NOT `MovementType`='2';


-- Prowler (118)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='118' AND NOT `MovementType`='2';


-- Mountain Cottontail (49996)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='49996' AND NOT `MovementType`='2';


-- Gray Forest Wolf (1922)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='1922' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=1922;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(1922, 0, 0, 1, 1, 0, 100, 0, 30000, 600000, 120000, 600000, '', 4, 1018, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gray Forest Wolf - OOC - Play Sound'),
(1922, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 5, 393, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Gray Forest Wolf - Play Emote');


-- Mangy Wolf (525)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='525' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=525;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(525, 0, 0, 1, 1, 0, 100, 0, 30000, 600000, 120000, 600000, '', 4, 1018, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mangy Wolf - OOC - Play Sound'),
(525, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 5, 393, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Mangy Wolf - Play Emote');


-- Young Wolf (299)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='299' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=299;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(299, 0, 0, 1, 1, 0, 100, 0, 30000, 600000, 120000, 600000, '', 4, 1018, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Young Wolf - OOC - Play Sound'),
(299, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, '', 5, 393, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Young Wolf - Paly Emote'),
(299, 0, 2, 0, 11, 0, 100, 1, 0, 0, 0, 0, '', 11, 71764, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Young Wolf - On Spawn - Cast Disease');


-- Forest Spider (30)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='30' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=30;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(30, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 15000, '', 11, 11918, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Forest Spider - Cast Poison');


-- Longsnout (119)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='119' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=119;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(119, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, '', 11, 6268, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Longsnout - On Aggro - Cast Rushing Charge');


-- Stonetusk Boar (113)
UPDATE `creature` SET `spawndist`='15', `MovementType`='1' WHERE  `id`='113' AND NOT `MovementType`='2';

DELETE FROM `smart_scripts` WHERE `entryorguid`=113;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(113, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, '', 11, 6268, 0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0, 0, 0, 'Stonetusk Boar - On Aggro - Cast Rushing Charge');


-- Dockworker (6927)
UPDATE `creature_template_addon` SET `emote`='333' WHERE  `entry`=6927;
UPDATE `creature_addon` SET `emote`='333' WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id`=6927);

DELETE FROM `smart_scripts` WHERE `entryorguid`=6927;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6927, 0, 0, 0, 0, 0, 100, 0, 8500, 10500, 37100, 42100, '', 11, 8646, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Dockworker - Cast Snap Kick'),
(6927, 0, 1, 0, 4, 0, 35, 1, 0, 0, 0, 0, '', 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Dockworker - On Aggro - Say Line 0');


-- Dockmaster (6846)
UPDATE `creature` SET `spawntimesecs`='60' WHERE  `id`=6846;


-- Bodyguard (6866)
DELETE FROM `smart_scripts` WHERE `entryorguid`=6866;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param_string`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(6866, 0, 0, 0, 54, 0, 100, 1, 0, 0, 0, 0, '', 89, 5, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bodyguard - On Just Summoned - Set Random Movement'),
(6866, 0, 1, 0, 9, 0, 100, 0, 0, 8, 15800, 18300, '', 11, 66060, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bodyguard - On Close - Cast Sprint'),
(6866, 0, 2, 0, 0, 0, 100, 0, 5000, 7800, 16800, 17900, '', 11, 60842, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 'Bodyguard - Cast Expose Armor'),
(6866, 0, 3, 0, 1, 0, 100, 1, 60000, 60000, 0, 0, '', 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Bodyguard - OCC for 60 seg - Despawn Instant');

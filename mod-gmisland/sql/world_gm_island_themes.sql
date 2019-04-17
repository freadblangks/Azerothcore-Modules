/*
-- ###################################################################################### --
--  ____    __                                         ____                           
-- /\  _`\ /\ \__                  __                 /\  _`\                         
-- \ \,\L\_\ \ ,_\  __  __     __ /\_\     __      ___\ \ \/\_\    ___   _ __    __   
--  \/_\__ \\ \ \/ /\ \/\ \  /'_ `\/\ \  /'__`\  /' _ `\ \ \/_/_  / __`\/\`'__\/'__`\ 
--    /\ \L\ \ \ \_\ \ \_\ \/\ \L\ \ \ \/\ \L\.\_/\ \/\ \ \ \L\ \/\ \L\ \ \ \//\  __/ 
--    \ `\____\ \__\\/`____ \ \____ \ \_\ \__/.\_\ \_\ \_\ \____/\ \____/\ \_\\ \____\
--     \/_____/\/__/ `/___/> \/___L\ \/_/\/__/\/_/\/_/\/_/\/___/  \/___/  \/_/ \/____/
--                      /\___/ /\____/                                                
--                      \/__/  \_/__/          http://stygianthebest.github.io                                         
-- 
-- ###################################################################################### --
-- CORE MOD: GM ISLAND
-- NPC ID: 601035
-- 
-- This creates an NPC that will allow the player to change the theme around GM Island.
-- v2018-12-01 - Original script ported to AzerothCore module.
-- 
-- ###################################################################################### --
*/

USE stygian_world;

-- ######################################################--
--	GM Island Theminator - 601035 - Molten Giant
-- ######################################################--
SET @NPC_ENTRY := 601035;

DELETE FROM `creature` WHERE `id`=@NPC_ENTRY;
INSERT INTO `creature` (`id`, `map`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`) VALUES 
(@NPC_ENTRY, 1, 1, 1, 0, 0, 16253.8, 16234.9, 33.5163, 2.3098, 300, 0, 0, 53420, 0, 0, 0, 0, 0);


DELETE FROM `creature_template` WHERE `entry`=@NPC_ENTRY;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `Health_mod`, `Mana_mod`, `Armor_mod`, `RacialLeader`,`movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
(@NPC_ENTRY, 0, 0, 0, 0, 0, 12162, 0, 0, 0, 'Theme Manager', '|cff00ccffGMIsland Theminator|r', NULL, 0, 80, 80, 0, 35, 1, 1, 1.14286, 0.25, 1, 1000, 3000, 0, 0, 15, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 1, 10, 1, 1, 0, 0, 1, 0, 0, 'GMIsland_Theme_Generator', 0);

-- Dumping structure for table gmi_logs
DROP TABLE IF EXISTS `gmi_logs`;
CREATE TABLE IF NOT EXISTS `gmi_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

-- deck the halls with boughs of holly.. fa la la la la, la la la la.

-- Dumping structure for table gmi_templates
DROP TABLE IF EXISTS `gmi_templates`;
CREATE TABLE IF NOT EXISTS `gmi_templates` (
  `id` int(11) NOT NULL,
  `entry` int(11) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `pos_z` double NOT NULL,
  `pos_o` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table gmi_templates: ~284 rows (approximately)
INSERT INTO `gmi_templates` (`id`, `entry`, `pos_x`, `pos_y`, `pos_z`, `pos_o`) VALUES
	(1, 191790, 16223, 16271.4, 19.3186, 1.41464),
	(1, 178432, 1655.44, -4428.89, 16.9732, -1.85005),
	(1, 178431, 1655.85, -4430.66, 16.9859, -0.069813),
	(1, 178431, 1654.33, -4431.17, 16.9963, 1.78024),
	(1, 178432, 1652.83, -4431.79, 17.0255, 2.09439),
	(1, 178431, 1658.06, -4430.69, 17.509, 2.09439),
	(1, 178432, 1651.98, -4431.05, 19.2049, -0.872665),
	(1, 178431, 1623.72, -4411.58, 14.7421, 0.05236),
	(1, 178431, 1627.42, -4413.71, 15.5231, -2.87979),
	(1, 178431, 1621.82, -4412.34, 14.4458, 3.00197),
	(1, 178432, 1657.5, -4428.73, 17.0631, -2.84489),
	(1, 178431, 1656.75, -4428.1, 17.0543, -2.33874),
	(1, 178432, 1625.64, -4413.75, 15.2, -0.733038),
	(1, 178431, 1624.7, -4414.23, 15.0586, -1.50098),
	(1, 178432, 1650.13, -4433.25, 17.202, 0.314159),
	(1, 178431, 1650.48, -4434.14, 17.3595, -3.05433),
	(1, 178432, 1624.48, -4416.08, 14.9653, -2.30383),
	(1, 178431, 1626.17, -4410.95, 15.2034, -2.51327),
	(1, 178432, 1624.4, -4410.67, 14.8138, -0.10472),
	(1, 178431, 1623.56, -4413.39, 15.1786, -1.51844),
	(1, 178431, 1626.49, -4413.23, 15.3235, -2.89725),
	(1, 178431, 1624.7, -4414.3, 15.4715, -1.18682),
	(1, 178432, 1622.65, -4413.73, 14.6626, 2.63545),
	(1, 178432, -1206.55, -45.1777, 161.105, 2.33874),
	(1, 178432, -1208.87, -46.2314, 161.006, 2.02458),
	(1, 178431, -1205.85, -44.5672, 161.483, -0.017453),
	(1, 178431, -1208.1, -45.8046, 161.038, -2.30383),
	(1, 178431, -1206.9, -44.1168, 161.646, 0.733038),
	(1, 178431, -1207.38, -47.4854, 160.812, -1.309),
	(1, 178432, -1207.65, -43.361, 161.324, 3.00197),
	(1, 178431, -1209.7, -45.4058, 161.525, -1.58825),
	(1, 178432, -1229.53, 68.3677, 129.413, 2.72271),
	(1, 178431, -1230.64, 69.311, 129.46, -0.244346),
	(1, 178431, -1232.31, 68.0706, 129.567, -2.67035),
	(1, 178431, -1232.52, 69.204, 129.305, -2.19912),
	(1, 178432, -1229.18, 66.446, 129.198, -0.802851),
	(1, 178431, -1234.11, 66.96, 128.853, 0.488692),
	(1, 178432, -1231.19, 65.6161, 128.912, -0.959931),
	(1, 178432, 309.724, -4704.23, 11.3265, 1.37881),
	(1, 178431, 310.632, -4707.45, 11.3265, -1.85005),
	(1, 178431, 308.453, -4704.87, 11.3265, 2.80998),
	(1, 178432, 313.255, -4707.39, 11.3265, 1.69297),
	(1, 178432, 311.476, -4705.77, 11.3265, 0.15708),
	(1, 178431, 308.31, -4708.79, 11.3265, -2.02458),
	(1, 178431, 307.426, -4706.27, 11.3265, 1.71042),
	(1, 178431, 311.895, -4709.02, 11.3579, -0.645772),
	(1, 178432, 309.163, -4706.33, 11.3265, 1.37881),
	(1, 178432, -2324.34, -355.469, -8.95844, 2.86234),
	(1, 178431, -2323.67, -356.386, -8.9952, 0.174533),
	(1, 178432, -2326.6, -357.03, -8.8701, 2.82743),
	(1, 178431, -2326.26, -356.127, -8.88198, 0.174533),
	(1, 178924, 16254.5, 16282.3, 19.8892, 1.83051),
	(1, 178924, 16239.5, 16279.4, 19.8164, 2.11797),
	(1, 178669, 16234.5, 16275.8, 19.7678, 2.23185),
	(1, 178924, 16251.9, 16281.7, 19.8263, 1.7504),
	(1, 178669, 16245.7, 16280.8, 19.8298, 1.70328),
	(1, 178805, 16205.3, 16288.9, 12.4722, 1.4682),
	(1, 178432, 16207.5, 16286.9, 12.6194, 2.13579),
	(1, 178432, 16202.9, 16287.9, 11.8911, 0.492734),
	(1, 178431, 16205.2, 16286.6, 12.1623, 1.67711),
	(1, 178805, 16277.8, 16304.9, 12.9991, 3.3665),
	(1, 178805, 16251.8, 16274.7, 14.2524, 2.76175),
	(1, 178924, 16215.6, 16274.8, 20.3049, 0.907675),
	(1, 178924, 16217.7, 16273.2, 20.3049, 0.907675),
	(1, 178669, 16233.9, 16328.8, 20.2655, 4.64145),
	(1, 187191, 16227.8, 16276.4, 20.918, 1.99838),
	(1, 178924, 16212.8, 16279.4, 20.3003, 0.48513),
	(1, 187191, 16235.4, 16281.3, 20.9168, 3.71055),
	(1, 178669, 16253.7, 16326.5, 20.2691, 4.58805),
	(1, 178669, 16263.7, 16325.6, 20.2763, 4.63831),
	(1, 178669, 16268.7, 16318.2, 20.0123, 3.09186),
	(1, 187234, 16269, 16324.4, 20.3985, 0.219662),
	(1, 178669, 16243.9, 16327.7, 20.2691, 4.58805),
	(1, 178669, 16224.1, 16329.5, 20.2649, 4.64145),
	(1, 178669, 16212.9, 16304.7, 20.1761, 6.18791),
	(1, 178669, 16212.3, 16295.1, 20.1941, 6.24131),
	(1, 178924, 16263.7, 16287.3, 20.1164, 2.67403),
	(1, 178924, 16265, 16289.7, 20.1175, 2.67403),
	(1, 178669, 16268.2, 16308.2, 20.016, 3.09186),
	(1, 178669, 16267.2, 16298.4, 20.0314, 2.98505),
	(1, 178924, 16265.9, 16292.1, 20.1195, 2.88766),
	(1, 178924, 16262, 16285.4, 20.1196, 2.09126),
	(1, 178924, 16259.6, 16284.1, 19.9844, 2.14153),
	(1, 178669, 16214.3, 16314.4, 20.0839, 6.12822),
	(1, 178669, 16215.7, 16324, 20.0672, 6.12822),
	(1, 178924, 16229.1, 16272.3, 19.913, 1.78092),
	(1, 178669, 16212.2, 16285.5, 20.2141, 0.0115351),
	(1, 178924, 16214, 16276.9, 20.2906, 0.431723),
	(1, 178924, 16257.1, 16283, 19.9844, 1.83051),
	(1, 187234, 16223.2, 16271.4, 18.6115, 4.59885),
	(1, 187191, 16217.4, 16280, 20.9157, 3.69091),
	(1, 187191, 16247.1, 16285, 20.9251, 0.0168204),
	(1, 187191, 16256.6, 16287.3, 20.9235, 0.488059),
	(1, 187191, 16262.4, 16293.8, 20.9132, 1.27974),
	(1, 187191, 16264, 16303.4, 20.9202, 3.04767),
	(1, 187191, 16264.8, 16313.8, 20.9151, 1.47845),
	(1, 187191, 16260.7, 16323.2, 20.9253, 3.12386),
	(1, 187191, 16248.4, 16324, 20.9207, 3.08851),
	(1, 187191, 16235.8, 16325.2, 20.9218, 3.0571),
	(1, 187191, 16221.9, 16326.7, 20.9223, 4.65265),
	(1, 187191, 16217.8, 16314.3, 20.9047, 4.60003),
	(1, 187191, 16216.1, 16298.3, 20.9116, 6.13391),
	(1, 187193, 16215.9, 16269.4, 13.2259, 4.32925),
	(1, 187193, 16230.5, 16268.4, 13.2136, 5.0039),
	(1, 191790, 16216.6, 16280.2, 20.9241, 6.14155),
	(1, 191790, 16228.7, 16276.2, 20.9465, 2.70622),
	(1, 191790, 16246.7, 16284.1, 21.0949, 0.495928),
	(1, 191790, 16262.8, 16292.8, 21.1005, 2.00546),
	(1, 191790, 16265.6, 16313.5, 20.9332, 2.87569),
	(1, 191790, 16249, 16324.8, 21.16, 4.28076),
	(1, 191790, 16222.6, 16327.4, 21.2758, 2.99742),
	(1, 191790, 16215.3, 16298.9, 21.3055, 5.50912),
	(1, 187234, 16226.5, 16283, 26.7316, 4.59885),
	(1, 178924, 16225, 16283.5, 26.8472, 4.26035),
	(1, 178924, 16228.2, 16283, 26.906, 4.78814),
	(1, 178924, 16222.9, 16285.1, 26.8938, 3.80796),
	(1, 178924, 16221.3, 16287.3, 26.8896, 3.75769),
	(1, 178924, 16220.5, 16289.7, 26.871, 3.19927),
	(1, 178669, 16220.3, 16295.9, 26.9024, 6.27458),
	(1, 178669, 16220.6, 16305.9, 26.7412, 6.21803),
	(1, 178924, 16221, 16312.3, 26.7412, 6.21803),
	(1, 178924, 16221.2, 16315.1, 26.7412, 6.21803),
	(1, 178924, 16221.5, 16317.8, 26.7434, 6.11121),
	(1, 178669, 16227, 16319.2, 26.4496, 4.7187),
	(1, 178669, 16236.8, 16319.3, 26.4271, 4.7187),
	(1, 178669, 16246.8, 16318.7, 26.4271, 4.59854),
	(1, 178924, 16253.1, 16317.8, 26.585, 4.48779),
	(1, 178924, 16255.7, 16317, 26.5993, 4.34014),
	(1, 178924, 16258.3, 16316, 26.5993, 4.34014),
	(1, 178924, 16260, 16314.1, 26.5599, 3.41651),
	(1, 178924, 16259.9, 16311.5, 26.5599, 2.77798),
	(1, 178669, 16259, 16305.5, 26.4206, 3.03873),
	(1, 178924, 16258.3, 16299.1, 26.4206, 3.03873),
	(1, 178924, 16258.3, 16299.1, 26.4206, 3.03873),
	(1, 178924, 16258, 16296.3, 26.4206, 3.03873),
	(1, 178924, 16256.9, 16294.1, 26.2626, 2.31224),
	(1, 178669, 16250.8, 16293.2, 26.0634, 1.56218),
	(1, 178924, 16230.4, 16283.8, 26.6361, 2.18091),
	(1, 178669, 16239.7, 16289.6, 25.9645, 1.48741),
	(1, 178924, 16232.5, 16285.2, 26.4611, 2.18091),
	(1, 178924, 16234.1, 16287.3, 26.3705, 2.69063),
	(1, 178924, 16235.2, 16289.4, 26.2586, 2.69063),
	(1, 178924, 16220.2, 16272.1, 18.3019, 1.31147),
	(1, 178924, 16226.2, 16271.6, 18.1644, 1.77878),
	(1, 178432, 16228.5, 16267.9, 13.1705, 1.25964),
	(1, 178432, 16231.8, 16269.5, 13.3606, 3.2192),
	(1, 178432, 16231.2, 16266.8, 13.3162, 2.16991),
	(1, 178432, 16217.8, 16269.7, 13.1126, 2.3105),
	(1, 178432, 16215.2, 16267.7, 13.3877, 1.60364),
	(1, 178432, 16214.4, 16270.7, 13.1082, 6.07727),
	(1, 178431, 16216.7, 16268.1, 13.2775, 2.17777),
	(1, 178431, 16229.7, 16266.7, 13.2573, 1.38451),
	(1, 178431, 16231.9, 16268.2, 13.2981, 2.91604),
	(1, 178431, 16214.2, 16268.9, 13.3234, 0.515078),
	(1, 178432, 16206, 16291.5, 12.9644, 4.34275),
	(1, 178431, 16208, 16290, 13.0779, 3.5982),
	(1, 178431, 16203.3, 16290.8, 12.3909, 5.6795),
	(1, 178432, 16253.2, 16272, 14.7054, 2.00227),
	(1, 178432, 16254.4, 16276.1, 14.5916, 3.69166),
	(1, 178432, 16249.3, 16275.4, 13.9228, 5.74862),
	(1, 178431, 16251.7, 16277.1, 14.0479, 4.90275),
	(1, 178431, 16250.5, 16272, 14.352, 0.63568),
	(1, 178431, 16254.7, 16273.9, 14.7532, 2.7539),
	(1, 178432, 16277.2, 16302.3, 13.0439, 1.3551),
	(1, 178432, 16275.6, 16307.8, 13.2572, 5.75569),
	(1, 178432, 16281, 16305.5, 12.6462, 3.84089),
	(1, 178431, 16278.3, 16307.8, 12.9428, 4.32234),
	(1, 178431, 16280, 16303.2, 12.7875, 2.59289),
	(1, 178431, 16275.3, 16305.3, 13.273, 1.05901),
	(2, 190556, 16217, 16268.4, 13.248, 1.38763),
	(2, 190556, 16229.6, 16267.9, 13.1999, 1.32087),
	(2, 180124, 16237, 16304, 13.1752, 1.53815),
	(2, 190866, 16214.6, 16282.9, 22.3916, 0.134406),
	(2, 190866, 16252.7, 16284.2, 22.2996, 1.72562),
	(2, 190866, 16241.2, 16282.4, 22.2249, 1.93611),
	(2, 190866, 16232, 16277.2, 22.3237, 2.25027),
	(2, 190866, 16225, 16274.1, 22.3163, 1.62588),
	(2, 190866, 16218.1, 16276.2, 22.4057, 0.988134),
	(2, 190866, 16225.1, 16271.3, 12.9964, 1.47115),
	(2, 190866, 16221.2, 16271.7, 12.9677, 1.01562),
	(2, 183497, 16215.1, 16275.6, 12.8339, 0.98028),
	(2, 183497, 16212.6, 16289.7, 13.5186, 0.235722),
	(2, 183497, 16213.5, 16307.6, 15.0741, 0.0495825),
	(2, 183497, 16215.6, 16322.4, 16.9149, 5.97698),
	(2, 183497, 16238.1, 16328.8, 13.6317, 4.56484),
	(2, 183497, 16256.2, 16326.1, 12.9227, 4.56484),
	(2, 183497, 16268.4, 16314.9, 14.1204, 2.99561),
	(2, 183497, 16267.1, 16298.4, 15.0662, 2.99561),
	(2, 183497, 16260.5, 16284.3, 14.8984, 1.97302),
	(2, 183497, 16230.3, 16273.2, 14.2913, 1.97302),
	(2, 183497, 16243.2, 16280.6, 14.5468, 1.96517),
	(2, 190865, 16214.9, 16321.9, 16.9317, 4.60568),
	(2, 190865, 16213.8, 16313.1, 15.9986, 4.57034),
	(2, 190865, 16212.7, 16303.6, 14.4389, 4.63317),
	(2, 190865, 16212.1, 16295.4, 14.2114, 4.58997),
	(2, 190865, 16212.2, 16287.9, 13.2871, 4.80596),
	(2, 190865, 16212.9, 16280.2, 12.6903, 4.80596),
	(2, 190865, 16238.8, 16328.4, 13.0484, 3.0498),
	(2, 190865, 16247.4, 16327.6, 12.9216, 3.0498),
	(2, 190865, 16256.1, 16326.8, 12.9228, 3.0498),
	(2, 190865, 16264.6, 16326, 13.2713, 3.10871),
	(2, 190865, 16268.9, 16319, 14.131, 1.51278),
	(2, 190865, 16268.4, 16310.6, 14.1452, 1.51278),
	(2, 190865, 16267.8, 16302.2, 14.683, 1.54419),
	(2, 190865, 16266.4, 16293.7, 14.9174, 1.34784),
	(2, 190865, 16262.9, 16286.3, 14.3144, 0.880532),
	(2, 190865, 16256.5, 16282.4, 15.0061, 0.197236),
	(2, 190865, 16248, 16281.2, 14.2046, 0.0519372),
	(2, 190865, 16239.6, 16278.8, 14.8391, 0.593862),
	(2, 190865, 16232.4, 16274.3, 14.0283, 0.621351),
	(2, 201869, 16215.8, 16296.1, 20.9194, 3.12133),
	(2, 201869, 16217, 16311.4, 20.9195, 3.01138),
	(2, 201869, 16219.6, 16326.8, 20.9225, 2.24795),
	(2, 201869, 16233.6, 16325.9, 20.9267, 1.5034),
	(2, 201869, 16243.3, 16324.6, 20.9216, 1.5034),
	(2, 201869, 16254, 16323.9, 20.9263, 1.5034),
	(2, 201869, 16265.4, 16313.7, 20.926, 6.20793),
	(2, 201869, 16265.6, 16322.2, 20.9205, 0.816178),
	(2, 201869, 16264, 16303.6, 20.9181, 6.22365),
	(2, 201869, 16262.5, 16293.8, 20.9154, 6.05871),
	(2, 201869, 16257.4, 16287.1, 20.928, 5.15158),
	(2, 201869, 16246.7, 16285.4, 20.9206, 4.77065),
	(2, 190745, 16223.6, 16274.5, 13.176, 4.64891),
	(2, 201869, 16216.7, 16279.8, 20.9258, 3.68288),
	(2, 201869, 16235.2, 16281, 20.9185, 5.22619),
	(2, 201869, 16229.6, 16268.5, 13.1692, 4.68269),
	(2, 201869, 16217, 16269, 13.2019, 4.68269),
	(3, 180124, 16236.4, 16304, 13.7197, 1.59393),
	(3, 183497, 16215.1, 16320.4, 16.5223, 6.17594),
	(3, 183497, 16212.1, 16296.5, 14.6872, 0.822669),
	(3, 183497, 16215.2, 16275.7, 12.8362, 1.18002),
	(3, 183497, 16231, 16272.2, 15.5677, 2.20104),
	(3, 183497, 16243.8, 16280.5, 14.9776, 2.0204),
	(3, 183497, 16259.6, 16284.5, 14.9912, 2.54269),
	(3, 183497, 16266.9, 16298.4, 15.0739, 3.04142),
	(3, 183497, 16268.3, 16315.7, 14.1108, 2.98644),
	(3, 183497, 16258.9, 16325.7, 12.9401, 4.60436),
	(3, 183497, 16236.8, 16327.9, 13.5066, 4.4512),
	(3, 190865, 16232, 16328.4, 14.0059, 3.04917),
	(3, 190865, 16239.2, 16327.6, 12.9952, 3.04917),
	(3, 190865, 16246.8, 16326.9, 12.922, 3.04917),
	(3, 190865, 16254.3, 16326.1, 12.9215, 3.04917),
	(3, 190865, 16263, 16325.3, 13.1495, 3.15913),
	(3, 190865, 16268.5, 16320.2, 14.0798, 1.58338),
	(3, 190865, 16267.9, 16311.5, 14.1386, 1.58338),
	(3, 190865, 16267.4, 16303.3, 14.6595, 1.58338),
	(3, 190865, 16266.2, 16294.5, 14.9792, 1.43415),
	(3, 190865, 16263, 16287.3, 14.2321, 0.88987),
	(3, 190865, 16256, 16282.8, 15.0032, 0.355799),
	(3, 190865, 16247.2, 16281.4, 14.2761, 0.175158),
	(3, 190865, 16239.1, 16279.2, 14.9195, 0.6032),
	(3, 190865, 16232.9, 16274.8, 14.2983, 0.6032),
	(3, 190865, 16212.9, 16281.3, 12.7466, 4.95038),
	(3, 190865, 16212.7, 16289.7, 13.5219, 4.81294),
	(3, 190865, 16212.4, 16299, 14.1765, 4.59303),
	(3, 190865, 16213.7, 16308.4, 15.1729, 4.59303),
	(3, 190865, 16214.7, 16316, 15.9668, 4.59303),
	(3, 190865, 16215.8, 16324.2, 17.5043, 4.59303),
	(3, 190866, 16265, 16298.1, 22.2682, 3.11412),
	(3, 190866, 16261.7, 16289.1, 22.3871, 2.83138),
	(3, 190866, 16252.6, 16284.1, 22.2716, 1.85356),
	(3, 190866, 16240.9, 16282.3, 22.2488, 1.84963),
	(3, 190866, 16232, 16277.2, 22.2949, 2.20306),
	(3, 190866, 16214.7, 16283, 22.4283, 0.19244),
	(3, 190866, 16217.9, 16276, 22.2244, 0.926788),
	(3, 190866, 16225.2, 16274.2, 22.3858, 1.6415),
	(3, 190556, 16216.2, 16268.2, 13.2973, 1.48677),
	(3, 190556, 16229.8, 16267.6, 13.2742, 1.4318),
	(3, 192289, 16215.4, 16298.4, 21.1135, 3.02773),
	(3, 192289, 16216.9, 16311.5, 20.9227, 3.02773),
	(3, 192289, 16219.9, 16326.6, 20.9223, 2.35386),
	(3, 192289, 16233.2, 16325.7, 20.9239, 1.48206),
	(3, 192289, 16249.1, 16324.4, 20.9268, 1.51741),
	(3, 192289, 16265.5, 16312.9, 20.9293, 6.2298),
	(3, 192289, 16265.8, 16322.4, 20.9236, 0.676252),
	(3, 192289, 16263.9, 16302.9, 20.92, 6.25258),
	(3, 192289, 16262.3, 16293.8, 20.9107, 6.0523),
	(3, 192289, 16246.6, 16284.6, 20.9272, 4.87029),
	(3, 192289, 16257, 16287.4, 20.9259, 5.21193),
	(3, 190745, 16223.8, 16275.5, 13.1758, 4.59932),
	(3, 192289, 16217, 16279.7, 20.9239, 3.60344),
	(3, 192289, 16229.9, 16268.3, 13.1912, 4.81138),
	(3, 192289, 16216.4, 16268.9, 13.2395, 4.56162),
	(3, 192289, 16235.2, 16281.4, 20.9133, 5.27476),
	(4, 192712, 16258.3, 16298.5, 22.8146, 2.9897),
	(4, 192712, 16258.5, 16300.4, 22.8146, 2.9897),
	(4, 192712, 16258.7, 16302.4, 22.8146, 2.9897),
	(4, 192712, 16258.9, 16304, 22.8146, 2.9897),
	(4, 192712, 16259.1, 16305.8, 22.8146, 2.9897),
	(4, 192712, 16259.4, 16307.5, 22.8146, 2.9897),
	(4, 192712, 16259.6, 16309.4, 22.8146, 2.9897),
	(4, 192712, 16259.8, 16311, 22.8146, 2.9897),
	(4, 192712, 16260, 16312.6, 22.8146, 2.9897),
	(4, 192712, 16260.2, 16314.7, 22.8146, 3.03289),
	(4, 192712, 16259.5, 16315.8, 22.8146, 4.70579),
	(4, 192712, 16257.6, 16316.3, 22.8146, 4.70579),
	(4, 192712, 16256.1, 16316.6, 22.8146, 4.70579),
	(4, 192712, 16254.5, 16317, 22.8146, 4.70579),
	(4, 192712, 16252.6, 16317.4, 22.8152, 4.70579),
	(4, 192712, 16250.5, 16317.9, 22.8152, 4.70579),
	(4, 192712, 16248.4, 16318.3, 22.8152, 4.70579),
	(4, 192712, 16246.5, 16318.5, 22.8152, 4.70579),
	(4, 192712, 16244.5, 16318.8, 22.8152, 4.70579),
	(4, 192712, 16242.3, 16319.1, 22.8152, 4.70579),
	(4, 192712, 16240.1, 16319.3, 22.8152, 4.70579),
	(4, 192712, 16238, 16319.4, 22.8152, 4.70579),
	(4, 192712, 16235.8, 16319.5, 22.8143, 4.70579),
	(4, 192712, 16234, 16319.6, 22.8143, 4.70579),
	(4, 192712, 16232, 16319.6, 22.8143, 4.70579),
	(4, 192712, 16230.4, 16319.6, 22.8157, 4.70579),
	(4, 192712, 16228.5, 16319.5, 22.8157, 4.70579),
	(4, 192712, 16227, 16319.5, 22.8157, 4.70579),
	(4, 192712, 16225.1, 16319.4, 22.8157, 4.70579),
	(4, 192712, 16223.8, 16319.4, 22.8157, 4.70579),
	(4, 192712, 16222.4, 16319.4, 22.8157, 4.65474),
	(4, 192712, 16221.2, 16318.2, 22.8148, 6.24516),
	(4, 192712, 16221.2, 16316.7, 22.8148, 6.24516),
	(4, 192712, 16221.1, 16314.8, 22.8148, 6.24516),
	(4, 192712, 16221, 16313, 22.8148, 6.24516),
	(4, 192712, 16220.9, 16311.2, 22.8148, 6.24516),
	(4, 192712, 16220.6, 16309.1, 22.8148, 6.24516),
	(4, 192712, 16220.5, 16307, 22.8148, 6.24516),
	(4, 192712, 16220.4, 16305.2, 22.8148, 6.24516),
	(4, 192712, 16220.3, 16303.2, 22.8148, 6.24516),
	(4, 192712, 16220.1, 16301, 22.8143, 6.17055),
	(4, 192712, 16220, 16298.8, 22.8148, 6.17055),
	(4, 192712, 16220.7, 16297, 22.8138, 1.46209),
	(4, 192712, 16221, 16287.7, 22.8137, 0.448928),
	(4, 192712, 16235.2, 16289, 22.8139, 2.54987),
	(4, 192712, 16234.1, 16287.3, 22.8138, 2.52631),
	(4, 192712, 16233, 16285.7, 22.8136, 2.38493),
	(4, 192712, 16231.7, 16284.6, 22.815, 2.27105),
	(4, 192712, 16230.2, 16283.4, 22.815, 2.10219),
	(4, 192712, 16221, 16296.9, 22.8141, 6.13128),
	(4, 192712, 16220.7, 16295.1, 22.8141, 6.13521),
	(4, 185476, 7456.24, -3128.57, 410.409, -2.00713),
	(4, 187988, 4172.34, 1165.87, 5.45043, 3.12414),
	(4, 192712, 16220.4, 16293.3, 22.8149, 6.19412),
	(4, 192712, 16220.4, 16291.1, 22.8152, 6.26873),
	(4, 192712, 16220.6, 16289, 22.8152, 0.0680109),
	(4, 192712, 16221.6, 16286.7, 22.8152, 0.492126),
	(4, 192712, 16222.8, 16284.8, 22.8317, 0.82592),
	(4, 193562, 16216.4, 16274.8, 12.9101, 0.42537),
	(4, 193562, 16214.3, 16277.3, 12.771, 0.42537),
	(4, 193562, 16213.1, 16279.9, 12.6811, 0.0342414),
	(4, 193562, 16212.8, 16283.7, 12.8679, 0.0342414),
	(4, 193562, 16212.6, 16287.9, 13.3241, 4.82832),
	(4, 193562, 16212.6, 16291.5, 13.7175, 4.82832),
	(4, 193562, 16212.5, 16294.3, 14.1034, 4.82832),
	(4, 193562, 16212.8, 16298.6, 14.1254, 4.82832),
	(4, 193562, 16213.1, 16303.1, 14.2568, 4.82832),
	(4, 193562, 16213.2, 16307, 15.0282, 4.82832),
	(4, 193562, 16213.7, 16310.1, 15.5273, 4.6194),
	(4, 193562, 16213.9, 16314.2, 16.0872, 4.77726),
	(4, 193562, 16214.5, 16318.5, 16.4101, 4.57934),
	(4, 193562, 16215, 16322.3, 17.0066, 4.57934),
	(4, 193562, 16233, 16328.9, 13.8423, 3.17819),
	(4, 193562, 16236.9, 16328.5, 13.1016, 3.02033),
	(4, 193562, 16240.6, 16328.1, 12.9573, 3.02033),
	(4, 193562, 16244.3, 16327.9, 12.9248, 3.02033),
	(4, 193562, 16248.1, 16327.4, 12.9203, 3.02033),
	(4, 193562, 16252.2, 16326.9, 12.9201, 3.02033),
	(4, 193562, 16255.9, 16326.3, 12.9218, 3.02033),
	(4, 193562, 16259.2, 16326, 12.9459, 3.09808),
	(4, 193562, 16262.4, 16325.8, 13.0867, 3.09808),
	(4, 193562, 16265.9, 16325.5, 13.4394, 2.94022),
	(4, 193562, 16269.4, 16323.6, 13.9351, 1.50608),
	(4, 193562, 16269.2, 16319.6, 14.1297, 1.50608),
	(4, 193562, 16268.7, 16315.6, 14.1078, 1.66316),
	(4, 193562, 16268.7, 16311.6, 14.0913, 1.5053),
	(4, 193562, 16268.1, 16307.3, 14.2566, 1.5053),
	(4, 193562, 16267.6, 16303.1, 14.6479, 1.5053),
	(4, 193562, 16267.3, 16298.8, 15.0288, 1.5053),
	(4, 193562, 16266.8, 16295.2, 15.1398, 1.28224),
	(4, 193562, 16265.7, 16291.6, 14.5288, 2.21451),
	(4, 193562, 16263.8, 16287.9, 14.203, 2.24593),
	(4, 193562, 16261.2, 16285, 14.7734, 1.91213),
	(4, 193562, 16257.9, 16283.1, 15.1301, 1.77861),
	(4, 193562, 16253.5, 16282, 14.602, 1.71186),
	(4, 193562, 16249, 16281.3, 14.1584, 1.81003),
	(4, 193562, 16245.1, 16280.9, 14.3523, 1.41655),
	(4, 193562, 16241.3, 16279.8, 14.6462, 1.64431),
	(4, 193562, 16237.7, 16277.9, 14.9922, 1.82103),
	(4, 193562, 16231.2, 16273.4, 13.4195, 2.02916),
	(4, 193562, 16234.5, 16275.6, 14.6212, 1.78176),
	(4, 191613, 16215.9, 16271.1, 13.074, 2.47526),
	(4, 191613, 16230.3, 16270, 13.1587, 3.72405),
	(4, 2870, 16215, 16322.6, 17.0847, 6.20433),
	(4, 2870, 16214.7, 16318.5, 16.3414, 6.20433),
	(4, 2870, 16214, 16314.2, 16.0662, 6.20433),
	(4, 2870, 16213.7, 16310.3, 15.5654, 6.20433),
	(4, 2870, 16213.4, 16307, 14.9473, 6.20433),
	(4, 2870, 16213.1, 16303, 14.2225, 6.20433),
	(4, 2870, 16212.8, 16298.5, 14.1287, 6.20433),
	(4, 2870, 16212.6, 16294.6, 14.1276, 6.20433),
	(4, 2870, 16212.7, 16291.6, 13.7096, 6.23339),
	(4, 2870, 16212.7, 16287.9, 13.3294, 6.23339),
	(4, 2870, 16212.8, 16283.7, 12.8726, 6.19334),
	(4, 2870, 16213.1, 16279.9, 12.6823, 0.185827),
	(4, 2870, 16214.4, 16277.1, 13.2762, 0.265152),
	(4, 2870, 16216.5, 16274.7, 12.9365, 0.618581),
	(4, 2870, 16233.3, 16328.8, 13.7551, 4.61155),
	(4, 2870, 16236.8, 16328.5, 13.1096, 4.61155),
	(4, 2870, 16240.6, 16328.1, 12.9566, 4.61155),
	(4, 2870, 16244.3, 16327.7, 12.9231, 4.61155),
	(4, 2870, 16248.2, 16327.5, 12.9201, 4.57306),
	(4, 2870, 16252.2, 16327, 12.9201, 4.57306),
	(4, 2870, 16255.9, 16326.4, 12.9232, 4.57306),
	(4, 2870, 16259.3, 16325.9, 12.9499, 4.57306),
	(4, 2870, 16262.5, 16325.8, 13.0894, 4.67673),
	(4, 2870, 16266.1, 16325.4, 13.4708, 4.55892),
	(4, 2870, 16269.4, 16323.5, 13.9405, 3.01483),
	(4, 2870, 16269.1, 16319.5, 14.1329, 3.01483),
	(4, 2870, 16268.8, 16315.5, 14.1071, 3.01483),
	(4, 2870, 16268.6, 16311.6, 14.1002, 3.01483),
	(4, 2870, 16268, 16307.2, 14.2672, 3.01483),
	(4, 2870, 16267.5, 16302.9, 14.6701, 3.01483),
	(4, 2870, 16267.2, 16298.7, 15.0369, 3.08944),
	(4, 2870, 16266.7, 16295.2, 15.1397, 2.90095),
	(4, 2870, 16265.8, 16291.6, 14.5435, 2.90095),
	(4, 2870, 16263.9, 16288, 14.2045, 2.72031),
	(4, 2870, 16261.3, 16284.9, 14.7526, 2.18624),
	(4, 2870, 16257.8, 16283, 15.1147, 1.95847),
	(4, 2870, 16253.5, 16281.8, 14.5806, 1.78568),
	(4, 2870, 16249.1, 16281.2, 14.1304, 1.66787),
	(4, 2870, 16245.1, 16280.6, 14.3211, 1.79746),
	(4, 2870, 16241.3, 16279.6, 14.6389, 1.83281),
	(4, 2870, 16237.7, 16277.7, 14.9841, 2.24907),
	(4, 2870, 16234.6, 16275.3, 14.6087, 2.22943),
	(4, 2870, 16231.3, 16273.2, 13.4216, 2.12733),
	(4, 188344, 16226.6, 16269.2, 15.0296, 1.42047),
	(4, 188344, 16219.7, 16269.8, 14.9884, 1.49116),
	(4, 183771, 16230.3, 16270, 13.1587, 3.72405),
	(4, 183771, 16215.9, 16271.1, 13.074, 2.47526),
	(4, 185039, 16261.2, 16301, 20.873, 6.20196),
	(4, 185039, 16262, 16317.3, 20.8589, 1.0796),
	(4, 185039, 16235.4, 16321.3, 20.8609, 1.62153),
	(4, 185039, 16219.3, 16318.5, 20.876, 3.20018),
	(4, 185039, 16217.7, 16295.5, 20.8769, 3.42322),
	(4, 185039, 16238.6, 16287.9, 20.886, 4.99794),
	(4, 185039, 16250.6, 16290.5, 20.8727, 4.76232),
	(4, 187988, 16265.1, 16298.2, 22.2395, 6.27535),
	(4, 187988, 16261.9, 16289, 22.2042, 5.76092),
	(4, 187988, 16252.5, 16284, 22.2028, 4.92525),
	(4, 187988, 16240.9, 16282.2, 22.1735, 5.15538),
	(4, 187988, 16232.1, 16277.1, 22.2248, 5.4287),
	(4, 187988, 16214.5, 16283, 22.2609, 0.254281),
	(4, 187988, 16218.2, 16276, 22.319, 0.93758),
	(4, 187988, 16224.8, 16273.4, 22.435, 1.5227),
	(4, 191790, 16226.6, 16269.1, 15.0201, 1.81801),
	(4, 185476, 16224.8, 16281.8, 20.8557, 0.667404),
	(4, 191790, 16219.7, 16269.8, 14.9956, 1.45672),
	(4, 178427, 16226.5, 16269.1, 13.0976, 1.51092),
	(4, 178427, 16219.6, 16269.7, 13.0681, 1.51092),
	(4, 192712, 16258.1, 16296.7, 22.8146, 2.9897),
	(4, 192712, 16257.9, 16295.3, 22.8146, 2.9897),
	(4, 192712, 16257.8, 16294.8, 22.8146, 3.13578),
	(4, 192712, 16256.8, 16293.6, 22.815, 1.62782),
	(4, 192712, 16255, 16293.4, 22.8136, 1.62389),
	(4, 192712, 16253, 16293.3, 22.8136, 1.62389),
	(4, 192712, 16251, 16293.1, 22.8136, 1.62389),
	(4, 192712, 16249, 16293, 22.8136, 1.62389),
	(4, 192712, 16247.1, 16292.9, 22.8136, 1.62389),
	(4, 193042, 16223.6, 16275.1, 13.1761, 4.62974);


-- Dumping structure for table gmi_themes
DROP TABLE IF EXISTS `gmi_themes`;
CREATE TABLE IF NOT EXISTS `gmi_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `available` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table gmi_themes: ~2 rows (approximately)
INSERT INTO `gmi_themes` (`id`, `name`, `available`) VALUES
	(1, 'Merry Christmas', 1),
	(2, 'For the Alliance!', 1),
	(3, 'For the Horde!', 1),
	(4, 'Khadgar\'s Essence', 1);
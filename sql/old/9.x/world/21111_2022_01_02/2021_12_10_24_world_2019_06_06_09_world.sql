-- 
UPDATE `creature` SET `spawndist`=0 WHERE `id`  IN (23496) AND `guid` IN (110007);
DELETE FROM `creature` WHERE `id`  IN (23501) AND `guid` IN (110008, 110069, 110105, 110149, 110192, 110193, 110194, 110195, 110196, 110217, 110220, 110221, 110222, 110284, 110297, 110310, 110313, 110314, 110317, 110365, 110368, 110375, 110385, 110391, 110400, 110401, 110445, 110466, 110467);
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(110008, 23501, 530, 0, 0, '0', 0, 0, 0, -4827.49, 414.771, 47.3922, 3.16906, 180, 10, 0, 5409, 1540, 1),
(110069, 23501, 530, 0, 0, '0', 0, 0, 0, -4843.97, 498.238, 51.7803, 3.07874, 180, 10, 0, 5409, 1540, 1),
(110105, 23501, 530, 0, 0, '0', 0, 0, 0, -4812.46, 473.837, 44.6002, 4.25291, 180, 10, 0, 5409, 1540, 1),
(110149, 23501, 530, 0, 0, '0', 0, 0, 0, -4844.75, 323.996, 55.9539, 4.10997, 180, 10, 0, 5409, 1540, 1),
(110192, 23501, 530, 0, 0, '0', 0, 0, 0, -4874.29, 238.101, 50.087, 5.07758, 180, 10, 0, 5409, 1540, 1),
(110193, 23501, 530, 0, 0, '0', 0, 0, 0, -4873.55, 133.787, 36.4991, 3.79739, 180, 10, 0, 5409, 1540, 1),
(110194, 23501, 530, 0, 0, '0', 0, 0, 0, -4859.36, 614.36, 67.2186, 3.51717, 180, 10, 0, 5409, 1540, 1),
(110195, 23501, 530, 0, 0, '0', 0, 0, 0, -4856.61, 673.425, 57.6788, 3.51717, 180, 10, 0, 5409, 1540, 1),
(110196, 23501, 530, 0, 0, '0', 0, 0, 0, -4922.75, 778.553, 56.5002, 4.24698, 180, 10, 0, 5409, 1540, 1),
(110217, 23501, 530, 0, 0, '0', 0, 0, 0, -5259.8, 556.541, 46.7084, 5.73217, 180, 10, 0, 5409, 1540, 1),
(110220, 23501, 530, 0, 0, '0', 0, 0, 0, -5271.19, 738.246, 36.4805, 5.73217, 180, 10, 0, 5409, 1540, 1),
(110221, 23501, 530, 0, 0, '0', 0, 0, 0, -4923.05, 86.6896, 49.9752, 5.87825, 180, 10, 0, 5409, 1540, 1),
(110222, 23501, 530, 0, 0, '0', 0, 0, 0, -4894.09, 39.4801, 44.6907, 4.0679, 180, 10, 0, 5409, 1540, 1),
(110284, 23501, 530, 0, 0, '0', 0, 0, 0, -5133.79, -161.02, 47.5341, 1.32293, 180, 10, 0, 5409, 1540, 1),
(110297, 23501, 530, 0, 0, '0', 0, 0, 0, -5206.6, -127.65, 65.117, 2.47475, 180, 10, 0, 5409, 1540, 1),
(110310, 23501, 530, 0, 0, '0', 0, 0, 0, -5234.86, -61.5226, 55.3853, 0.126405, 180, 10, 0, 5409, 1540, 1),
(110313, 23501, 530, 0, 0, '0', 0, 0, 0, -5248.36, -24.4979, 49.3864, 1.67364, 180, 10, 0, 5409, 1540, 1),
(110314, 23501, 530, 0, 0, '0', 0, 0, 0, -5164.44, -125.322, 64.6157, 0.409143, 180, 10, 0, 5409, 1540, 1),
(110317, 23501, 530, 0, 0, '0', 0, 0, 0, -5272.26, 103.414, 37.0954, 1.63436, 180, 10, 0, 5409, 1540, 1),
(110365, 23501, 530, 0, 0, '0', 0, 0, 0, -5303.71, 125.254, 34.5261, 1.29665, 180, 10, 0, 5409, 1540, 1),
(110368, 23501, 530, 0, 0, '0', 0, 0, 0, -5359.14, 223.231, 51.1004, 5.94071, 180, 10, 0, 5409, 1540, 1),
(110375, 23501, 530, 0, 0, '0', 0, 0, 0, -5318.07, 257.106, 58.1337, 0.728789, 180, 10, 0, 5409, 1540, 1),
(110385, 23501, 530, 0, 0, '0', 0, 0, 0, -5324.01, 305.984, 57.2987, 0.738214, 180, 10, 0, 5409, 1540, 1),
(110391, 23501, 530, 0, 0, '0', 0, 0, 0, -5243.76, 425.19, 63.9083, 5.35244, 180, 10, 0, 5409, 1540, 1),
(110400, 23501, 530, 0, 0, '0', 0, 0, 0, -5291.45, 457.516, 46.3174, 5.2739, 180, 10, 0, 5409, 1540, 1),
(110401, 23501, 530, 0, 0, '0', 0, 0, 0, -5241.74, 598.91, 54.4103, 0.33374, 180, 10, 0, 5409, 1540, 1),
(110445, 23501, 530, 0, 0, '0', 0, 0, 0, -5116.07, 782.035, 56.6409, 5.75563, 180, 10, 0, 5409, 1540, 1),
(110466, 23501, 530, 0, 0, '0', 0, 0, 0, -5028.97, 817.793, 50.8939, 5.15716, 180, 10, 0, 5409, 1540, 1),
(110467, 23501, 530, 0, 0, '0', 0, 0, 0, -4991.6, 808.653, 60.592, 4.74484, 180, 10, 0, 5409, 1540, 1);

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=23501;
DELETE FROM `smart_scripts` WHERE `entryorguid`=23501 AND `source_type`=0;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(23501,0,0,0,0,0,100,0,4000,8000,8000,12000,11,17008,0,0,0,0,0,2,0,0,0,0,0,0,0,"Netherwing Ray - In Combat - Cast 'Drain Mana'"),
(23501,0,1,0,0,0,100,0,5000,10000,7000,12000,11,35334,0,0,0,0,0,2,0,0,0,0,0,0,0,"Netherwing Ray - In Combat - Cast 'Nether Shock'"),
(23501,0,2,0,0,0,100,0,3000,8000,17000,22000,11,36659,0,0,0,0,0,2,0,0,0,0,0,0,0,"Netherwing Ray - In Combat - Cast 'Tail Sting'");

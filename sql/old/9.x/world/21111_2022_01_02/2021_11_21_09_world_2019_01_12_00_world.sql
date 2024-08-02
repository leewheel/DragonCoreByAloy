-- 
DELETE FROM `creature` WHERE `guid` IN (48307,78199,78200,78201,78202,78203,78204,78205);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`) VALUES
(48307, 22982, 530, '0', 0, 0, 1, 2522.85, 7322.39, 373.437, 6.27002, 300, 0, 0, 6986, 0, 0),
(78199, 22982, 530, '0', 0, 0, 1, 2514.37, 7354.88, 380.734, 2.950928, 300, 0, 0, 6986, 0, 0),
(78200, 22982, 530, '0', 0, 0, 1, 2530.93, 7333.36, 373.445, 4.722, 300, 0, 0, 6986, 0, 0),
(78201, 23257, 530, '0', 0, 0, 1, 2496.04711, 7353.0825, 380.2784, 5.570216, 300, 0, 0, 0, 0, 0),
(78202, 23257, 530, '0', 0, 0, 1, 2512.2768, 7360.9584, 380.725, 4.072401, 300, 0, 0, 0, 0, 0),
(78203, 23257, 530, '0', 0, 0, 1, 2544.3986, 7335.6625, 373.4241, 4.288366, 300, 0, 0, 0, 0, 0),
(78204, 23257, 530, '0', 0, 0, 1, 2538.2683, 7312.6347, 373.4573, 2.076854, 300, 0, 0, 0, 0, 0),
(78205, 23257, 530, '0', 0, 0, 1, 2509.468, 7337.314, 376.872, 5.519256, 300, 0, 0, 0, 0, 0);

UPDATE `creature` SET `position_x`=2507.118, `position_y`=7363.662, `position_z`=380.368, `orientation`=5.350242 WHERE `guid`=48166;
UPDATE `creature` SET `position_x`=2547.075, `position_y`=7330.514, `position_z`=373.422, `orientation`=3.956510 WHERE `guid`=44255;  
UPDATE `creature` SET `position_x`=2494.301, `position_y`=7350.166, `position_z`=380.239, `orientation`=5.814281 WHERE `guid`=44256;  
UPDATE `creature` SET `position_x`=2492.5161, `position_y`=7316.512, `position_z`=369.3635, `orientation`=3.225905 WHERE `guid`=79497;  

DELETE FROM `gameobject_addon` WHERE `guid` IN (27738,27739,27740,27741,27746,27747,27748,27749,27758,27759,27760,27761,27774,27775,27776,27777);
DELETE FROM `gameobject` WHERE `id` IN (185872,185948,185873,185949,185874,185950,185951,185875);
DELETE FROM `gameobject` WHERE `guid` IN (6693,6695,6697,6698,6702,6703,6706,6707,6709,6711,6713,6714,6715,6723,6724,6727,6729,6732,6733,6738,6739,6746,6747,6750,6752,6754,6756,6757,6763,6764,6765,6766,6774,6775,6780,6787,6789,6791,6795,6798,6799,6801,6804,6806,6807,6812,6814,6815,6817,6820,6822,6826,6834,6838,6839,6840,6850,6861,6863,6869,6874,6876,6878,6879,6884,6886,6894,6895,6897,6899,6901,6905,6907,6912,6914,6918,6919,6922,6924,6926,6931,6934,6939,6949,6953,6958,6961,6966,6967,6968,6972,6977,6980,6982,6984,6986,6996,6998,7000,7007,7008,7022,7025);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnDifficulties`, `phaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(6693,185965,530,'0',0,2511.03,7346.34,380.742,-2.69653,0,0,-0.975342,0.220699,300,100,1),
(6695,185609,530,'0',0,4079.428,5601.353, 267.2757, 3.159062, 0, 0,-0.9999619,0.008734641,180,100,1),
(6697,185656,530,'0',0,3922.746,5120.594,270.0932,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6698,185657,530,'0',0,3917.041,5120.815,270.0932,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6702,185659,530,'0',0,3919.882,5117.944,270.0932,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6703,185660,530,'0',0,3905.977,5091.081,270.0932,3.141593,0,0,-1,0,180,100,1),
(6706,185661,530,'0',0,3905.984,5112.641,270.0932,3.141593,0,0,-1,0,180,100,1),
(6707,185662,530,'0',0,3895.228,5101.894,270.0932,3.141593,0,0,-1,0,180,100,1),
(6709,185663,530,'0',0,3916.698,5101.879,270.0932,3.132858,0,0,0.9999905,0.00436732,180,100,1),
(6711,185664,530,'0',0,3922.599,5083.263,270.0493,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6713,185665,530,'0',0,3919.906,5080.514,270.0932,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6714,185666,530,'0',0,3916.903,5083.174,270.0932,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6715,185667,530,'0',0,3919.724,5086.026,270.0932,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6723,185669,530,'0',0,3892.333,5118.136,270.0932,3.159062,0,0,-0.9999619,0.008734641,180,100,1),
(6724,185672,530,'0',0,3895.595,5083.278,270.0947,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6727,185673,530,'0',0,3892.809,5080.631,270.0932,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6729,185674,530,'0',0,3889.918,5083.437,270.0932,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6732,185675,530,'0',0,3892.858,5086.093,270.0932,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6733,185692,530,'0',0,3919.978,5120.773,270.1487,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6738,185693,530,'0',0,3919.954,5120.77,270.1487,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6739,185694,530,'0',0,3919.949,5120.733,270.1487,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6746,185695,530,'0',0,3919.971,5120.729,270.1487,3.115388,0,0,0.9999142,0.01310196,180,100,1),
(6747,185696,530,'0',0,3919.824,5083.256,270.1487,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6750,185697,530,'0',0,3919.827,5083.292,270.1487,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6752,185698,530,'0',0,3919.85,5083.297,270.1487,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6754,185699,530,'0',0,3919.847,5083.252,270.1487,3.167798,0,0,-0.9999142,0.01310196,180,100,1),
(6756,185704,530,'0',0,3892.833,5083.41,270.1491,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6757,185705,530,'0',0,3892.838,5083.446,270.1491,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6763,185706,530,'0',0,3892.861,5083.45,270.1491,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6764,185707,530,'0',0,3892.855,5083.406,270.1492,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6765,185708,530,'0',0,2708.332,7269.913,368.6403,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6766,185709,530,'0',0,2708.338,7269.897,368.6403,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6774,185710,530,'0',0,2708.333,7269.906,368.6403,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6775,185711,530,'0',0,2708.339,7269.901,368.6403,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6780,185712,530,'0',0,2743.271,7269.906,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6787,185713,530,'0',0,2743.271,7269.903,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6789,185714,530,'0',0,2743.267,7269.911,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6791,185715,530,'0',0,2743.265,7269.918,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6795,185716,530,'0',0,2708.459,7299.037,368.6403,3.141593,0,0,-1,0,180,100,1),
(6798,185717,530,'0',0,2708.464,7299.03,368.6403,3.141593,0,0,-1,0,180,100,1),
(6799,185718,530,'0',0,2708.464,7299.032,368.6403,3.141593,0,0,-1,0,180,100,1),
(6801,185719,530,'0',0,2708.457,7299.044,368.6403,3.141593,0,0,-1,0,180,100,1),
(6804,185720,530,'0',0,2744.124,7298.321,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6806,185721,530,'0',0,2744.128,7298.313,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6807,185722,530,'0',0,2744.128,7298.317,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6812,185723,530,'0',0,2744.122,7298.329,368.6403,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6814,185756,530,'0',0,1911.712,7344.854,364.526,3.141593,0,0,-1,0,180,100,1),
(6815,185757,530,'0',0,1911.714,7344.846,364.526,3.141593,0,0,-1,0,180,100,1),
(6817,185758,530,'0',0,1911.719,7344.838,364.526,3.141593,0,0,-1,0,180,100,1),
(6820,185759,530,'0',0,1911.719,7344.841,364.526,3.141593,0,0,-1,0,180,100,1),
(6822,185760,530,'0',0,1911.618,7374.952,364.526,3.141593,0,0,-1,0,180,100,1),
(6826,185761,530,'0',0,1911.618,7374.949,364.526,3.141593,0,0,-1,0,180,100,1),
(6834,185762,530,'0',0,1911.615,7374.957,364.526,3.141593,0,0,-1,0,180,100,1),
(6838,185763,530,'0',0,1911.613,7374.963,364.526,3.141593,0,0,-1,0,180,100,1),
(6839,185768,530,'0',0,2743.309,7272.672,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6840,185769,530,'0',0,2746.143,7269.749,368.5846,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6850,185770,530,'0',0,2743.182,7267.116,368.5846,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6861,185771,530,'0',0,2740.33,7269.976,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6863,185772,530,'0',0,2744.037,7295.491,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6869,185773,530,'0',0,2741.243,7298.374,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6874,185774,530,'0',0,2744.155,7301.037,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6876,185775,530,'0',0,2746.963,7298.202,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6878,185776,530,'0',0,2726.33,7272.519,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6879,185777,530,'0',0,2726.333,7294.026,368.5847,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6884,185778,530,'0',0,2715.562,7283.284,368.5847,3.141593,0,0,-1,0,180,100,1),
(6886,185779,530,'0',0,2737.08,7283.279,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6894,185780,530,'0',0,2708.329,7267.175,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6895,185781,530,'0',0,2708.3,7272.667,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6897,185782,530,'0',0,2705.443,7269.857,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6899,185783,530,'0',0,2711.197,7269.831,368.5847,3.150327,0,0,-0.9999905,0.00436732,180,100,1),
(6901,185784,530,'0',0,2708.452,7296.221,368.5847,3.141593,0,0,-1,0,180,100,1),
(6905,185785,530,'0',0,2705.423,7299.012,368.5847,3.141593,0,0,-1,0,180,100,1),
(6907,185786,530,'0',0,2708.461,7301.881,368.5847,3.141593,0,0,-1,0,180,100,1),
(6912,185787,530,'0',0,2711.246,7298.944,368.5847,3.141593,0,0,-1,0,180,100,1),
(6914,185840,530,'0',0,1911.584,7372.166,364.4705,3.141593,0,0,-1,0,180,100,1),
(6918,185841,530,'0',0,1914.501,7374.847,364.4705,3.141593,0,0,-1,0,180,100,1),
(6919,185842,530,'0',0,1911.589,7377.68,364.4705,3.141593,0,0,-1,0,180,100,1),
(6922,185843,530,'0',0,1908.737,7374.955,364.4705,3.141593,0,0,-1,0,180,100,1),
(6924,185845,530,'0',0,1917.965,7359.596,364.4705,3.124123,0,0,0.9999619,0.008734641,180,100,1),
(6926,185848,530,'0',0,1911.687,7342.105,364.4705,3.141593,0,0,-1,0,180,100,1),
(6931,185849,530,'0',0,1914.487,7344.733,364.4705,3.141593,0,0,-1,0,180,100,1),
(6934,185850,530,'0',0,1911.694,7347.616,364.4705,3.141593,0,0,-1,0,180,100,1),
(6939,185851,530,'0',0,1908.854,7344.85,364.4705,3.141593,0,0,-1,0,180,100,1),
(6949,185890,530,'0',0,3892.868,5083.418,272.6703,0,0,0,0,1,180,100,1),
(6953,185890,530,'0',0,3919.894,5083.261,272.8798,0,0,0,0,1,180,100,1),
(6958,185890,530,'0',0,3920.004,5120.736,272.8854,0,0,0,0,1,180,100,1),
(6961,185890,530,'0',0,2744.201,7298.368,371.2186,0,0,0,0,1,180,100,1),
(6966,185890,530,'0',0,2743.262,7269.939,371.058,0,0,0,0,1,180,100,1),
(6967,185890,530,'0',0,2708.465,7299.038,371.08,1.291542,0,0,0.6018143,0.7986361,180,100,1),
(6968,185890,530,'0',0,2708.292,7269.946,371.2373,0,0,0,0,1,180,100,1),
(6972,185890,530,'0',0,1911.583,7375.013,366.5278,0,0,0,0,1,180,100,1),
(6977,185890,530,'0',0,1911.729,7344.864,366.806,0,0,0,0,1,180,100,1),
(6980,185894,530,'0',0,3892.922,5083.477,270.2625,0,0,0,0,1,180,100,1),
(6982,185894,530,'0',0,3919.897,5083.31,270.2648,0,0,0,0,1,180,100,1),
(6984,185894,530,'0',0,3920.004,5120.736,270.2465,0,0,0,0,1,180,100,1),
(6986,185894,530,'0',0,2744.141,7298.334,368.7359,0,0,0,0,1,180,100,1),
(6996,185894,530,'0',0,2743.326,7269.905,368.7564,0,0,0,0,1,180,100,1),
(6998,185894,530,'0',0,2708.466,7299.038,368.7328,5.218536,0,0,-0.5075378,0.8616294,180,100,1),
(7000,185894,530,'0',0,2708.321,7269.908,368.735,0,0,0,0,1,180,100,1),
(7007,185894,530,'0',0,1911.633,7374.966,364.6176,0,0,0,0,1,180,100,1),
(7008,185894,530,'0',0,1911.676,7344.884,364.6153,0,0,0,0,1,180,100,1),
(7022,185945,530,'0',0,3906.149,5101.911,270.3746,0,0,0,0,1,180,100,1),
(7025,185945,530,'0',0,2726.421,7283.327,368.8086,0,0,0,0,1,180,100,1);

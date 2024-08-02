--
SET @OGUID := 3802286;

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 3003909 AND 3003969;
DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN 3003909 AND 3003969;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 3003909 AND 3003969;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+60;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 0, 45, 321, '0', 0, 0, -864.3790283203125, -3517.014892578125, 85.04742431640625, 1.832594871520996093, 0, 0, 0.793353080749511718, 0.608761727809906005, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+1, 180405, 0, 45, 321, '0', 0, 0, -909.4639892578125, -3518.858154296875, 74.35699462890625, 6.108653545379638671, 0, 0, -0.08715534210205078, 0.996194720268249511, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+2, 180405, 0, 45, 321, '0', 0, 0, -909.08331298828125, -3490.0546875, 70.461517333984375, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+3, 180405, 0, 45, 321, '0', 0, 0, -950.25469970703125, -3547.039794921875, 71.81548309326171875, 5.078907966613769531, 0, 0, -0.56640625, 0.824126183986663818, 120, 255, 1, 51886), -- G_Pumpkin_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+4, 180406, 0, 45, 321, '0', 0, 0, -863.68621826171875, -3505.982421875, 84.84152984619140625, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+5, 180406, 0, 45, 321, '0', 0, 0, -908.18780517578125, -3521.8134765625, 75.5931396484375, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+6, 180406, 0, 45, 321, '0', 0, 0, -950.42254638671875, -3518.876220703125, 71.89357757568359375, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+7, 180406, 0, 45, 321, '0', 0, 0, -947.41375732421875, -3547.0556640625, 59.4717559814453125, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+8, 180406, 0, 45, 321, '0', 0, 0, -1043.03369140625, -3545.5419921875, 67.75019073486328125, 5.026549339294433593, 0, 0, -0.5877847671508789, 0.809017360210418701, 120, 255, 1, 51886), -- G_Pumpkin_02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+9, 180407, 0, 45, 321, '0', 0, 0, -926.227783203125, -3528.16943359375, 73.68756866455078125, 4.468043327331542968, 0, 0, -0.7880105972290039, 0.615661680698394775, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+10, 180407, 0, 45, 321, '0', 0, 0, -922.03643798828125, -3553.2431640625, 76.1509552001953125, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+11, 180407, 0, 45, 321, '0', 0, 0, -948.26934814453125, -3472.09375, 53.42193222045898437, 0.104719325900077819, 0, 0, 0.052335739135742187, 0.998629570007324218, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+12, 180407, 0, 45, 321, '0', 0, 0, -1043.36474609375, -3556.537109375, 67.40114593505859375, 5.096362113952636718, 0, 0, -0.55919265747070312, 0.829037725925445556, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+13, 180411, 0, 45, 321, '0', 0, 0, -891.21356201171875, -3520.657958984375, 85.25119781494140625, 3.700104713439941406, 0, 0, -0.96126079559326171, 0.275640487670898437, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+14, 180411, 0, 45, 321, '0', 0, 0, -914.98089599609375, -3552.2431640625, 86.23166656494140625, 0.645771682262420654, 0, 0, 0.317304611206054687, 0.948323667049407958, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+15, 180411, 0, 45, 321, '0', 0, 0, -891.53302001953125, -3552.05908203125, 85.29114532470703125, 1.989672422409057617, 0, 0, 0.838669776916503906, 0.544640243053436279, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+16, 180411, 0, 45, 321, '0', 0, 0, -914.4617919921875, -3520.822998046875, 86.44864654541015625, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+17, 180415, 0, 45, 321, '0', 0, 0, -914.7218017578125, -3533.50146484375, 73.38082122802734375, 2.652894020080566406, 0, 0, 0.970294952392578125, 0.241925001144409179, 120, 255, 1, 51886), -- CandleBlack01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+18, 180425, 0, 45, 321, '0', 0, 0, -910.64874267578125, -3552.00390625, 76.43897247314453125, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689, 120, 255, 1, 51886), -- SkullCandle01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+19, 180425, 0, 45, 321, '0', 0, 0, -910.67852783203125, -3545.950439453125, 76.43639373779296875, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163, 120, 255, 1, 51886), -- SkullCandle01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+20, 180425, 0, 45, 321, '0', 0, 0, -914.86114501953125, -3533.725830078125, 73.59130859375, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 120, 255, 1, 51886), -- SkullCandle01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+21, 180426, 0, 45, 321, '0', 0, 0, -965.0069580078125, -3498.42529296875, 69.392364501953125, 1.623155713081359863, 0, 0, 0.725374221801757812, 0.688354730606079101, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+22, 180426, 0, 45, 321, '0', 0, 0, -973.9444580078125, -3506.322998046875, 72.26132965087890625, 0.890116631984710693, 0, 0, 0.430510520935058593, 0.902585566043853759, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+23, 180426, 0, 45, 321, '0', 0, 0, -980.79168701171875, -3511.072998046875, 71.51784515380859375, 4.537858963012695312, 0, 0, -0.76604366302490234, 0.642788589000701904, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+24, 180426, 0, 45, 321, '0', 0, 0, -973.02081298828125, -3496.076416015625, 72.5597076416015625, 2.164205789566040039, 0, 0, 0.882946968078613281, 0.469472706317901611, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+25, 180426, 0, 45, 321, '0', 0, 0, -981.3038330078125, -3513.260498046875, 71.24710845947265625, 4.834563255310058593, 0, 0, -0.66261959075927734, 0.748956084251403808, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+26, 180426, 0, 45, 321, '0', 0, 0, -973.27081298828125, -3495.875, 69.894561767578125, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+27, 180426, 0, 45, 321, '0', 0, 0, -966.94964599609375, -3494.36279296875, 71.745697021484375, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+28, 180426, 0, 45, 321, '0', 0, 0, -972.92706298828125, -3496.460205078125, 69.950225830078125, 0.034906249493360519, 0, 0, 0.017452239990234375, 0.999847710132598876, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+29, 180426, 0, 45, 321, '0', 0, 0, -984.185791015625, -3517.255126953125, 70.018798828125, 1.413715124130249023, 0, 0, 0.649447441101074218, 0.760406434535980224, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+30, 180426, 0, 45, 321, '0', 0, 0, -985.5850830078125, -3510.053955078125, 74.40267181396484375, 1.954769015312194824, 0, 0, 0.829037666320800781, 0.559192776679992675, 120, 255, 1, 51886), -- Bat01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+31, 180427, 0, 45, 321, '0', 0, 0, -905.80450439453125, -3535.27001953125, 97.85630035400390625, 5.672322273254394531, 0, 0, -0.3007049560546875, 0.953717231750488281, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+32, 180427, 0, 45, 321, '0', 0, 0, -905.73736572265625, -3535.272705078125, 97.88680267333984375, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+33, 180427, 0, 45, 321, '0', 0, 0, -905.61419677734375, -3535.391845703125, 97.94535064697265625, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+34, 180427, 0, 45, 321, '0', 0, 0, -905.50164794921875, -3535.46240234375, 97.95758819580078125, 1.256635904312133789, 0, 0, 0.587784767150878906, 0.809017360210418701, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+35, 180427, 0, 45, 321, '0', 0, 0, -905.63702392578125, -3535.39501953125, 97.93505096435546875, 5.35816192626953125, 0, 0, -0.446197509765625, 0.894934535026550292, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+36, 180427, 0, 45, 321, '0', 0, 0, -905.55255126953125, -3535.575439453125, 97.97537994384765625, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+37, 180427, 0, 45, 321, '0', 0, 0, -905.5341796875, -3535.173583984375, 97.96080780029296875, 2.495818138122558593, 0, 0, 0.948323249816894531, 0.317305892705917358, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+38, 180427, 0, 45, 321, '0', 0, 0, -905.48577880859375, -3535.415283203125, 97.95175933837890625, 0.296705186367034912, 0, 0, 0.147809028625488281, 0.989015936851501464, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+39, 180427, 0, 45, 321, '0', 0, 0, -905.42706298828125, -3535.576171875, 97.93784332275390625, 4.188792228698730468, 0, 0, -0.86602497100830078, 0.50000077486038208, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+40, 180427, 0, 45, 321, '0', 0, 0, -905.64459228515625, -3535.302001953125, 97.92954254150390625, 0.453785061836242675, 0, 0, 0.224950790405273437, 0.974370121955871582, 120, 255, 1, 51886), -- Bat02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+41, 180471, 0, 45, 321, '0', 0, 0, -891.1180419921875, -3541.329833984375, 91.18915557861328125, 1.570795774459838867, 0, 0, 0.707106590270996093, 0.707106947898864746, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+42, 180471, 0, 45, 321, '0', 0, 0, -914.65777587890625, -3541.443603515625, 91.18331146240234375, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+43, 180471, 0, 45, 321, '0', 0, 0, -891.26043701171875, -3531.298583984375, 91.0083770751953125, 1.605701684951782226, 0, 0, 0.719339370727539062, 0.694658815860748291, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+44, 180471, 0, 45, 321, '0', 0, 0, -905.671875, -3516.520751953125, 78.848419189453125, 2.181660413742065429, 0, 0, 0.887010574340820312, 0.461749136447906494, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+45, 180471, 0, 45, 321, '0', 0, 0, -914.9375, -3531.33154296875, 90.93044281005859375, 4.764749526977539062, 0, 0, -0.6883544921875, 0.725374460220336914, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+46, 180471, 0, 45, 321, '0', 0, 0, -924.99652099609375, -3529.37158203125, 78.28769683837890625, 4.782202720642089843, 0, 0, -0.68199825286865234, 0.731353819370269775, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+47, 180471, 0, 45, 321, '0', 0, 0, -925.19964599609375, -3516.333251953125, 78.29952239990234375, 4.031712055206298828, 0, 0, -0.90258502960205078, 0.430511653423309326, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+48, 180471, 0, 45, 321, '0', 0, 0, -925.61114501953125, -3542.428955078125, 78.61791229248046875, 4.380776405334472656, 0, 0, -0.81411552429199218, 0.580702960491180419, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+49, 180472, 0, 45, 321, '0', 0, 0, -891.45489501953125, -3546.661376953125, 92.32862091064453125, 6.265733242034912109, 0, 0, -0.00872611999511718, 0.999961912631988525, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+50, 180472, 0, 45, 321, '0', 0, 0, -914.64410400390625, -3536.078125, 92.50437164306640625, 3.211419343948364257, 0, 0, -0.9993906021118164, 0.034906134009361267, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+51, 180472, 0, 45, 321, '0', 0, 0, -916.27777099609375, -3556.08154296875, 84.1787261962890625, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+52, 180472, 0, 45, 321, '0', 0, 0, -915.69793701171875, -3516.295166015625, 84.1515960693359375, 1.658061861991882324, 0, 0, 0.737277030944824218, 0.67559051513671875, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+53, 180472, 0, 45, 321, '0', 0, 0, -891.60418701171875, -3525.954833984375, 92.52103424072265625, 0.087265998125076293, 0, 0, 0.043619155883789062, 0.999048233032226562, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+54, 180472, 0, 45, 321, '0', 0, 0, -914.61114501953125, -3525.913330078125, 92.46041107177734375, 2.984498262405395507, 0, 0, 0.996916770935058593, 0.078466430306434631, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+55, 180472, 0, 45, 321, '0', 0, 0, -914.6788330078125, -3546.864501953125, 92.319305419921875, 3.141592741012573242, 0, 0, -1, 0, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+56, 180472, 0, 45, 321, '0', 0, 0, -925.076416015625, -3522.795166015625, 79.7578277587890625, 3.194002151489257812, 0, 0, -0.99965667724609375, 0.026201646775007247, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+57, 180472, 0, 45, 321, '0', 0, 0, -891.58160400390625, -3536.2119140625, 92.61917877197265625, 0.069811686873435974, 0, 0, 0.034898757934570312, 0.999390840530395507, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+58, 180472, 0, 45, 321, '0', 0, 0, -925.27911376953125, -3535.941162109375, 79.87827301025390625, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+59, 180523, 0, 45, 321, '0', 0, 0, -914.34552001953125, -3520.17529296875, 73.10167694091796875, 3.892086982727050781, 0, 0, -0.93041706085205078, 0.366502493619918823, 120, 255, 1, 51886), -- Apple Bob (Area: Hammerfall - Difficulty: 0) CreateObject1
(@OGUID+60, 190082, 0, 45, 321, '0', 0, 0, -913.19207763671875, -3526.897216796875, 72.60242462158203125, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, 51886); -- Candy Bucket (Area: Hammerfall - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+60;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60);

--
SET @CGUID := 3800173;
SET @OGUID := 3802347;

-- Old creature spawns
DELETE FROM `creature` WHERE `guid` BETWEEN 3000245 AND 3000245;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 3000245 AND 3000245;
DELETE FROM `game_event_creature` WHERE `guid` BETWEEN 3000245 AND 3000245;

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 22816, 0, 45, 320, '0', 0, 0, 0, 0, -1249.1221923828125, -2529.688720703125, 20.60658004760742187, 4.789040088653564453, 120, 10, 0, 1129, 0, 1, NULL, NULL, NULL, NULL, 51886); -- Black Cat (Area: Refuge Pointe - Difficulty: 0) CreateObject1 (possible waypoints or random movement)

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 3003970 AND 3004023;
DELETE FROM `gameobject_addon` WHERE `guid` BETWEEN 3003970 AND 3004023;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 3003970 AND 3004023;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+53;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180407, 0, 45, 320, '0', 0, 0, -1277.2239990234375, -2541.725830078125, 26.37758064270019531, 3.106652259826660156, 0, 0, 0.999847412109375, 0.017469281330704689, 120, 255, 1, 51886), -- G_Pumpkin_03 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+1, 180408, 0, 45, 320, '0', 0, 0, -1223.998291015625, -2514.507080078125, 26.56642723083496093, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849, 120, 255, 1, 51886), -- G_WitchHat_01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+2, 180411, 0, 45, 320, '0', 0, 0, -1206.3941650390625, -2535.694580078125, 27.61271095275878906, 0.383971005678176879, 0, 0, 0.190808296203613281, 0.981627285480499267, 120, 255, 1, 51886), -- G_Ghost_01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+3, 180414, 0, 45, 320, '0', 0, 0, -1279.8819580078125, -2526.036376953125, 21.31577301025390625, 6.12610626220703125, 0, 0, -0.07845878601074218, 0.996917366981506347, 120, 255, 1, 51886), -- Cauldron (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+4, 180415, 0, 45, 320, '0', 0, 0, -1210.607666015625, -2539.08154296875, 26.86401176452636718, 5.009094715118408203, 0, 0, -0.59482288360595703, 0.80385679006576538, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+5, 180415, 0, 45, 320, '0', 0, 0, -1207.48095703125, -2538.001708984375, 27.78671646118164062, 5.515241622924804687, 0, 0, -0.37460613250732421, 0.927184045314788818, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+6, 180415, 0, 45, 320, '0', 0, 0, -1210.7430419921875, -2524.007080078125, 27.16786766052246093, 0.436331570148468017, 0, 0, 0.216439247131347656, 0.976296067237854003, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+7, 180415, 0, 45, 320, '0', 0, 0, -1211.501708984375, -2523.59716796875, 26.54352951049804687, 5.532694816589355468, 0, 0, -0.3665008544921875, 0.93041771650314331, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+8, 180415, 0, 45, 320, '0', 0, 0, -1212.421875, -2522.967041015625, 26.86253547668457031, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+9, 180415, 0, 45, 320, '0', 0, 0, -1216.045166015625, -2540.751708984375, 26.78855514526367187, 5.794494152069091796, 0, 0, -0.24192142486572265, 0.970295846462249755, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+10, 180415, 0, 45, 320, '0', 0, 0, -1214.1632080078125, -2540.12841796875, 26.50363731384277343, 4.799657344818115234, 0, 0, -0.67558956146240234, 0.737277925014495849, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+11, 180415, 0, 45, 320, '0', 0, 0, -1211.5711669921875, -2539.47216796875, 26.73987007141113281, 3.316144466400146484, 0, 0, -0.99619388580322265, 0.087165042757987976, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+12, 180415, 0, 45, 320, '0', 0, 0, -1208.829833984375, -2538.630126953125, 27.97402381896972656, 0.174532130360603332, 0, 0, 0.087155342102050781, 0.996194720268249511, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+13, 180415, 0, 45, 320, '0', 0, 0, -1209.8489990234375, -2524.71875, 27.26687240600585937, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+14, 180415, 0, 45, 320, '0', 0, 0, -1210.09033203125, -2524.54345703125, 27.41031265258789062, 3.019413232803344726, 0, 0, 0.998134613037109375, 0.061051756143569946, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+15, 180415, 0, 45, 320, '0', 0, 0, -1213.9114990234375, -2522.59716796875, 26.65444374084472656, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+16, 180415, 0, 45, 320, '0', 0, 0, -1216.734375, -2541.171875, 26.72795486450195312, 5.585053920745849609, 0, 0, -0.34202003479003906, 0.939692676067352294, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+17, 180415, 0, 45, 320, '0', 0, 0, -1229.09033203125, -2512.428955078125, 26.18088912963867187, 3.839725255966186523, 0, 0, -0.93969249725341796, 0.34202045202255249, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+18, 180415, 0, 45, 320, '0', 0, 0, -1206.5867919921875, -2526.220458984375, 28.53124427795410156, 2.234017848968505859, 0, 0, 0.898793220520019531, 0.438372820615768432, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+19, 180415, 0, 45, 320, '0', 0, 0, -1206.90625, -2526.060791015625, 28.61822891235351562, 5.323255538940429687, 0, 0, -0.46174812316894531, 0.887011110782623291, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+20, 180415, 0, 45, 320, '0', 0, 0, -1225.7916259765625, -2519.888916015625, 26.20345878601074218, 0.994837164878845214, 0, 0, 0.477158546447753906, 0.878817260265350341, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+21, 180415, 0, 45, 320, '0', 0, 0, -1206.7222900390625, -2537.920166015625, 27.86751747131347656, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+22, 180415, 0, 45, 320, '0', 0, 0, -1206.3367919921875, -2526.38720703125, 28.50689125061035156, 0.855210542678833007, 0, 0, 0.414692878723144531, 0.909961462020874023, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+23, 180415, 0, 45, 320, '0', 0, 0, -1284.0625, -2458.83154296875, 40.17864227294921875, 2.792518377304077148, 0, 0, 0.984807014465332031, 0.173652306199073791, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+24, 180415, 0, 45, 320, '0', 0, 0, -1247.6180419921875, -2498.132080078125, 32.76686859130859375, 6.230826377868652343, 0, 0, -0.02617645263671875, 0.999657332897186279, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+25, 180415, 0, 45, 320, '0', 0, 0, -1283.8472900390625, -2458.145751953125, 40.50384902954101562, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+26, 180415, 0, 45, 320, '0', 0, 0, -1284.7135009765625, -2457.920166015625, 40.28693008422851562, 4.817109584808349609, 0, 0, -0.66913032531738281, 0.74314504861831665, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+27, 180415, 0, 45, 320, '0', 0, 0, -1285.203125, -2457.404541015625, 40.16240310668945312, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+28, 180415, 0, 45, 320, '0', 0, 0, -1285.6822509765625, -2454.2275390625, 40.52077865600585937, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+29, 180415, 0, 45, 320, '0', 0, 0, -1286.2742919921875, -2453.97216796875, 40.38417434692382812, 5.916667938232421875, 0, 0, -0.18223476409912109, 0.98325502872467041, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+30, 180415, 0, 45, 320, '0', 0, 0, -1286.4566650390625, -2454.454833984375, 40.39487838745117187, 6.161012649536132812, 0, 0, -0.06104850769042968, 0.998134791851043701, 120, 255, 1, 51886), -- CandleBlack01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+31, 180425, 0, 45, 320, '0', 0, 0, -1214.79345703125, -2540.510498046875, 26.51779937744140625, 2.827429771423339843, 0, 0, 0.987688064575195312, 0.156436234712600708, 120, 255, 1, 51886), -- SkullCandle01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+32, 180425, 0, 45, 320, '0', 0, 0, -1211.1180419921875, -2539.2275390625, 26.9380035400390625, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046, 120, 255, 1, 51886), -- SkullCandle01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+33, 180425, 0, 45, 320, '0', 0, 0, -1211.94970703125, -2523.27783203125, 26.88775062561035156, 3.874631166458129882, 0, 0, -0.93358039855957031, 0.358368009328842163, 120, 255, 1, 51886), -- SkullCandle01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+34, 180425, 0, 45, 320, '0', 0, 0, -1207.6302490234375, -2525.833251953125, 28.69981193542480468, 4.398232460021972656, 0, 0, -0.80901622772216796, 0.587786316871643066, 120, 255, 1, 51886), -- SkullCandle01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+35, 180425, 0, 45, 320, '0', 0, 0, -1286.1492919921875, -2454.72216796875, 40.63446426391601562, 3.752462387084960937, 0, 0, -0.95371627807617187, 0.300707906484603881, 120, 255, 1, 51886), -- SkullCandle01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+36, 180426, 0, 45, 320, '0', 0, 0, -1233.3038330078125, -2555.579833984375, 39.84934234619140625, 1.204277276992797851, 0, 0, 0.56640625, 0.824126183986663818, 120, 255, 1, 51886), -- Bat01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+37, 180426, 0, 45, 320, '0', 0, 0, -1280.2864990234375, -2473.8369140625, 51.01105117797851562, 5.166176319122314453, 0, 0, -0.52991867065429687, 0.84804844856262207, 120, 255, 1, 51886), -- Bat01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+38, 180426, 0, 45, 320, '0', 0, 0, -1286.7916259765625, -2463.607666015625, 50.14577484130859375, 5.724681377410888671, 0, 0, -0.27563667297363281, 0.961261868476867675, 120, 255, 1, 51886), -- Bat01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+39, 180426, 0, 45, 320, '0', 0, 0, -1307.125, -2460.364501953125, 56.38277435302734375, 1.117009282112121582, 0, 0, 0.529918670654296875, 0.84804844856262207, 120, 255, 1, 51886), -- Bat01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+40, 180427, 0, 45, 320, '0', 0, 0, -1246.87158203125, -2533.697998046875, 30.78810310363769531, 2.862335443496704101, 0, 0, 0.990267753601074218, 0.139175355434417724, 120, 255, 1, 51886), -- Bat02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+41, 180427, 0, 45, 320, '0', 0, 0, -1246.37158203125, -2537.65283203125, 31.02953147888183593, 3.595378875732421875, 0, 0, -0.97437000274658203, 0.224951311945915222, 120, 255, 1, 51886), -- Bat02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+42, 180427, 0, 45, 320, '0', 0, 0, -1268.015625, -2501.638916015625, 35.14492034912109375, 1.291541695594787597, 0, 0, 0.60181427001953125, 0.798636078834533691, 120, 255, 1, 51886), -- Bat02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+43, 180427, 0, 45, 320, '0', 0, 0, -1253.951416015625, -2523.515625, 37.97158432006835937, 2.216565132141113281, 0, 0, 0.894933700561523437, 0.44619917869567871, 120, 255, 1, 51886), -- Bat02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+44, 180471, 0, 45, 320, '0', 0, 0, -1273.8038330078125, -2540.857666015625, 23.7688140869140625, 2.146752834320068359, 0, 0, 0.878816604614257812, 0.477159708738327026, 120, 255, 1, 51886), -- HangingSkullLight01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+45, 180472, 0, 45, 320, '0', 0, 0, -1273.3125, -2543.397705078125, 25.33276557922363281, 0.663223206996917724, 0, 0, 0.325567245483398437, 0.945518851280212402, 120, 255, 1, 51886), -- HangingSkullLight02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+46, 180523, 0, 45, 320, '0', 0, 0, -1278.6910400390625, -2534.142333984375, 21.75065422058105468, 0.541050612926483154, 0, 0, 0.267237663269042968, 0.96363067626953125, 120, 255, 1, 51886), -- Apple Bob (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+47, 185434, 0, 45, 320, '0', 0, 0, -1205.3697509765625, -2529.413330078125, 34.43618011474609375, 2.111847877502441406, 0, 0, 0.870355606079101562, 0.492423713207244873, 120, 255, 1, 51886), -- Sitting Skeleton 01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+48, 185437, 0, 45, 320, '0', 0, 0, -1283.013916015625, -2514.4619140625, 21.55517387390136718, 5.654868602752685546, 0, 0, -0.30901622772216796, 0.95105677843093872, 120, 255, 1, 51886), -- Laying Skeleton 01 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+49, 185438, 0, 45, 320, '0', 0, 0, -1279.814208984375, -2526.182373046875, 22.08664703369140625, 0.27925160527229309, 0, 0, 0.139172554016113281, 0.990268170833587646, 120, 255, 1, 51886), -- Sitting Skeleton 04 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+50, 185454, 0, 45, 320, '0', 0, 0, -1283.0069580078125, -2511.967041015625, 21.56075668334960937, 0.191985160112380981, 0, 0, 0.095845222473144531, 0.995396256446838378, 120, 255, 1, 51886), -- Laying Skeleton 02 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+51, 208058, 0, 45, 320, '0', 0, 0, -1204.5694580078125, -2531.791748046875, 34.58538055419921875, 5.061456203460693359, 0, 0, -0.57357597351074218, 0.819152355194091796, 120, 255, 1, 51886), -- G_Pumpkin_01 Scale 3.0 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+52, 208060, 0, 45, 320, '0', 0, 0, -1282.435791015625, -2454.671875, 40.700958251953125, 5.602506637573242187, 0, 0, -0.33380699157714843, 0.942641437053680419, 120, 255, 1, 51886), -- G_Pumpkin_02 Scale 3.0 (Area: Refuge Pointe - Difficulty: 0) CreateObject1
(@OGUID+53, 208120, 0, 45, 320, '0', 0, 0, -1280.0399169921875, -2520.11279296875, 21.40694046020507812, 2.007128477096557617, 0, 0, 0.84339141845703125, 0.537299633026123046, 120, 255, 1, 51886); -- Candy Bucket (Area: Refuge Pointe - Difficulty: 0) CreateObject1

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+53;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53);

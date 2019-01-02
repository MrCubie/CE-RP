/*
					 _______________________________________________
					|												|
					|              CE-RP mapping              		|
					|            ------------------              	|
					|          	Created by: Cubie		           	|
					|_______________________________________________|

*/
//------------------------------------------------------------------------------
// INCLUDE
//------------------------------------------------------------------------------
#include <a_samp>
#include <streamer>
//------------------------------------------------------------------------------
// Streamed Objects
//------------------------------------------------------------------------------

public OnPlayerConnect(playerid)
{
	RemoveBuildingForPlayer(playerid, 9301, -2530.3516, 2346.2031, 7.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 9373, -2530.3516, 2346.2031, 7.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2548.9922, 2352.3359, 11.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1689, -2544.5547, 2348.0156, 13.2422, 0.25);
	RemoveBuildingForPlayer(playerid, 1617, -2539.6172, 2352.3359, 11.1484, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2527.2422, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2520.7188, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2524.0625, 2353.1250, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 9314, -2493.8594, 2363.4297, 14.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 9379, -2445.1719, 2311.6328, 9.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0703, 2364.2188, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1346, -2451.4063, 2321.0234, 5.3203, 0.25);
	RemoveBuildingForPlayer(playerid, 9244, -2445.1719, 2311.6328, 9.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 1227, -2503.0469, 2368.0469, 4.7578, 0.25);
	RemoveBuildingForPlayer(playerid, 1440, -2506.6953, 2369.6641, 4.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 1223, -2480.5781, 2220.3359, 3.9688, 0.25);
	RemoveBuildingForPlayer(playerid, 3425, -1513.5625, 1953.1563, 58.5078, 0.25);
	RemoveBuildingForPlayer(playerid, 11501, -1499.2578, 1956.2344, 47.5156, 0.25);
	RemoveBuildingForPlayer(playerid, 11502, -1508.5859, 1975.4063, 47.4141, 0.25);
	
	//Taxi
	RemoveBuildingForPlayer(playerid, 11611, -1383.5547, 2616.5234, 56.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 11453, -1414.5078, 2650.4844, 57.5625, 0.25);
	
	//Mod/Pay 'n spray
	RemoveBuildingForPlayer(playerid, 5043, 1843.3672, -1856.3203, 13.8750, 0.25);
	RemoveBuildingForPlayer(playerid, 5340, 2644.8594, -2039.2344, 14.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 5422, 2071.4766, -1831.4219, 14.5625, 0.25);
	RemoveBuildingForPlayer(playerid, 5856, 1024.9844, -1029.3516, 33.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 5779, 1041.3516, -1025.9297, 32.6719, 0.25);
	RemoveBuildingForPlayer(playerid, 6400, 488.2813, -1734.6953, 12.3906, 0.25);
	RemoveBuildingForPlayer(playerid, 10575, -2716.3516, 217.4766, 5.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 11313, -1935.8594, 239.5313, 35.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 11319, -1904.5313, 277.8984, 42.9531, 0.25);
	RemoveBuildingForPlayer(playerid, 9625, -2425.7266, 1027.9922, 52.2813, 0.25);
	RemoveBuildingForPlayer(playerid, 9093, 2386.6563, 1043.6016, 11.5938, 0.25);
	RemoveBuildingForPlayer(playerid, 8957, 2393.7656, 1483.6875, 12.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 7709, 2006.0000, 2303.7266, 11.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 7891, 1968.7422, 2162.4922, 12.0938, 0.25);
	RemoveBuildingForPlayer(playerid, 3294, -1420.5469, 2591.1563, 57.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 3294, -100.0000, 1111.4141, 21.6406, 0.25);
	RemoveBuildingForPlayer(playerid, 13028, 720.0156, -462.5234, 16.8594, 0.25);
}

public OnFilterScriptInit()
{
	// Bayside ammunition
	CreateDynamicObject(2959, -2455.98584, 2309.48535, 4.28097,   0.00000, 0.00000, -0.30000);
	CreateDynamicObject(2959, -2456.10327, 2312.50781, 4.28100,   0.00000, 0.00000, -178.67999);
	CreateDynamicObject(10631, -2446.94897, 2311.17798, 8.25113,   0.00000, 0.00000, -269.87991);
	CreateDynamicObject(2959, -2455.98584, 2309.48535, 4.28097,   0.00000, 0.00000, -0.30000);
	CreateDynamicObject(2959, -2456.10327, 2312.50781, 4.28100,   0.00000, 0.00000, -178.67999);
	new ammo1 = CreateDynamicObject(19454, -2456.15259, 2316.37964, 10.97787,   0.00000, 0.00000, 0.18000);
	SetDynamicObjectMaterial(ammo1, 0, 4552, "ammu_lan2", "sunsetammu2", 0xFFFFFFFF);
	new ammo2 = CreateDynamicObject(19454, -2456.19141, 2305.75415, 10.97790,   0.00000, 0.00000, -0.24000);
	SetDynamicObjectMaterial(ammo2, 0, 4552, "ammu_lan2", "sunsetammu2", 0xFFFFFFFF);
	new ammo3 = CreateDynamicObject(19435, -2456.17090, 2310.92554, 10.97790,   0.00000, 0.00000, 0.24000);
	SetDynamicObjectMaterial(ammo3, 0, 4552, "ammu_lan2", "sunsetammu2", 0xFFFFFFFF);
	
	//bayside DMV
	CreateDynamicObject(11015, -2478.04053, 2230.08691, 5.81360,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1262, -2468.96460, 2229.96021, 5.61012,   0.00000, 0.00000, -89.10003);
	CreateDynamicObject(1263, -2469.07275, 2227.21069, 5.93793,   0.00000, 0.00000, -179.57996);
	CreateDynamicObject(1238, -2468.42334, 2229.86108, 4.19255,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2468.68579, 2231.17993, 4.19255,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2468.66846, 2232.12158, 4.19255,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, -2468.92285, 2224.45703, 4.53295,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(638, -2468.84302, 2234.58032, 4.53295,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(640, -2473.48315, 2239.34082, 4.54130,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(640, -2482.60083, 2239.32056, 4.54130,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1537, -2469.21704, 2229.28931, 4.00560,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2949, -2486.84790, 2232.45361, 3.90250,   0.00000, 0.00000, 0.00000);
	
	//Bayside clothing
	new clothing1 = CreateDynamicObject(19906, -2515.17139, 2280.22876, 7.11905,   0.00000, 0.00000, -24.54000);
	SetDynamicObjectMaterial(clothing1, 0, 17517, "templae2land", "bincowin", 0xFFFFFFFF);
	new clothing2 = CreateDynamicObject(19906, -2505.77832, 2276.00879, 7.11905,   0.00000, 0.00000, -24.54000);
	SetDynamicObjectMaterial(clothing2, 0, 17517, "templae2land", "bincowin", 0xFFFFFFFF);
	new clothing3 = CreateDynamicObject(19172, -2510.44214, 2277.73828, 7.81259,   0.00000, 0.00000, -24.30000);
	SetDynamicObjectMaterial(clothing3, 0, 9524, "blokmodb", "bincosf_1", 0xFFFFFFFF);
	
	//bayside 24/7
	CreateDynamicObject(1361, -2476.77490, 2320.60498, 4.68916,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2481.14063, 2321.10547, 4.50998,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2476.23242, 2316.36816, 4.51000,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2714, -2480.73389, 2318.76318, 6.21482,   0.00000, 0.00000, 134.64009);
	CreateDynamicObject(3802, -2478.33521, 2317.45020, 6.14866,   0.00000, 0.00000, 48.89997);
	new shop = CreateDynamicObject(19454, -2479.65674, 2317.48315, 5.67625,   0.00000, 0.00000, 44.10000);
	SetDynamicObjectMaterial(shop, 0, 18233, "cuntwshopscs_t", "snpdwhit3", 0xFFFFFFFF);
	new shop2 = CreateDynamicObject(19454, -2487.64917, 2320.70850, 5.67625,   0.00000, 0.00000, 90.36000);
	SetDynamicObjectMaterial(shop2, 0, 18233, "cuntwshopscs_t", "snpdwhit3", 0xFFFFFFFF);
	new shop3 = CreateDynamicObject(19438, -2479.59155, 2317.52808, 5.27000,   0.00000, 0.00000, 44.51998);
	SetDynamicObjectMaterial(shop3, 0, 5180, "lashops93_las2", "lastat1", 0xFFFFFFFF);
	new shop4 = CreateDynamicObject(19172, -2479.26709, 2317.81885, 9.18773,   0.00000, 0.00000, 134.88014);
	SetDynamicObjectMaterial(shop4, 0, 12964, "sw_block09", "sw_genstore", 0xFFFFFFFF);
	
	//bayside Eshop
	CreateDynamicObject(2229, -2539.05347, 2318.60767, 3.97835,   0.00000, 0.00000, 145.92014);
	CreateDynamicObject(2229, -2536.45264, 2318.20801, 3.97835,   0.00000, 0.00000, 215.64006);
	CreateDynamicObject(1216, -2536.43286, 2321.24268, 4.60304,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1216, -2538.29810, 2321.17920, 4.60304,   0.00000, 0.00000, 180.00000);
	new eshop = CreateDynamicObject(19454, -2527.00757, 2320.73291, 5.67625,   0.00000, 0.00000, 90.06002);
	SetDynamicObjectMaterial(eshop, 0, 5180, "lashops93_las2", "snpdwhit3", 0xFFFFFFFF);
	new eshop1 = CreateDynamicObject(19910, -2546.64697, 2320.86865, 5.71739,   0.00000, 0.00000, -0.96000);
	SetDynamicObjectMaterial(eshop1, 0, 5180, "lashops93_las2", "snpdwhit3", 0xFFFFFFFF);
	new eshop3 = CreateDynamicObject(19910, -2545.76611, 2320.82300, 5.71739,   0.00000, 0.00000, -0.96000);
	SetDynamicObjectMaterial(eshop3, 0, 5180, "lashops93_las2", "snpdwhit3", 0xFFFFFFFF);
	new eshop4 = CreateDynamicObject(19454, -2539.40112, 2318.32495, 5.67625,   0.00000, 0.00000, 60.66002);
	SetDynamicObjectMaterial(eshop4, 0, 5180, "lashops93_las2", "snpdwhit3", 0xFFFFFFFF);
	new eshop5 = CreateDynamicObject(19454, -2535.29248, 2318.52002, 5.67625,   0.00000, 0.00000, 120.78004);
	SetDynamicObjectMaterial(eshop5, 0, 5180, "lashops93_las2", "snpdwhit3", 0xFFFFFFFF);
	
	//bayside clucking
	CreateDynamicObject(2770, -2515.56226, 2321.23706, 4.59730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2770, -2522.19116, 2321.29102, 4.59730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1281, -2513.08569, 2322.45703, 4.78280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1281, -2524.38647, 2322.45703, 4.78280,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1522, -2517.85767, 2318.28003, 3.98020,   0.00000, 0.00000, 180.00000);
	new food = CreateDynamicObject(19910, -2521.10913, 2319.44678, 5.72773,   0.00000, 0.00000, -50.94001);
	SetDynamicObjectMaterial(food, 0, 10606, "cluckbell_sfs", "vgnburgwal3_256", 0xFFFFFFFF);
	new food1 = CreateDynamicObject(19910, -2516.46606, 2319.47607, 5.72773,   0.00000, 0.00000, 54.66000);
	SetDynamicObjectMaterial(food1, 0, 10606, "cluckbell_sfs", "vgnburgwal5_256", 0xFFFFFFFF);
	new food2 = CreateDynamicObject(19910, -2513.24292, 2320.80054, 5.72773,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(food2, 0, 10606, "cluckbell_sfs", "vgnburgwal5_256", 0xFFFFFFFF);
	new food3 = CreateDynamicObject(19910, -2524.44604, 2320.81836, 5.72773,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(food3, 0, 10606, "cluckbell_sfs", "vgnburgwal5_256", 0xFFFFFFFF);
	new food4 = CreateDynamicObject(19172, -2518.52710, 2321.52979, 8.88120,   0.00000, 0.00000, -180.00000);
	SetDynamicObjectMaterial(food4, 0, 8639, "chinatownmall", "cluckbell02_law", 0xFFFFFFFF);
	new food5 = CreateDynamicObject(19435, -2518.52246, 2321.43579, 8.88650,   90.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(food5, 0, 5716, "sunrise02_lawn", "duskyred_64", 0xFFFFFFFF);
	new food6 = CreateDynamicObject(19172, -2521.56274, 2295.66821, 7.34791,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(food6, 0, 5168, "lashops6_las2", "cluckbell02_law", 0xFFFFFFFF);

	
	//bayside bank
	CreateDynamicObject(19859, -2501.98413, 2318.31250, 5.22254,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1364, -2501.31909, 2321.69873, 4.75405,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1215, -2504.92700, 2321.23267, 4.49850,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1215, -2497.98315, 2321.23267, 4.49850,   0.00000, 0.00000, 0.00000);
	new bank = CreateDynamicObject(19355, -2501.51172, 2322.37109, 14.79930,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank, 0, 11471, "des_wtownmain", "des_banksign", 0xFFFFFFFF);
	new bankwindow1 = CreateDynamicObject(19355, -2493.81006, 2320.82910, 5.74040,   90.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(bankwindow1, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
    new bankwindow2 = CreateDynamicObject(19355, -2508.90918, 2320.73682, 5.74040,   90.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(bankwindow2, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
    new bankwindow3 = CreateDynamicObject(19454, -2502.42358, 2318.01855, 5.72508,   0.00000, 0.00000, 58.14001);
    SetDynamicObjectMaterial(bankwindow3, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
    new bankwindow4 = CreateDynamicObject(19454, -2500.15527, 2317.99951, 5.72508,   0.00000, 0.00000, 123.24001);
    SetDynamicObjectMaterial(bankwindow4, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
    
	//Bayside fish shack
	CreateDynamicObject(11497, -2255.46289, 2561.48145, 2.80195,   -5.40000, 3.42000, -94.01994);

	// Bayside Police Station
	CreateDynamicObject(16563, -2613.95923, 2260.13989, 5.84491,   0.00000, 0.00000, 89.40011);
	CreateDynamicObject(966, -2611.63647, 2276.04639, 7.19769,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2608.64893, 2276.03662, 7.91204,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2606.21338, 2278.55591, 7.91200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11453, -2588.34375, 2243.00488, 4.20160,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3030, -2611.30859, 2252.76636, 9.39225,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2921, -2610.03198, 2256.30615, 13.01168,   0.00000, 0.00000, 162.95999);
	CreateDynamicObject(14881, -2653.26221, 2240.68237, 1009.99487,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19303, -2654.92676, 2243.70313, 1009.22821,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2654.88208, 2242.84644, 1011.10742,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2654.88208, 2242.84644, 1012.30762,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2654.88208, 2246.85840, 1011.10742,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2654.88208, 2246.85840, 1012.30762,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19303, -2654.92676, 2247.72656, 1009.22821,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14881, -2653.28003, 2240.67334, 1014.98358,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11729, -2656.38330, 2241.20483, 1012.95782,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2656.38330, 2241.99878, 1012.95782,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2656.36475, 2242.78101, 1012.95782,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11730, -2656.38330, 2243.54077, 1012.95782,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2656.38330, 2244.30884, 1012.95782,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2400, -2655.48511, 2248.19946, 1012.98389,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2400, -2659.20703, 2248.19946, 1012.98389,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2395, -2655.48511, 2248.19946, 1015.72351,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2395, -2659.20703, 2248.19946, 1015.72351,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2607, -2656.34253, 2246.38525, 1013.37988,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2356, -2655.49756, 2246.30835, 1012.98370,   0.00000, 0.00000, 59.04000);
	CreateDynamicObject(19142, -2653.84961, 2248.00610, 1013.68182,   -6.48000, -97.56000, 90.00000);
	CreateDynamicObject(19142, -2652.62964, 2247.99512, 1013.68182,   -6.48000, -97.56000, 90.00000);
	CreateDynamicObject(19141, -2652.60400, 2247.73511, 1014.63739,   -52.92000, -90.78000, 192.06010);
	CreateDynamicObject(19141, -2653.79590, 2247.70630, 1014.63739,   -52.92000, -90.78000, 192.06010);
	CreateDynamicObject(19142, -2654.36670, 2247.98022, 1013.67188,   -7.20000, -83.64000, 272.82001);
	CreateDynamicObject(19141, -2654.35938, 2247.68140, 1014.63739,   -65.94000, -89.16000, 209.46001);
	CreateDynamicObject(19142, -2656.34521, 2247.94727, 1013.68182,   -6.48000, -97.56000, 90.00000);
	CreateDynamicObject(19141, -2656.31348, 2247.72754, 1014.63739,   -65.94000, -89.16000, 168.06020);
	CreateDynamicObject(2358, -2653.29688, 2248.00781, 1015.04950,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2358, -2655.21606, 2247.98657, 1015.04950,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2042, -2654.22729, 2247.95825, 1015.02600,   0.00000, 0.00000, -10.86000);
	CreateDynamicObject(2040, -2652.76392, 2247.96509, 1015.03198,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2040, -2652.42505, 2248.00049, 1015.03198,   0.00000, 0.00000, -23.16000);
	CreateDynamicObject(356, -2654.66968, 2248.04956, 1013.62170,   9.96000, 66.78000, -86.82000);
	CreateDynamicObject(356, -2652.82788, 2248.15503, 1013.62170,   9.96000, 66.78000, -118.56000);
	CreateDynamicObject(358, -2653.57935, 2248.21167, 1013.71350,   16.08000, 89.10010, -91.08000);
	CreateDynamicObject(353, -2656.04761, 2248.26318, 1013.46082,   16.08000, 89.10010, -150.06000);
	CreateDynamicObject(349, -2655.32227, 2248.16968, 1013.71350,   19.56000, 84.54010, -150.06000);
	CreateDynamicObject(349, -2652.36255, 2248.13037, 1013.71350,   19.56000, 84.54010, -127.02000);
	CreateDynamicObject(1533, -2652.72363, 2232.58667, 1007.98767,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1533, -2649.00171, 2240.60669, 1012.98322,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1533, -2649.00171, 2240.60669, 1007.97717,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2604, -2652.08521, 2237.19873, 1008.79248,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2604, -2652.14282, 2233.49707, 1008.79248,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2238.88696, 1011.10742,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2238.88696, 1012.31152,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2235.38745, 1011.10742,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2235.38745, 1012.31152,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2231.90845, 1011.10742,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2652.45996, 2231.90845, 1012.31152,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19304, -2653.49170, 2244.85132, 1015.12671,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19304, -2653.49170, 2244.85132, 1016.37488,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, -2655.43359, 2234.81519, 1007.99481,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1722, -2655.45557, 2235.95264, 1007.99481,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1722, -2655.43481, 2237.05591, 1007.99481,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1722, -2655.44287, 2238.17725, 1007.99481,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(630, -2655.06055, 2237.57666, 1009.01453,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, -2655.34521, 2234.09692, 1007.99500,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1775, -2654.86426, 2240.20923, 1009.08752,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1722, -2652.30493, 2242.78857, 1007.99481,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1722, -2652.30420, 2245.96753, 1007.99481,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2356, -2648.48340, 2233.12158, 1007.97852,   0.00000, 0.00000, 41.88000);
	CreateDynamicObject(2356, -2647.99243, 2238.20703, 1007.97852,   0.00000, 0.00000, 141.17999);
	CreateDynamicObject(2611, -2647.51880, 2238.71558, 1009.82129,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2612, -2647.52441, 2236.62720, 1009.82129,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2606, -2647.36963, 2237.54761, 1010.95612,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2605, -2648.48755, 2234.33960, 1008.38507,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2607, -2648.48950, 2237.22705, 1008.39612,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1808, -2647.61743, 2235.70459, 1007.99469,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2614, -2649.59204, 2232.68140, 1010.64838,   0.00000, 15.00000, 180.00000);
	CreateDynamicObject(18092, -2652.49585, 2245.25000, 1013.47198,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2190, -2654.89307, 2245.42700, 1013.94208,   0.00000, 0.00000, 128.16000);
	CreateDynamicObject(19808, -2654.25806, 2245.67847, 1013.98547,   0.00000, 0.00000, 135.24010);
	CreateDynamicObject(1723, -2647.98682, 2236.12402, 1012.98291,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1723, -2649.55786, 2233.07690, 1012.98291,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2011, -2647.98926, 2233.03516, 1012.96930,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1817, -2650.52002, 2234.55176, 1012.94592,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2132, -2650.93213, 2240.23145, 1012.98279,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19916, -2651.82690, 2240.33301, 1012.98309,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19787, -2655.58643, 2237.54419, 1014.91669,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1775, -2655.06982, 2234.48315, 1014.08978,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2500, -2650.81323, 2240.56299, 1014.02258,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, -2654.48633, 2237.51270, 1013.38269,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2310, -2654.96191, 2236.39917, 1013.44269,   0.00000, 0.00000, -106.92000);
	CreateDynamicObject(2310, -2653.91919, 2236.41626, 1013.44269,   0.00000, 0.00000, -81.66000);
	CreateDynamicObject(2310, -2654.99316, 2238.63916, 1013.44269,   0.00000, 0.00000, 118.92000);
	CreateDynamicObject(2310, -2653.84766, 2238.81152, 1013.44269,   0.00000, 0.00000, 78.36000);
	CreateDynamicObject(19377, -2656.70532, 2244.14795, 1018.63641,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19377, -2656.70898, 2244.14795, 1018.08051,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2614, -2656.56274, 2242.77026, 1016.00031,   0.00000, 0.00000, 90.00000);



	// Bayside Medical
	
	CreateDynamicObject(11455, -2490.05151, 2341.74365, 7.05598,   2.00000, 0.00000, 0.00000);
	CreateDynamicObject(639, -2497.59692, 2341.56714, 5.29764,   0.00000, 0.00000, 90.77998);
	CreateDynamicObject(640, -2497.65576, 2341.28857, 4.66711,   -0.50000, 0.00000, -88.32000);
	CreateDynamicObject(640, -2490.60840, 2341.27466, 4.66711,   -0.50000, 0.00000, -88.32000);
	CreateDynamicObject(970, -2483.76953, 2341.13354, 4.54300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2478.13721, 2341.14478, 4.54300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2483.30371, 2348.65674, 7.44424,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(970, -2479.37061, 2347.09668, 7.44424,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18766, -2499.25952, 2367.20068, 3.49646,   90.00000, 0.00000, 90.00000);
	new medic1 = CreateDynamicObject(19454, -2493.29541, 2341.65381, 10.7273,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(medic1, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
	new medic2 = CreateDynamicObject(19454, -2497.25513, 2341.65259, 10.7273,   0.00000, 0.00000, 90.36002);
	SetDynamicObjectMaterial(medic2, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
	new medic3 = CreateDynamicObject(19454, -2501.99902, 2346.45996, 10.7273,   0.00000, 0.00000, 0.12000);
	SetDynamicObjectMaterial(medic3, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
	new medic4 = CreateDynamicObject(19454, -2502.02295, 2356.05884, 10.7273,   0.00000, 0.00000, 0.12000);
    SetDynamicObjectMaterial(medic4, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
    new medic5 = CreateDynamicObject(19454, -2488.53125, 2346.39819, 10.7273,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(medic5, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
    new medic6 = CreateDynamicObject(19454, -2488.52026, 2350.99146, 10.7273,   0.00000, 0.00000, -0.18000);
    SetDynamicObjectMaterial(medic6, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
    new medic7 = CreateDynamicObject(19454, -2493.24780, 2355.74365, 10.7273,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(medic7, 0, 10052, "lomall", "sf_hospitaldr2", 0xFFFFFFFF);
    CreateDynamicObject(3037, -2502.30249, 2355.731, 5.45939,   0.00000, 0.00000, 0.00000);
    new medic9 = CreateDynamicObject(3037, -2504.55908, 2365.80444, 3.99340,   -0.10000, 90.00000, 180.00000);
    SetDynamicObjectMaterial(medic9, 0, 4032, "lanpolicecp", "ws_carpark3", 0xFFFFFFFF);

	// Bayside Car Co.
	CreateDynamicObject(11504, -2239.83130, 2289.72974, 3.92830,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2714, -2244.05103, 2292.87451, 6.35599,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1238, -2244.42822, 2291.49902, 4.23310,   0.00000, 0.00000, 27.36000);
	CreateDynamicObject(1238, -2244.21680, 2290.76636, 4.23310,   0.00000, 0.00000, 27.36000);
	CreateDynamicObject(1238, -2244.84277, 2290.89404, 4.23310,   0.00000, 0.00000, 27.36000);
	CreateDynamicObject(1238, -2244.13623, 2290.15479, 4.23310,   0.00000, 0.00000, 27.36000);
	CreateDynamicObject(2614, -2244.00439, 2290.67432, 6.02650,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2921, -2244.16528, 2278.70093, 7.48697,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3594, -2241.41602, 2298.34668, 8.41581,   -5.40000, 0.54000, -136.56001);
	
	// Bayside gas
	CreateDynamicObject(12853, -2286.50903, 2401.48828, 5.80955,   0.00000, 0.00000, 223.80006);
	CreateDynamicObject(1686, -2281.37183, 2412.16577, 3.93802,   0.00000, 0.00000, 223.80009);
	CreateDynamicObject(1686, -2282.46289, 2413.29517, 3.93802,   0.00000, 0.00000, 223.80009);
	CreateDynamicObject(1686, -2275.49023, 2405.98853, 3.93802,   0.00000, 0.00000, 223.80009);
	CreateDynamicObject(1686, -2274.47705, 2404.80591, 3.93802,   0.00000, 0.00000, 223.80009);
	new gas = CreateDynamicObject(19906, -2286.32104, 2408.06055, 7.33867,   0.00000, 0.00000, 313.91989);
    SetDynamicObjectMaterial(gas, 0, 13296, "sw_roadgas", "sw_wind16", 0xFFFFFFFF);

	
	// Bayside FD

	CreateDynamicObject(1227, -2513.27563, 2349.98169, 4.75781,   356.85840, 0.00000, 90.04922);
	CreateDynamicObject(1227, -2513.25415, 2354.03247, 4.75781,   356.85840, 0.00000, 90.04922);
	CreateDynamicObject(1440, -2512.93896, 2366.24219, 4.39063,   356.85840, 0.00000, 108.56161);
	CreateDynamicObject(1635, -2513.34229, 2360.58911, 10.23850,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(11245, -2514.29639, 2347.46167, 10.77203,   0.00000, 0.00000, -84.59999);
	CreateDynamicObject(11245, -2538.15063, 2347.43701, 10.77203,   0.00000, 0.00000, -84.59999);
	CreateDynamicObject(2614, -2526.25781, 2346.94702, 10.57649,   0.00000, 0.00000, 0.00000);
	new fdground = CreateDynamicObject(19545, -2550.78882, 2372.33154, 4.03144,   0.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdground, 0, 8401, "vgshpground", "ap_tarmac", 0xFFFFFFFF);
	new fdground1 = CreateDynamicObject(19545, -2540.07886, 2372.34253, 4.04180,   0.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdground1, 0, 8401, "vgshpground", "ap_tarmac", 0xFFFFFFFF);
	new fdground2 = CreateDynamicObject(19545, -2525.12158, 2372.33496, 4.04184,   0.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdground2, 0, 8401, "vgshpground", "ap_tarmac", 0xFFFFFFFF);
	new fdground3 = CreateDynamicObject(19545, -2510.13379, 2372.29517, 4.04180,   0.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdground3, 0, 8401, "vgshpground", "ap_tarmac", 0xFFFFFFFF);
	new fdwall1 = CreateDynamicObject(18980, -2538.12817, 2347.45264, -0.46595,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall1, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall2 = CreateDynamicObject(18980, -2530.21216, 2347.47266, -4.57590,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall2, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall3 = CreateDynamicObject(18980, -2522.30176, 2347.47266, -4.57590,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall3, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall4 = CreateDynamicObject(18980, -2514.3953, 2347.4700, -0.4662,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall4, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall5 = CreateDynamicObject(19454, -2525.75708, 2347.0815, 10.2909,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall5, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall6 = CreateDynamicObject(19454, -2533.79077, 2347.06201, 10.2909,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall6, 0, 8839, "vgsecarshow", "marinawindow1_256", 0xFFFFFFFF);
	new fdwall7 = CreateDynamicObject(19454, -2518.7729, 2347.06201, 10.2909,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall7, 0, 8839, "vgsecarshow", "marinawindow1_256", 0xFFFFFFFF);
	new fdwall8 = CreateDynamicObject(18980, -2545.12915, 2347.47266, -4.57590,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall8, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall9 = CreateDynamicObject(19362, -2543.09619, 2347.06348, 5.67380,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall9, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall10 = CreateDynamicObject(19362, -2540.14990, 2347.06299, 5.67380,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall10, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall11 = CreateDynamicObject(19362, -2540.09009, 2347.08374, 6.44672,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall11, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall12 = CreateDynamicObject(19362, -2541.99146, 2347.06738, 6.07217,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall12, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall13 = CreateDynamicObject(18980, -2526.12354, 2347.25391, 8.41080,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall13, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall14 = CreateDynamicObject(18762, -2543.0161, 2347.4732, 7.7962,   0.00000, 82.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall14, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall15 = CreateDynamicObject(18762, -2540.80103, 2347.47266, 8.10700,   0.00000, 82.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall15, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall16 = CreateDynamicObject(19454, -2538.52612, 2351.81323, 10.29090,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall16, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall18 = CreateDynamicObject(18980, -2545.12915, 2356.13989, -4.57590,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall18, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall19 = CreateDynamicObject(19377, -2545.5313, 2351.8079, 2.6740,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall19, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall20 = CreateDynamicObject(18762, -2543.05859, 2356.14038, 7.79620,   0.00000, 82.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall20, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall21 = CreateDynamicObject(18762, -2540.84058, 2356.14063, 8.10700,   0.00000, 82.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall21, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall22 = CreateDynamicObject(18980, -2545.1292, 2356.1399, -4.5759,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall22, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall23 = CreateDynamicObject(19362, -2543.09619, 2356.54858, 5.67380,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall23, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall24 = CreateDynamicObject(19362, -2541.99146, 2356.54761, 6.07220,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall24, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall25 = CreateDynamicObject(19362, -2540.14990, 2356.54810, 5.67380,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall25, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall26 = CreateDynamicObject(19362, -2540.07031, 2356.54712, 6.44670,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall26, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall27 = CreateDynamicObject(19377, -2538.52612, 2361.44604, 6.79100,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall27, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall28 = CreateDynamicObject(18980, -2538.10815, 2367.82275, -0.36310,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall28, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall29 = CreateDynamicObject(19377, -2538.52563, 2362.50610, 6.79100,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall29, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall30 = CreateDynamicObject(19377, -2513.99878, 2351.96582, 6.79100,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall30, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall31 = CreateDynamicObject(18762, -2538.33765, 2358.96753, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall31, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall32 = CreateDynamicObject(18762, -2538.33789, 2363.90869, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall32, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall33 = CreateDynamicObject(18762, -2538.33765, 2365.80371, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall33, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall34 = CreateDynamicObject(18980, -2514.39526, 2367.82275, -0.36310,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall34, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall35 = CreateDynamicObject(19377, -2513.9995, 2362.6445, 6.7910,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall35,  0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall36 = CreateDynamicObject(19377, -2513.9988, 2361.5884, 6.7910,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdwall36,  0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall37 = CreateDynamicObject(18762, -2514.11890, 2350.25562, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall37, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall38 = CreateDynamicObject(18762, -2514.11890, 2355.24683, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall38, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall39 = CreateDynamicObject(18762, -2514.11890, 2360.21753, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall39, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall40 = CreateDynamicObject(18762, -2514.11890, 2365.17749, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall40, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall41 = CreateDynamicObject(18762, -2514.11841, 2365.81470, 8.41080,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall41, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
    new fdwall42 = CreateDynamicObject(19377, -2519.66284, 2368.23193, 6.79100,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall42, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall43 = CreateDynamicObject(19377, -2529.28223, 2368.23193, 6.79100,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall43, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
    new fdwall44 = CreateDynamicObject(19377, -2532.87061, 2368.23169, 6.79100,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdwall44, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall45 = CreateDynamicObject(18762, -2545.14673, 2350.44946, 7.37300,   0.00000, 90.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall45, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall46 = CreateDynamicObject(18762, -2545.14624, 2353.54517, 7.37300,   0.00000, 90.00000, 90.00000);
	SetDynamicObjectMaterial(fdwall46, 0, 5717, "sunrise11_lawn", "whiteconc01", 0xFFFFFFFF);
	new fdwall47 = CreateDynamicObject(19454, -2514.00000, 2352.54175, 11.01010,   9.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall47, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall48 = CreateDynamicObject(19454, -2514.00000, 2363.26611, 11.00380,   -9.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall48, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall49 = CreateDynamicObject(19369, -2514.00342, 2358.04248, 11.63008,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall49, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall50 = CreateDynamicObject(19454, -2538.51001, 2363.26611, 11.00380,   -9.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall50, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall51 = CreateDynamicObject(19454, -2538.51001, 2352.54175, 11.01010,   9.10000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall51, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	new fdwall52 = CreateDynamicObject(19369, -2538.50952, 2358.04248, 11.63010,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdwall52, 0, 8496, "lowbuild03_lvs", "vgshopwall03_64", 0xFFFFFFFF);
	
	// FD Doors
	CreateDynamicObject(1569, -2537.69019, 2354.53345, 4.00550,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, -2537.69336, 2357.49878, 4.00550,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11710, -2537.59790, 2356.00659, 6.66467,   0.00000, 0.00000, 90.00000);
	new fddoor4 = CreateDynamicObject(19860, -2542.41846, 2346.97388, 5.22742,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fddoor4, 0, 12923, "sw_block05", "sw_waredoor", 0xFFFFFFFF);
	
	//FD Do not
	new park1 = CreateDynamicObject(11313, -2518.35596, 2345.42700, 3.95793,   0.10000, 89.88000, 90.00000);
	SetDynamicObjectMaterial(park1, 0, 10778, "airportcpark_sfse", "ws_carpark3", 0xFFFFFFFF);
	new park2 = CreateDynamicObject(11313, -2526.27783, 2345.44409, 3.95793,   0.10000, 89.88000, 90.00000);
	SetDynamicObjectMaterial(park2, 0, 10778, "airportcpark_sfse", "ws_carpark3", 0xFFFFFFFF);
	new park3 = CreateDynamicObject(11313, -2534.17090, 2345.45044, 3.95793,   0.10000, 89.88000, 90.00000);
    SetDynamicObjectMaterial(park3, 0, 10778, "airportcpark_sfse", "ws_carpark3", 0xFFFFFFFF);
	
	// FD Roof
	new fdroof1 = CreateDynamicObject(19380, -2534.54443, 2351.45459, 12.6710,   9.10000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(fdroof1, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
	new fdroof2 = CreateDynamicObject(19380, -2524.08813, 2351.45459, 12.6710,   9.10000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(fdroof2, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
	new fdroof3 = CreateDynamicObject(19380, -2517.99951, 2351.45459, 12.6710,   9.10000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(fdroof3, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
	new fdroof4 = CreateDynamicObject(19380, -2541.84570, 2351.77271, 8.50391,   8.00000, 90.00000, -90.00000);
	SetDynamicObjectMaterial(fdroof4, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
	new fdroof5 = CreateDynamicObject(19447, -2517.56714, 2357.94775, 13.43050,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdroof5, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
    new fdroof6 = CreateDynamicObject(19447, -2525.37549, 2357.94775, 13.43000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdroof6, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
    new fdroof7 = CreateDynamicObject(19447, -2534.97803, 2357.94775, 13.43000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(fdroof7, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
    new fdroof8 = CreateDynamicObject(19380, -2534.54443, 2364.43774, 12.67100,   9.10000, 90.00000, 180.00000);
    SetDynamicObjectMaterial(fdroof8, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
    new fdroof9 = CreateDynamicObject(19380, -2524.08813, 2364.43774, 12.67100,   9.10000, 90.00000, 180.00000);
    SetDynamicObjectMaterial(fdroof9, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);
    new fdroof10 = CreateDynamicObject(19380, -2517.99951, 2364.43774, 12.67140,   9.10000, 90.00000, 180.00000);
    SetDynamicObjectMaterial(fdroof10, 0, 11631, "mp_ranchcut", "mpCJ_Black_metal", 0xFFFFFFFF);

	// FD ceiling
	new ceiling1 = CreateDynamicObject(19379, -2532.76855, 2352.38916, 8.96930,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(ceiling1, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
	new ceiling2 = CreateDynamicObject(19379, -2532.76855, 2361.99243, 8.96930,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(ceiling2, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
    new ceiling4 = CreateDynamicObject(19379, -2522.30103, 2352.38916, 8.96960,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(ceiling4, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
    new ceiling5 = CreateDynamicObject(19379, -2522.30103, 2361.99243, 8.96700,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(ceiling5, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
    new ceiling7 = CreateDynamicObject(19379, -2519.34302, 2352.38916, 8.97000,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(ceiling7, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
    new ceiling8 = CreateDynamicObject(19379, -2519.3430, 2361.9924, 8.9693,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(ceiling8, 0, 3975, "lanbloke", "ceiling_256", 0xFFFFFFFF);
    
    //FD int
    CreateDynamicObject(19815, -2525.67651, 2366.78931, 5.91142,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(19899, -2522.43042, 2366.33545, 4.00941,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(19900, -2529.60254, 2351.99731, 3.99076,   0.00000, 0.00000, 38.81999);
    CreateDynamicObject(18608, -2526.79395, 2361.59253, 9.70760,   0.00000, 0.00000, 90.00000);
    CreateDynamicObject(18608, -2526.79395, 2352.80469, 9.70760,   0.00000, 0.00000, 90.00000);
    CreateDynamicObject(941, -2526.02368, 2366.12744, 4.49975,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(1211, -2513.60498, 2346.62109, 4.35012,   0.00000, 0.00000, 26.70000);
    new fdint1 = CreateDynamicObject(19908, -2537.69922, 2350.63965, 6.43240,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdint1, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
    new fdint2 = CreateDynamicObject(19908, -2537.69922, 2356.01807, 6.43240,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdint2, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint3 = CreateDynamicObject(19908, -2537.69922, 2361.41992, 6.43240,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdint3, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint4 = CreateDynamicObject(19908, -2537.69971, 2365.31836, 6.43240,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdint4, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint5 = CreateDynamicObject(19908, -2535.15576, 2366.83740, 6.43240,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdint5, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint6 = CreateDynamicObject(19908, -2529.75952, 2366.83740, 6.43240,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdint6, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint7 = CreateDynamicObject(19908, -2524.35889, 2366.83740, 6.43240,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdint7, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint8 = CreateDynamicObject(19908, -2518.95996, 2366.83740, 6.43240,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdint8, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint9 = CreateDynamicObject(19908, -2514.83496, 2350.66016, 6.43240,   0.00000, 0.00000, 180.00000);
	SetDynamicObjectMaterial(fdint9, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
	new fdint10 = CreateDynamicObject(19908, -2514.83496, 2356.06006, 6.43240,   0.00000, 0.00000, 180.00000);
    SetDynamicObjectMaterial(fdint10, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
    new fdint11 = CreateDynamicObject(19908, -2514.83496, 2361.41992, 6.43240,   0.00000, 0.00000, 180.00000);
    SetDynamicObjectMaterial(fdint11, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
    new fdint12 = CreateDynamicObject(19908, -2514.8345, 2365.31836, 6.43240,   0.00000, 0.00000, 180.00000);
    SetDynamicObjectMaterial(fdint12, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
    new fdint13 = CreateDynamicObject(19908, -2516.89404, 2366.83789, 6.43240,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdint13, 0, 4032, "lanpolicecp", "poundwall1_sfe", 0xFFFFFFFF);
    
    // Bayside Fire Interior
	CreateDynamicObject(1569, -2587.64551, 4006.66724, 2000.26172,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1569, -2587.65039, 4009.65723, 2000.26172,   0.00000, 0.00000, -90.00000);
    CreateDynamicObject(8614, -2596.42822, 4008.71680, 2002.48303,   0.00000, 0.00000, 0.00000);
    // Floor //
    new fdfloor1 = CreateDynamicObject(19379, -2602.33691, 4012.62061, 2003.63428,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor1, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor2 = CreateDynamicObject(19379, -2582.27441, 4004.83325, 2003.63391,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor2, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor3 = CreateDynamicObject(19379, -2592.76147, 4014.43970, 2003.63391,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor3, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor4 = CreateDynamicObject(19379, -2582.27441, 4014.43970, 2003.63391,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor4, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor5 = CreateDynamicObject(19379, -2571.78491, 4004.83325, 2003.63391,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor5, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor6 = CreateDynamicObject(19379, -2571.78491, 4014.43970, 2003.63391,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor6, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
    new fdfloor7 = CreateDynamicObject(19379, -2592.73291, 4004.97803, 2000.17200,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdfloor7, 0, 10789, "xenon_sfse", "newgrnd1brn_128", 0xFFFFFFFF);
    // Ceiling //
    new fdintceiling1 = CreateDynamicObject(19378, -2592.58105, 4002.99634, 2003.63306,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling1, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling2 = CreateDynamicObject(19378, -2592.76733, 4012.50635, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling2, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling3 = CreateDynamicObject(19378, -2603.26270, 4012.50635, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling3, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling4 = CreateDynamicObject(19378, -2582.27441, 4004.83325, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling4, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling5 = CreateDynamicObject(19378, -2582.27441, 4014.43970, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling5, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling6 = CreateDynamicObject(19378, -2571.78491, 4014.43970, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling6, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    new fdintceiling7 = CreateDynamicObject(19378, -2571.78491, 4004.83325, 2007.13452,   0.00000, 90.00000, 0.00000);
    SetDynamicObjectMaterial(fdintceiling7, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
    // Walls //
    new fdintwall = CreateDynamicObject(19377, -2587.58545, 4004.97632, 2005.28381,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall1 = CreateDynamicObject(19377, -2592.44507, 4009.70581, 2005.27271,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall1, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall2 = CreateDynamicObject(19454, -2597.19067, 4004.97485, 2001.80542,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall2, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall3 = CreateDynamicObject(19454, -2592.31030, 4000.24292, 2001.80542,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdintwall3, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new fdintwall4 = CreateDynamicObject(19454, -2592.33130, 4007.73364, 2005.29565,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdintwall4, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
    new fdintwall5 = CreateDynamicObject(19454, -2601.95605, 4007.73364, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall5, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
    new fdintwall6 = CreateDynamicObject(19454, -2600.50269, 4012.62964, 2005.29565,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall6, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall7 = CreateDynamicObject(19454, -2595.67212, 4017.35352, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall7, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall8 = CreateDynamicObject(19454, -2586.04517, 4017.35352, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall8, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall9 = CreateDynamicObject(19454, -2576.41650, 4017.35352, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall9, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall10 = CreateDynamicObject(19454, -2566.79248, 4017.35352, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall10, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall11 = CreateDynamicObject(19454, -2582.69849, 4000.25757, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall11, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall12 = CreateDynamicObject(19454, -2573.08032, 4000.25757, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall12, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall13 = CreateDynamicObject(19454, -2563.45288, 4000.25757, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall13, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall14 = CreateDynamicObject(19454, -2566.46411, 4005.14453, 2005.29565,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall14, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall15 = CreateDynamicObject(19454, -2566.46411, 4014.77856, 2005.29565,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall15, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall16 = CreateDynamicObject(19391, -2587.58667, 4013.44971, 2005.46118,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall16, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall17 = CreateDynamicObject(19362, -2587.58618, 4016.65308, 2005.46973,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall17, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall18 = CreateDynamicObject(19362, -2587.58618, 4010.34424, 2005.46973,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall18, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall19 = CreateDynamicObject(19362, -2600.20239, 4017.33179, 2005.29480,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall19, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdintwall20 = CreateDynamicObject(19383, -2596.37793, 4003.74438, 2001.99512,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall20, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
    new fdintwall21 = CreateDynamicObject(19454, -2592.31030, 4000.26294, 2001.80542,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwall21, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
    new fdintwall22 = CreateDynamicObject(19377, -2587.60547, 4004.97632, 2005.28381,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdintwall22, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
	new fdintwall23 = CreateDynamicObject(19453, -2592.44507, 4009.68579, 2001.80542,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdintwall23, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
	new fdintwall24 = CreateDynamicObject(19453, -2597.17065, 4004.97485, 2001.80542,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(fdintwall24, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
	new fdintwall25 = CreateDynamicObject(19453, -2592.43994, 4009.68579, 2005.29163,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdintwall25, 0, 9361, "sfn_office", "law_gazwhite1", 0xFFFFFFFF);
    new fdintwindow1 = CreateDynamicObject(19455, -2570.13916, 4000.26880, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwindow1, 0, 8839, "vgsecarshow", "marinawindow1_256", 0xFFFFFFFF);
    new fdintwindow2 = CreateDynamicObject(19455, -2584.27954, 4000.27637, 2005.29565,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdintwindow2, 0, 8839, "vgsecarshow", "marinawindow1_256", 0xFFFFFFFF);
    
    // Objects //
    CreateDynamicObject(14720, -2566.99634, 4015.76904, 2003.72620,   0.00000, 0.00000, 180.00000);
    CreateDynamicObject(19466, -2571.57251, 4015.18384, 2004.45154,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19466, -2571.57251, 4017.42480, 2004.45154,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, -2567.66333, 4010.11670, 2004.11926,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, -2571.52588, 4010.11670, 2004.11926,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, -2567.66333, 4006.81665, 2004.11926,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2637, -2571.52588, 4006.81665, 2004.11926,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1811, -2567.02563, 4007.40381, 2004.24866,   0.00000, 0.00000, 83.81999);
	CreateDynamicObject(1811, -2568.03687, 4007.64722, 2004.24866,   0.00000, 0.00000, 106.74000);
	CreateDynamicObject(1811, -2566.99316, 4005.83276, 2004.24866,   0.00000, 0.00000, 275.28021);
	CreateDynamicObject(1811, -2568.13623, 4005.87500, 2004.24866,   0.00000, 0.00000, 261.42007);
	CreateDynamicObject(1811, -2572.04395, 4006.38745, 2004.24866,   0.00000, 0.00000, 270.83972);
	CreateDynamicObject(1811, -2570.91333, 4006.39453, 2004.24866,   0.00000, 0.00000, 273.60019);
	CreateDynamicObject(1811, -2570.68188, 4007.76660, 2004.24866,   0.00000, 0.00000, 69.30000);
	CreateDynamicObject(1811, -2572.10840, 4007.88892, 2004.24866,   0.00000, 0.00000, 105.54002);
	CreateDynamicObject(1811, -2570.57617, 4009.25024, 2004.24866,   0.00000, 0.00000, -79.20000);
	CreateDynamicObject(1811, -2572.03442, 4009.68140, 2004.24866,   0.00000, 0.00000, -97.07999);
	CreateDynamicObject(1811, -2572.15405, 4011.16357, 2004.24866,   0.00000, 0.00000, -235.08003);
	CreateDynamicObject(1811, -2570.86304, 4011.23804, 2004.24866,   0.00000, 0.00000, -306.41998);
	CreateDynamicObject(1811, -2568.23315, 4010.60913, 2004.24866,   0.00000, 0.00000, -267.78003);
	CreateDynamicObject(1811, -2567.05322, 4011.18042, 2004.24866,   0.00000, 0.00000, -246.12001);
	CreateDynamicObject(1811, -2566.94922, 4009.20215, 2004.24866,   0.00000, 0.00000, -83.69999);
	CreateDynamicObject(1811, -2567.95679, 4009.35034, 2004.24866,   0.00000, 0.00000, -102.17997);
	CreateDynamicObject(1723, -2578.27734, 4014.79736, 2003.71924,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1723, -2572.12134, 4016.80957, 2003.71924,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1723, -2574.18774, 4012.71558, 2003.71924,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19786, -2575.13672, 4017.34009, 2005.71350,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2319, -2575.87524, 4015.58838, 2003.65674,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(950, -2587.82593, 4011.29858, 2004.20715,   0.00000, 0.00000, 90.06000);
	CreateDynamicObject(1796, -2585.86401, 4000.72314, 2003.69836,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1796, -2583.52637, 4000.72314, 2003.69836,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1796, -2583.32642, 4007.86572, 2003.69836,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, -2585.03223, 4003.76147, 2003.72168,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2346, -2584.03027, 4004.88550, 2003.72168,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1796, -2585.63403, 4007.86572, 2003.69836,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1796, -2579.96411, 4007.86572, 2003.69836,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2346, -2578.37085, 4004.88550, 2003.72168,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1796, -2577.70288, 4007.86572, 2003.69836,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1796, -2577.90259, 4000.72314, 2003.69836,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1796, -2580.20898, 4000.72314, 2003.69836,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2346, -2579.51929, 4003.70923, 2003.72168,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2580.85889, 4009.71680, 2005.56970,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, -2575.06665, 4003.55981, 2005.56970,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19325, -2587.50195, 4009.71680, 2005.56970,   0.00000, 0.00000, 90.00000);
	new bed1 = CreateDynamicObject(19362, -2582.76025, 4003.14868, 2003.22119,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed1, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed2 = CreateDynamicObject(19362, -2582.76074, 4005.42139, 2003.22058,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed2, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed3 = CreateDynamicObject(19362, -2584.43994, 4004.29419, 2003.22119,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bed3, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed4 = CreateDynamicObject(19362, -2577.11450, 4005.42139, 2003.22058,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed4, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed5 = CreateDynamicObject(19362, -2577.11401, 4003.14868, 2003.22156,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed5, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed6 = CreateDynamicObject(19362, -2578.70190, 4004.29419, 2003.21997,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bed6, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed7 = CreateDynamicObject(19362, -2579.12231, 4004.29468, 2003.22083,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bed7, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed8 = CreateDynamicObject(19362, -2586.44507, 4005.42139, 2003.22058,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed8, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed9 = CreateDynamicObject(19362, -2586.44507, 4003.14868, 2003.22119,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed9, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed10 = CreateDynamicObject(19362, -2584.88159, 4004.29468, 2003.22083,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bed10, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed11 = CreateDynamicObject(19362, -2580.79492, 4005.42139, 2003.22058,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed11, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed12 = CreateDynamicObject(19362, -2580.79443, 4003.14868, 2003.22156,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed12, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed13 = CreateDynamicObject(19454, -2582.7253, 4009.6384, 2003.2208,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bed13, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new bed14 = CreateDynamicObject(19454, -2575.10547, 4001.81079, 2003.22083,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bed14, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
	new pilar1 = CreateDynamicObject(18980, -2575.51245, 4007.10010, 2003.72046,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(pilar1, 0, 9241, "sfn_helipad", "helipad_grey1", 0xFFFFFFFF);
	new pilar2 = CreateDynamicObject(18980, -2577.64722, 4009.22949, 2003.72046,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(pilar2, 0, 9241, "sfn_helipad", "helipad_grey1", 0xFFFFFFFF);
    new beddoor = CreateDynamicObject(19391, -2576.51733, 4008.21460, 2005.46118,   0.00000, 0.00000, 45.78000);
    SetDynamicObjectMaterial(beddoor, 0, 3267, "milbase", "midgrey64", 0xFFFFFFFF);
    new fdkitchen = CreateDynamicObject(19362, -2571.54517, 4015.66479, 2002.99646,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdkitchen, 0, 8399, "vgs_shops", "vgsclubwall05_128", 0xFFFFFFFF);
    CreateDynamicObject(1502, -2577.10229, 4008.73145, 2003.71997,   0.00000, 0.00000, -44.57998);
    CreateDynamicObject(1537, -2593.06885, 4000.36768, 2000.26001,   0.00000, 0.00000, 180.00000);
   	CreateDynamicObject(11729, -2596.21484, 4016.94775, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2596.72241, 4016.94775, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2596.21484, 4016.26538, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2596.21484, 4013.19849, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2319, -2596.47339, 4013.95117, 2003.56030,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2596.21484, 4012.51587, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2596.72241, 4016.26538, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2596.72241, 4013.19849, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2596.72241, 4012.51587, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2593.33252, 4016.26538, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2593.83960, 4016.26538, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2593.83960, 4016.94775, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2593.83960, 4013.19849, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2593.83960, 4012.51587, 2003.72070,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11729, -2593.33252, 4016.94775, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2593.33252, 4013.19849, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11729, -2593.33252, 4012.51587, 2003.72070,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2319, -2593.55249, 4013.95117, 2003.56030,   0.00000, 0.00000, 90.00000);
	
	// Lokcer walls//
	CreateDynamicObject(19438, -2593.57153, 4012.07129, 2005.43347,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19438, -2596.43677, 4012.10474, 2005.43347,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19457, -2591.04443, 4016.84009, 2005.44287,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(19457, -2598.54980, 4016.84619, 2005.44287,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(19457, -2595.93262, 4017.34668, 2005.44287,   0.00000, 0.00000, 90.00000);
    
    CreateDynamicObject(1998, -2583.36841, 4016.81494, 2003.72192,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2008, -2587.02417, 4014.75659, 2003.70471,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2356, -2586.40039, 4015.56006, 2003.70105,   0.00000, 0.00000, 57.42001);
	CreateDynamicObject(2356, -2584.33423, 4016.88354, 2003.70105,   0.00000, 0.00000, 177.84007);
	CreateDynamicObject(2008, -2582.38965, 4015.80542, 2003.70471,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2356, -2581.41284, 4016.77295, 2003.70105,   0.00000, 0.00000, 105.36030);
    CreateDynamicObject(1775, -2589.19604, 4016.83813, 2004.82104,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, -2587.79443, 4015.74683, 2003.70313,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1721, -2587.79858, 4014.96826, 2003.70313,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2186, -2590.48901, 4014.47461, 2003.72156,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(11706, -2566.84766, 4013.80957, 2003.72180,   0.00000, 0.00000, -52.97999);
	CreateDynamicObject(11706, -2587.18652, 4012.26880, 2003.70593,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1808, -2590.81274, 4013.07056, 2003.72034,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1742, -2566.40894, 4003.13232, 2003.69202,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(1723, -2569.87207, 4000.86792, 2003.71887,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1723, -2574.53174, 4002.35327, 2003.71887,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2961, -2577.64014, 4009.72632, 2005.22021,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2961, -2593.65454, 4011.95972, 2005.25684,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(11713, -2596.43555, 4012.00952, 2005.08704,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(11713, -2566.57227, 4004.37646, 2004.91675,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2614, -2566.59277, 4008.35474, 2006.01062,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2604, -2592.91699, 4004.11133, 2000.70483,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2604, -2589.25830, 4004.11133, 2000.70483,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19466, -2593.70923, 4003.75586, 2002.75293,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -2591.46802, 4003.75586, 2002.75293,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -2589.22754, 4003.75586, 2002.75293,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19466, -2586.98706, 4003.75586, 2002.75293,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1721, -2590.19360, 4000.45044, 2000.25928,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, -2588.82104, 4000.44116, 2000.25928,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1721, -2593.97852, 4000.46094, 2000.25928,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1775, -2596.63745, 4001.57886, 2001.33142,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1721, -2595.14453, 4000.43359, 2000.25928,   0.00000, 0.00000, 0.00000);
    CreateDynamicObject(2614, -2590.5498,  4009.5530,  2002.3672,    0.00000, 6.00000, 0.00000);
    CreateDynamicObject(2011, -2588.08765, 4000.75830, 2000.26050,   0.00000, 0.00000, 36.54000);
    CreateDynamicObject(1892, -2592.8188,  4000.6873,  2000.2605,    0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2202, -2596.63647, 4006.22705, 2000.25903,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2356, -2593.78955, 4006.94995, 2000.25977,   0.00000, 0.00000, -135.59998);
	CreateDynamicObject(2008, -2592.83228, 4007.31958, 2000.27332,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2186, -2582.17920, 4010.22192, 2003.72070,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(19172, -2591.78638, 4009.78345, 2005.58752,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1808, -2580.63354, 4009.91992, 2003.72021,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2258, -2582.92456, 4017.24390, 2005.73291,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2257, -2600.37793, 4009.90527, 2005.53943,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2614, -2587.44360, 4004.83130, 2006.01062,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2261, -2589.54932, 4000.84473, 2001.76489,   0.00000, 0.00000, 180.00000);
	CreateObject(2690, -2594.67163, 4000.36890, 2001.46350,   0.00000, 0.00000, 0.00000);
	CreateObject(2690, -2587.75293, 4005.54980, 2001.57947,   0.00000, 0.00000, -90.00000);
	CreateObject(2690, -2587.40771, 4011.08008, 2004.75012,   0.00000, 0.00000, 90.00000);
	CreateObject(2690, -2566.62842, 4012.99707, 2004.93481,   0.00000, 0.00000, -90.00000);
	CreateObject(11710, -2592.32397, 4000.37085, 2002.91980,   0.00000, 0.00000, 0.00000);
	new fdbathroom = CreateDynamicObject(19453, -2600.39160, 4016.85889, 2003.64124,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(fdbathroom, 0, 8390, "vegasemulticar", "Bow_sub_walltiles", 0xFFFFFFFF);
    CreateDynamicObject(1502, -2600.15112, 4012.07837, 2003.71997,   0.00000, 0.00000, 0.00000);
	new fdbathroom1 = CreateDynamicObject(19435, -2600.93506, 4012.12354, 2004.45361,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdbathroom1, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new fdbathroom2 = CreateDynamicObject(19362, -2600.22461, 4012.12354, 2007.94910,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(fdbathroom2, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new fdbathroom3 = CreateDynamicObject(19457, -2598.56982, 4016.86621, 2005.44287,   0.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(fdbathroom3, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
    new fdbathroom4 = CreateDynamicObject(2255, -2599.91895, 4015.13477, 2005.01953,   0.00000, 0.00000, 90.00000);
    SetDynamicObjectMaterial(fdbathroom4, 0, 1649, "wglass", "carshowwin2", 0xFFFFFFFF);
    CreateDynamicObject(2517, -2599.30127, 4015.78320, 2003.69409,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2528, -2599.13525, 4014.54468, 2003.72949,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2515, -2600.12158, 4015.13403, 2004.69580,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19873, -2598.82129, 4014.17749, 2003.77307,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19873, -2598.74341, 4014.07520, 2003.77307,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19873, -2598.87012, 4014.06519, 2003.77307,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19873, -2598.81152, 4014.13354, 2003.89221,   0.00000, 0.00000, 0.00000);
    
    // Green Screen
    new gs1 = CreateDynamicObject(19377, -2456.34692, -712.40552, 3000.00000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(gs1, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    new gs2 = CreateDynamicObject(19377, -2456.34692, -722.90131, 3000.00000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(gs2, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    new gs3 = CreateDynamicObject(19377, -2451.46777, -712.41119, 3004.73413,   90.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(gs3, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    new gs4 = CreateDynamicObject(19377, -2451.46777, -722.90131, 3004.73413,   90.00000, 0.00000, 0.00000);
    SetDynamicObjectMaterial(gs4, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    new gs5 = CreateDynamicObject(19377, -2465.94580, -712.39441, 3000.00000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(gs5, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    new gs6 = CreateDynamicObject(19377, -2465.96631, -722.88171, 3000.00000,   0.00000, 90.00000, 90.00000);
    SetDynamicObjectMaterial(gs6, 0, 8839, "vgsecarshow", "lightgreen2_32", 0xFFFFFFFF);
    
    // Bayside Construction
	CreateDynamicObject(19975, -1959.08105, 2552.97314, 51.54745,   0.00000, 0.00000, -5.76000);
	CreateDynamicObject(19974, -1921.27527, 2448.21094, 52.87942,   0.00000, 0.00000, 16.20000);
	CreateDynamicObject(19974, -1905.64966, 2453.58081, 52.87942,   0.00000, 0.00000, 16.20000);
	CreateDynamicObject(19987, -1912.72510, 2473.54126, 53.30853,   0.00000, 0.00000, 2.40000);
	CreateDynamicObject(19987, -1928.20410, 2469.00903, 53.30853,   0.00000, 0.00000, 38.40000);
	CreateDynamicObject(19425, -1922.33411, 2483.09619, 53.49012,   0.00000, 0.00000, 21.66001);
	CreateDynamicObject(19951, -1933.27222, 2517.82007, 52.80876,   0.00000, 0.00000, -16.14000);
	CreateDynamicObject(19951, -1938.32703, 2519.55127, 52.68485,   0.00000, 0.00000, -16.14000);
	CreateDynamicObject(19951, -1942.98376, 2522.39111, 52.68615,   0.00000, 0.00000, -16.14000);
	CreateDynamicObject(1422, -1958.31067, 2550.71460, 52.04272,   0.00000, -1.48000, -59.28000);
	CreateDynamicObject(1238, -1959.47253, 2552.36646, 51.93347,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8873, -1947.60718, 2546.40088, 57.92385,   0.00000, 0.00000, -29.27999);
	CreateDynamicObject(8873, -1965.82751, 2568.37280, 56.87931,   0.00000, 0.00000, -159.29993);
	CreateDynamicObject(3865, -1995.46533, 2602.53784, 51.84875,   -2.04000, 0.06000, 33.90000);
	CreateDynamicObject(1422, -2011.05945, 2619.09863, 50.54159,   0.00000, 0.00000, -24.90001);
	CreateDynamicObject(1422, -2014.39404, 2620.30420, 50.54159,   0.00000, 0.00000, -13.32000);
	CreateDynamicObject(1422, -2017.80029, 2620.84668, 50.54159,   0.00000, 0.00000, -3.84000);
	CreateDynamicObject(1422, -2021.32007, 2620.71338, 50.54159,   0.00000, 0.00000, 7.50000);
	CreateDynamicObject(1238, -1959.76843, 2553.21338, 51.89450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -1959.09192, 2553.07617, 51.93790,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2006.88306, 2608.47974, 50.31852,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2006.08911, 2608.54126, 50.31852,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2005.36328, 2608.20874, 50.31852,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2022.49231, 2619.97607, 50.46303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2019.60120, 2620.96826, 50.46303,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2016.07715, 2620.62061, 50.36406,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2012.62488, 2619.79297, 50.28404,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -2023.01855, 2620.41235, 50.45218,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3567, -1973.88416, 2578.88599, 51.51495,   -1.00000, 0.00000, 46.68000);
	CreateDynamicObject(3626, -1959.12830, 2567.08374, 52.65109,   0.00000, 0.00000, -54.48000);
	CreateDynamicObject(2921, -1957.72803, 2562.59326, 54.06515,   0.00000, 0.00000, 116.57999);
	CreateDynamicObject(19326, -1959.84338, 2565.29321, 53.12354,   0.00000, 25.00000, -54.59999);
	CreateDynamicObject(2714, -1962.56982, 2570.04199, 52.92214,   0.00000, 0.00000, 35.76001);
	CreateDynamicObject(1422, -1956.84473, 2548.12915, 52.13210,   0.00000, -1.48000, -59.28000);
	CreateDynamicObject(1237, -1955.90808, 2546.39331, 51.80181,   0.00000, 0.00000, 27.60000);
	CreateDynamicObject(1422, -1954.87354, 2544.77344, 52.30698,   0.00000, -1.48000, -60.23998);
	CreateDynamicObject(1422, -1932.19202, 2516.46777, 53.32320,   0.00000, -0.50000, -15.24000);
	CreateDynamicObject(1422, -1935.55762, 2517.47144, 53.32320,   0.00000, -0.80000, -18.48000);
	CreateDynamicObject(1422, -1938.79187, 2518.96899, 53.20590,   0.00000, -1.00000, -30.42000);
	CreateDynamicObject(1422, -1941.70325, 2521.14893, 53.12810,   0.00000, -1.00000, -42.41998);
	CreateDynamicObject(1237, -1952.51160, 2540.55688, 52.06968,   0.00000, 0.00000, -55.37999);
	CreateDynamicObject(1237, -1949.23853, 2534.89893, 52.24734,   0.00000, 0.00000, -30.06000);
	CreateDynamicObject(1237, -1946.16492, 2529.24048, 52.43829,   0.00000, 0.00000, 78.84001);
	CreateDynamicObject(1422, -1953.44421, 2542.26709, 52.37189,   0.00000, -1.48000, -60.23998);
	CreateDynamicObject(1422, -1951.54993, 2538.96484, 52.54185,   0.00000, -1.48000, -59.99999);
	CreateDynamicObject(1422, -1950.12622, 2536.53247, 52.62469,   0.00000, -1.48000, -59.63998);
	CreateDynamicObject(1422, -1948.30457, 2533.37524, 52.75134,   0.00000, -1.48000, -60.11998);
	CreateDynamicObject(1422, -1946.95386, 2530.90991, 52.82078,   0.00000, -1.48000, -62.81997);
	CreateDynamicObject(1422, -1945.28125, 2527.65479, 52.99315,   0.00000, -1.48000, -63.89996);
	CreateDynamicObject(1422, -1944.06787, 2525.04639, 53.07312,   0.00000, -1.48000, -67.07998);
	CreateDynamicObject(1237, -1943.25293, 2523.15845, 52.63821,   0.00000, 0.00000, 151.98000);
	CreateDynamicObject(1238, -1933.85535, 2516.90503, 53.33523,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -1937.28040, 2518.01563, 53.25624,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -1940.32654, 2519.93530, 53.18075,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19425, -1920.90027, 2479.25903, 53.49012,   0.00000, 0.00000, 20.22002);
	CreateDynamicObject(19425, -1919.45142, 2475.01440, 53.49012,   0.00000, 0.00000, 18.78002);
	CreateDynamicObject(1422, -1964.63989, 2560.79321, 51.58439,   0.00000, -1.48000, -55.62000);
	CreateDynamicObject(1238, -1963.81177, 2559.29053, 51.69618,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -1963.63879, 2560.36987, 51.65806,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1238, -1963.28015, 2559.79077, 51.68203,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1422, -1966.30310, 2563.18433, 51.48876,   0.00000, -1.48000, -56.46001);
	CreateDynamicObject(1237, -1967.42273, 2564.63232, 51.06543,   0.00000, 0.00000, 59.87999);
	CreateDynamicObject(19321, -1977.27612, 2582.16382, 53.82055,   -1.00000, 0.00000, 44.87998);
	CreateDynamicObject(3577, -1969.08679, 2574.37939, 53.20070,   -1.00000, 0.00000, 46.32000);
	CreateDynamicObject(3576, -1972.49036, 2577.46069, 53.92094,   0.00000, -1.00000, -43.56001);
	CreateDynamicObject(1422, -1968.44458, 2566.19556, 51.42699,   0.00000, -1.48000, -54.66000);
	CreateDynamicObject(1422, -1970.08203, 2568.53442, 51.34285,   0.00000, -1.48000, -56.16000);
	CreateDynamicObject(1237, -1971.16357, 2570.02637, 50.72935,   0.00000, 0.00000, 118.37997);
	CreateDynamicObject(1422, -1972.10168, 2571.60229, 51.24918,   0.00000, -2.00000, -58.02000);
	CreateDynamicObject(1422, -1973.63745, 2573.92651, 51.15414,   0.00000, -1.48000, -55.32000);
	CreateDynamicObject(1237, -1974.67383, 2575.38477, 50.67242,   0.00000, 0.00000, 160.55992);
	CreateDynamicObject(1422, -1975.84961, 2576.84595, 51.01981,   0.00000, -1.48000, -51.41999);
	CreateDynamicObject(1422, -1977.67053, 2579.05664, 50.94910,   0.00000, -1.48000, -48.54005);
	CreateDynamicObject(1237, -1978.86401, 2580.36304, 50.46399,   0.00000, 0.00000, 178.13989);
	CreateDynamicObject(1422, -1980.04553, 2581.74707, 50.89096,   0.00000, -1.48000, -49.32005);
	CreateDynamicObject(1422, -1981.88184, 2583.84766, 50.81514,   0.00000, -1.48000, -48.36005);
	CreateDynamicObject(1237, -1983.11780, 2585.20239, 50.31562,   0.00000, 0.00000, 261.35986);
	CreateDynamicObject(1422, -1984.38074, 2586.65186, 50.75111,   0.00000, -1.48000, -48.78005);
	CreateDynamicObject(1422, -1986.23413, 2588.79370, 50.68407,   0.00000, -1.48000, -48.36005);
	CreateDynamicObject(1237, -1987.46826, 2590.17017, 50.19211,   0.00000, 0.00000, 380.69992);
	CreateDynamicObject(1422, -1988.68250, 2591.64038, 50.64865,   0.00000, -1.48000, -49.02005);
	CreateDynamicObject(1422, -1990.59204, 2593.73926, 50.57800,   0.00000, -1.48000, -46.32006);
	CreateDynamicObject(1237, -1991.94800, 2595.22070, 50.06221,   0.00000, 0.00000, 346.14008);
	CreateDynamicObject(1422, -1993.23059, 2596.58423, 50.46469,   0.00000, -0.50000, -43.08010);
	CreateDynamicObject(1422, -1995.32874, 2598.50146, 50.43620,   0.00000, -0.50000, -41.34010);
	CreateDynamicObject(1237, -1996.68909, 2599.70093, 50.05378,   0.00000, 0.00000, 406.55997);
	CreateDynamicObject(1422, -1998.04663, 2600.92578, 50.41747,   0.00000, -0.50000, -40.44010);
	CreateDynamicObject(1422, -2000.18237, 2602.73364, 50.39873,   0.00000, -0.50000, -39.96009);
	CreateDynamicObject(1237, -2001.56079, 2603.88843, 50.05378,   0.00000, 0.00000, 328.38000);
	CreateDynamicObject(1422, -2002.92395, 2605.07471, 50.41979,   0.00000, -0.50000, -40.38010);
	CreateDynamicObject(1422, -2005.12476, 2606.99634, 50.41193,   0.00000, -0.50000, -39.96009);
	CreateDynamicObject(19992, -2015.45898, 2607.41187, 50.03230,   0.00000, 0.00000, 50.87999);
	CreateDynamicObject(19992, -2006.57227, 2617.08911, 50.03230,   0.00000, 0.00000, 85.26000);
	
	//Scarpyard
	CreateDynamicObject(17064, -1475.33594, 1999.80017, 46.74432,   0.00000, 0.00000, -86.22000);
	CreateDynamicObject(8674, -1498.37415, 1988.48059, 47.90982,   0.00000, 0.00000, 3.30000);
	CreateDynamicObject(8674, -1508.46143, 1986.58118, 48.09431,   0.00000, 2.00000, 17.76000);
	CreateDynamicObject(8674, -1516.07263, 1980.61084, 48.26649,   0.00000, 0.00000, 58.26001);
	CreateDynamicObject(8674, -1500.18213, 1938.54919, 48.44383,   0.00000, 2.00000, 151.20000);
	CreateDynamicObject(8674, -1490.88611, 1934.17566, 49.05597,   0.00000, 5.00000, 158.28008);
	CreateDynamicObject(8674, -1481.02783, 1931.23352, 49.93782,   0.00000, 5.00000, 168.17995);
	CreateDynamicObject(8674, -1470.94727, 1929.67603, 50.55429,   0.00000, 2.00000, 174.24001);
	CreateDynamicObject(10252, -1482.38257, 1989.37280, 47.47441,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(10252, -1489.58691, 1987.99756, 47.47438,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(8674, -1518.55212, 1971.04993, 48.26649,   0.00000, 0.00000, 92.70000);
	CreateDynamicObject(8674, -1518.05688, 1960.69849, 48.26649,   0.00000, 0.00000, 92.70000);
	CreateDynamicObject(8674, -1515.84924, 1950.74841, 48.26649,   0.00000, 0.00000, 112.25999);
	CreateDynamicObject(8674, -1509.30408, 1943.49707, 48.26649,   0.00000, 0.00000, 151.98007);
	CreateDynamicObject(8674, -1460.66309, 1928.64722, 50.81940,   0.00000, 1.00000, 174.24001);
	CreateDynamicObject(8674, -1450.34705, 1927.60803, 51.17730,   0.00000, 3.00000, 174.24001);
	CreateDynamicObject(8674, -1440.11145, 1926.56384, 51.54014,   0.00000, 1.00000, 174.24001);
	CreateDynamicObject(8674, -1430.42126, 1928.59485, 51.64193,   0.00000, 0.00000, 209.82008);
	CreateDynamicObject(8674, -1422.90173, 1935.36816, 51.64193,   0.00000, 0.00000, 234.12013);
	CreateDynamicObject(8674, -1418.88794, 1944.64392, 51.55828,   0.00000, -1.00000, 259.32031);
	CreateDynamicObject(8674, -1418.68408, 1954.84827, 51.19878,   0.00000, -3.00000, 278.10019);
	CreateDynamicObject(8674, -1420.49048, 1964.96936, 50.91847,   0.00000, 0.00000, 282.12012);
	CreateDynamicObject(8674, -1424.92627, 1973.93445, 50.65236,   0.00000, -3.00000, 310.14020);
	CreateDynamicObject(8674, -1432.11121, 1981.21606, 49.92135,   0.00000, -5.00000, 319.08020);
	CreateDynamicObject(8674, -1440.05273, 1987.82263, 49.21189,   0.00000, -3.00000, 321.96011);
	CreateDynamicObject(8674, -1449.00732, 1992.67969, 48.66590,   0.00000, -3.00000, 341.16000);
	CreateDynamicObject(8674, -1458.93896, 1996.13794, 48.39355,   0.00000, 0.00000, 341.10013);
	CreateDynamicObject(8674, -1468.95105, 1997.92383, 48.32809,   0.00000, 0.00000, 357.71991);
	CreateDynamicObject(3722, -1468.99353, 1977.26550, 51.28577,   0.00000, 0.00000, 140.15996);
	CreateDynamicObject(1358, -1476.89307, 1985.92041, 48.20649,   0.00000, 0.00000, 54.36000);
	CreateDynamicObject(12957, -1489.66577, 1943.51257, 48.79741,   4.50000, -7.86000, -57.96002);
	CreateDynamicObject(3270, -1460.15051, 1966.50842, 46.47489,   4.02000, 4.02000, 121.98007);
	CreateDynamicObject(3286, -1426.38147, 1946.86841, 54.88078,   0.00000, 0.00000, 4.50000);
	CreateDynamicObject(3286, -1425.72595, 1940.09766, 54.88078,   0.00000, 0.00000, 7.20000);
	CreateDynamicObject(3287, -1438.52368, 1933.15002, 55.25223,   6.24000, -1.56000, -90.59999);
	CreateDynamicObject(3364, -1495.96924, 2003.33362, 46.20383,   0.00000, 0.00000, 43.02000);
	CreateDynamicObject(3363, -1494.77393, 1983.82275, 46.63250,   0.00000, 0.00000, 84.54000);
	CreateDynamicObject(3268, -1502.53699, 1962.78516, 44.90564,   0.00000, 0.00000, 181.74007);
	
	//Taxi
	CreateDynamicObject(1360, -1413.68091, 2631.83691, 55.59880,   0.00000, 0.00000, 0.06000);
	CreateDynamicObject(1360, -1413.68091, 2625.64380, 55.59880,   0.00000, 0.00000, 0.06000);
	CreateDynamicObject(1360, -1413.68091, 2650.09668, 55.57260,   0.00000, 0.00000, 0.06000);
	CreateDynamicObject(1360, -1413.68091, 2659.53394, 55.57260,   0.00000, 0.00000, 0.06000);
	CreateDynamicObject(19308, -1414.14502, 2632.15308, 55.14765,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2921, -1385.61951, 2627.23096, 58.49242,   0.00000, 0.00000, 67.14000);
	CreateDynamicObject(2921, -1388.73914, 2639.40698, 57.76547,   0.00000, 0.00000, 53.10001);
	CreateDynamicObject(2921, -1388.02661, 2654.35791, 58.09864,   0.00000, 0.00000, -93.72004);
	
	//Mod/Pay'n spray
	
	CreateDynamicObject(971, 720.06940, -462.57724, 15.39299,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 1042.84998, -1026.01123, 31.09643,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 1025.36536, -1029.33276, 31.63884,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1420.50977, 2591.11279, 56.94583,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(971, 2386.68213, 1043.31189, 9.92575,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8167, 2645.81055, -2039.32849, 12.56419,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(8167, 2645.81055, -2039.32849, 15.00648,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, -1935.82751, 238.56221, 33.64063,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -1904.62756, 277.66324, 42.39743,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -2716.14404, 216.72392, 3.81582,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, 1843.31055, -1855.03943, 12.37510,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, 2005.17334, 2303.33716, 9.81711,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, 1968.37793, 2162.65747, 12.66515,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(971, 2393.19873, 1483.32202, 12.39729,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -99.80347, 1111.46582, 20.85815,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(971, -2425.07886, 1027.89941, 51.84350,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(971, 2071.52344, -1831.55835, 13.00516,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(971, 488.63022, -1735.32129, 10.59052,   0.00000, 0.00000, -8.46000);

	// Smuggle job
	CreateDynamicObject(1497, 311.45816, 312.90430, 1002.30042,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18092, 304.14590, 307.21701, 998.63501,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(8674, 301.15399, 307.26700, 1000.81042,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(18092, 300.13461, 307.21741, 998.63641,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2959, 306.32956, 299.97623, 998.14783,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(964, 305.34415, 309.72601, 998.11060,   0.00000, 0.00000, -58.19998);
	CreateDynamicObject(3015, 301.68668, 311.74286, 998.24066,   0.00000, 0.00000, -39.00002);
	CreateDynamicObject(3014, 302.36957, 311.58673, 998.35187,   0.00000, 0.00000, 108.24005);
	CreateDynamicObject(3015, 302.87653, 311.65097, 998.24066,   0.00000, 0.00000, -10.44002);
	CreateDynamicObject(1271, 298.73758, 309.97989, 998.48761,   0.00000, 0.00000, 52.38000);
	CreateDynamicObject(18885, 298.62814, 308.66806, 999.25751,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, 300.73990, 301.33539, 999.05353,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, 300.18079, 301.33539, 999.05353,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2063, 303.96561, 301.33539, 999.05353,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2063, 303.40311, 301.33539, 999.05353,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2047, 304.85727, 300.03665, 1001.11951,   0.00000, 0.00000, 180.06000);
	CreateDynamicObject(2048, 299.27844, 300.00842, 1001.19031,   0.00000, 0.00000, -180.00006);
	CreateDynamicObject(2614, 302.10770, 300.06534, 1001.10376,   0.00000, 0.00000, 179.63991);
	CreateDynamicObject(1242, 303.66589, 302.76941, 998.28314,   37.20004, -12.95998, 0.00000);
	CreateDynamicObject(3014, 303.51593, 301.73666, 998.67169,   0.00000, 0.00000, 111.06000);
	CreateDynamicObject(2040, 303.42319, 302.12366, 999.08289,   0.00000, 0.00000, 95.76002);
	CreateDynamicObject(2040, 303.36316, 301.47354, 999.08289,   0.00000, 0.00000, 70.62001);
	CreateDynamicObject(2041, 303.35510, 300.71890, 999.14099,   0.00000, 0.00000, 214.31996);
	CreateDynamicObject(348, 303.29456, 302.17712, 999.44702,   -85.80007, 46.92012, 0.00000);
	CreateDynamicObject(348, 303.32288, 301.41522, 999.44702,   -85.80007, 46.92012, 120.54003);
	CreateDynamicObject(348, 303.60599, 301.48352, 999.44702,   -85.80007, 46.92012, 263.52005);
	CreateDynamicObject(349, 303.85739, 301.77460, 999.45898,   -76.98010, 40.50010, 310.13980);
	CreateDynamicObject(346, 303.85739, 301.77460, 999.01184,   -86.58025, -47.27998, 310.13980);
	CreateDynamicObject(346, 303.87976, 300.76596, 999.01184,   -86.58025, -47.27998, 382.79977);
	CreateDynamicObject(346, 300.25601, 301.75156, 999.01184,   -86.58025, -47.27998, 382.79977);
	CreateDynamicObject(2040, 300.69525, 302.23312, 999.07068,   0.00000, 0.00000, 55.68002);
	CreateDynamicObject(2040, 300.77353, 300.83182, 999.07068,   0.00000, 0.00000, 135.54001);
	CreateDynamicObject(2041, 300.81091, 301.69919, 999.16772,   0.00000, 0.00000, 77.76000);
	CreateDynamicObject(355, 300.76053, 301.72549, 998.50330,   84.66022, -33.90010, -76.86002);
	CreateDynamicObject(358, 300.59677, 302.82324, 998.42505,   8.40000, -84.59991, 0.00000);
	CreateDynamicObject(2042, 300.76465, 301.58115, 999.50580,   0.00000, 0.00000, 80.46004);
	
	//Bayside Bank
	
	new bankfloor = CreateDynamicObject(19379, -2472.51392, 3478.80981, 2003.54053,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankfloor, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
	new bankfloor1 = CreateDynamicObject(19379, -2483.15430, 3478.81714, 2003.54004,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankfloor1, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
	new bankfloor2 = CreateDynamicObject(19379, -2483.15430, 3488.44995, 2003.54004,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankfloor2, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
	new bankfloor3 = CreateDynamicObject(19379, -2476.05054, 3469.20313, 2003.54004,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankfloor3, 0, 3975, "lanbloke", "p_floor3", 0xFFFFFFFF);
	CreateDynamicObject(1569, -2483.80664, 3483.64966, 2003.62561,   0.00000, 0.00000, 0.00000);
	new bankdoor1 = CreateDynamicObject(19304, -2488.53784, 3477.03247, 2006.72107,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankdoor1,  0, 1649, "wglass", "carshowwin2", 0xFFFFFFFF);
	CreateDynamicObject(19325, -2483.41040, 3477.10498, 2007.18469,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19325, -2476.76733, 3477.10498, 2007.18469,   0.00000, 0.00000, 90.00000);
	
	CreateDynamicObject(1703, -2487.85791, 3483.32275, 2003.56824,   0.00000, 0.00000, 90.00000);//Couch
	CreateDynamicObject(1703, -2478.42896, 3483.54175, 2003.56824,   0.00000, 0.00000, -90.00000);//Couch2
	CreateDynamicObject(638, -2480.95996, 3484.35425, 2004.29419,   0.00000, 0.00000, -47.04000);//Plant
	CreateDynamicObject(638, -2485.17896, 3484.35864, 2004.29419,   0.00000, 0.00000, 47.04000);//Plant
	CreateDynamicObject(2190, -2486.22754, 3477.14844, 2004.88538,   0.00000, 0.00000, 19.01998);//pc
	CreateDynamicObject(2190, -2481.90283, 3476.71338, 2004.88538,   0.00000, 0.00000, -76.37995);//pc
	CreateDynamicObject(2190, -2477.93433, 3476.74976, 2004.88538,   0.00000, 0.00000, -70.79998);//pc
	CreateDynamicObject(19808, -2478.74048, 3476.80835, 2004.89685,   0.00000, 0.00000, -43.20002);//keyboard
	CreateDynamicObject(19808, -2482.78491, 3476.83838, 2004.89685,   0.00000, 0.00000, -52.74004);//keyboard
	CreateDynamicObject(19808, -2485.84253, 3476.82373, 2004.89685,   0.00000, 0.00000, 57.17996);//keyboard
	CreateDynamicObject(19273, -2486.86182, 3477.49121, 2004.99121,   0.00000, 0.00000, -90.00000);//Keypad
	CreateDynamicObject(19273, -2486.87402, 3476.65015, 2004.99121,   0.00000, 0.00000, -90.00000);//Keypad
	CreateDynamicObject(19324, -2488.03931, 3480.22583, 2004.24280,   0.00000, 0.00000, 90.00000);//ATM
	CreateDynamicObject(19324, -2488.03809, 3481.71826, 2004.24280,   0.00000, 0.00000, 90.00000);//ATM
	CreateDynamicObject(11711, -2483.06226, 3483.63354, 2006.46008,   0.00000, 0.00000, 0.00000);//Exit sign
	CreateDynamicObject(19172, -2484.63550, 3474.01880, 2005.62463,   0.00000, 0.00000, 180.00000);//City poster
	CreateDynamicObject(1892, -2483.54761, 3483.17969, 2003.60815,   0.00000, 0.00000, 0.00000);//Security gate
	CreateDynamicObject(1886, -2478.27710, 3485.35059, 2007.31604,   10.32000, -0.48000, -39.48000);//Security cam
	CreateDynamicObject(1886, -2478.20508, 3472.78931, 2007.31604,   10.32000, -0.48000, -160.73993);//Security cam
	CreateDynamicObject(1886, -2490.52490, 3473.12012, 2004.87854,   0.00000, 0.00000, -269.81998);//Security cam
	CreateDynamicObject(1886, -2488.12891, 3477.61914, 2007.30640,   3.17999, -2.64000, 125.64001);//Security cam
	CreateDynamicObject(1886, -2483.65771, 3471.93164, 2004.03149,   11.39999, -5.82000, -57.05998);//Security cam
	CreateDynamicObject(1808, -2478.11743, 3480.98120, 2003.62744,   0.00000, 0.00000, -90.00000);//Water thing
	CreateDynamicObject(2267, -2477.93115, 3479.16821, 2005.77136,   0.00000, 0.00000, -90.00000);//Boat poster
	CreateDynamicObject(2614, -2479.88721, 3472.50122, 2005.85950,   0.00000, 5.00000, 180.64030);//Americca
	CreateDynamicObject(948, -2488.02686, 3482.71094, 2003.57080,   0.00000, 0.00000, 0.00000);//plant
	CreateDynamicObject(948, -2478.27295, 3485.28418, 2003.57080,   0.00000, 0.00000, 47.10004);//plant
	CreateDynamicObject(19273, -2481.00464, 3472.42944, 2004.99121,   0.00000, 0.00000, 180.00000);//keypad2
	CreateDynamicObject(19273, -2481.71338, 3472.42017, 2004.99121,   0.00000, 0.00000, 180.00000);//keypad2
	CreateDynamicObject(1775, -2472.32764, 3473.09814, 2004.71338,   0.00000, 0.00000, -90.00000);//sprunk
	CreateDynamicObject(2637, -2474.38330, 3475.29736, 2004.04407,   0.00000, 0.00000, 90.00000);//table
	CreateDynamicObject(1811, -2473.42041, 3475.93677, 2004.14319,   0.00000, 0.00000, 12.00000);//chair
	CreateDynamicObject(1811, -2473.96045, 3474.89063, 2004.14319,   0.00000, 0.00000, -8.70000);//chair
	CreateDynamicObject(1811, -2474.81274, 3475.95483, 2004.14319,   0.00000, 0.00000, -182.51982);//chair
	CreateDynamicObject(1811, -2475.40356, 3474.95337, 2004.14319,   0.00000, 0.00000, -182.51982);//chair
	CreateDynamicObject(2202, -2477.28027, 3474.53931, 2003.62708,   0.00000, 0.00000, 90.00000);//copymachine
	CreateDynamicObject(2257, -2474.54443, 3476.33252, 2005.77722,   0.00000, 0.00000, 0.00000);//canteen pic
    CreateDynamicObject(1808, -2471.99243, 3474.53516, 2003.62744,   0.00000, 0.00000, -90.00000);//Wather thing




	new bankpilar = CreateDynamicObject(18762, -2488.88184, 3480.97412, 2004.75964,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankpilar, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	new bankpilar1 = CreateDynamicObject(18762, -2477.42700, 3480.97412, 2004.75964,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankpilar1, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	
	
	new safedoor1 = CreateDynamicObject(19304, -2481.31641, 3472.13159, 2006.72107,   0.00000, 0.00000, 90.00000); //Thing above door
	SetDynamicObjectMaterial(safedoor1, 0, 1649, "wglass", "carshowwin2", 0xFFFFFFFF);
	
	new bankceiling = CreateDynamicObject(19378, -2483.16162, 3477.26367, 2007.20764,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankceiling, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
	new bankceiling1 = CreateDynamicObject(19378, -2483.16162, 3486.89844, 2007.20764,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankceiling1, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
	new bankceiling2 = CreateDynamicObject(19378, -2472.67017, 3477.26367, 2007.20764,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(bankceiling2, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
	
	new safefloor = CreateDynamicObject(19379, -2488.76880, 3469.07031, 2000.73901,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(safefloor, 0, 4821, "union_las", "tarmacplain_bank", 0xFFFFFFFF);
	
	new safewall1 = CreateDynamicObject(19454, -2486.10034, 3473.92456, 2001.87195,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(safewall1, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall2 = CreateDynamicObject(19454, -2482.09644, 3472.36548, 2001.87195,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(safewall2, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall3 = CreateDynamicObject(19454, -2486.10498, 3473.91992, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(safewall3, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall4 = CreateDynamicObject(19454, -2486.12158, 3472.36548, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(safewall4, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall5 = CreateDynamicObject(19454, -2490.85620, 3469.07813, 2001.87195,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(safewall5, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall6 = CreateDynamicObject(19454, -2490.85620, 3469.07813, 2005.36682,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(safewall6, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall7 = CreateDynamicObject(19454, -2483.52100, 3467.49707, 2001.87195,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(safewall7, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	new safewall8 = CreateDynamicObject(19454, -2487.50659, 3464.18286, 2001.87195,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(safewall8, 0, 3899, "hospital2", "cutscenebank128", 0xFFFFFFFF);
	
	new saferoof = CreateDynamicObject(19378, -2488.75049, 3467.61133, 2003.70618,   0.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(saferoof, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
	new saferoof1 = CreateDynamicObject(19378, -2486.43921, 3469.19580, 2005.87524,   0.00000, 75.00000, 0.00000);
	SetDynamicObjectMaterial(saferoof1, 0, 11301, "carshow_sfse", "ws_officy_ceiling", 0xFFFFFFFF);
	
	new bankstairs1 = CreateDynamicObject(18767, -2486.57910, 3476.35571, 1998.72766,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bankstairs1, 0, 3673, "xrf_refineryla", "Metal1_128", 0xFFFFFFFF);
	new bankstairs2 = CreateDynamicObject(18767, -2486.57007, 3475.93579, 1998.72595,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bankstairs2, 0, 3673, "xrf_refineryla", "Metal1_128", 0xFFFFFFFF);
	
	new banksafepilar1 = CreateDynamicObject(18980, -2490.83765, 3458.89478, 2000.96655,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar1, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar2 = CreateDynamicObject(18762, -2490.83838, 3470.89404, 2002.66565,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar2, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar3 = CreateDynamicObject(18980, -2490.83765, 3458.89478, 2003.63220,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar3, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar4 = CreateDynamicObject(18762, -2490.73022, 3464.49121, 2002.66565,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar4, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar5 = CreateDynamicObject(18980, -2479.49072, 3464.32129, 2000.96655,   90.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar5, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar6 = CreateDynamicObject(18980, -2479.49072, 3464.32129, 2003.63416,   90.00000, 90.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar6, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar7 = CreateDynamicObject(18762, -2483.80981, 3464.49121, 2002.66565,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar7, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar8 = CreateDynamicObject(18980, -2483.69702, 3458.89478, 2000.96655,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar8, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar9 = CreateDynamicObject(18762, -2483.69604, 3470.89404, 2002.66565,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar9, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	new banksafepilar10 = CreateDynamicObject(18980, -2483.69702, 3458.89478, 2003.63220,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(banksafepilar10, 0, 3267, "milbase", "ws_metalpanel1", 0xFFFFFFFF);
	
	CreateDynamicObject(2007, -2490.37964, 3464.97192, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3469.91821, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37964, 3469.91870, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37964, 3468.94116, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37964, 3467.95459, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37964, 3466.96411, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37964, 3465.98389, 2001.76428,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3468.94116, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3467.95459, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3466.96411, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3465.98389, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2490.37915, 3464.97192, 2000.45935,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2007, -2489.76392, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2489.76392, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2488.78467, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2487.78198, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2486.79663, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2485.79614, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2484.79712, 3464.77075, 2000.45935,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2484.11255, 3464.97192, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2488.78467, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2487.78198, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2486.79663, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2485.79614, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2484.79712, 3464.77002, 2001.76428,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(2007, -2484.11255, 3465.98389, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11255, 3467.95459, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11255, 3468.94116, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11255, 3469.91821, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3464.97192, 2001.76428,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3465.98389, 2001.76428,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11255, 3466.96411, 2000.45935,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3466.96411, 2001.76428,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3467.95459, 2001.76428,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3468.94116, 2001.76428,   0.00000, 0.00000, -90.00000);
	CreateDynamicObject(2007, -2484.11157, 3469.91821, 2001.76428,   0.00000, 0.00000, -90.00000);
	
	new safedesk = CreateDynamicObject(2115, -2487.89673, 3468.77100, 2000.81641,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(safedesk, 0, 8572, "vgssstairs1", "metalic_64", 0xFFFFFFFF);
	new safedesk1 = CreateDynamicObject(2115, -2487.89673, 3467.80273, 2000.81641,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(safedesk1, 0, 8572, "vgssstairs1", "metalic_64", 0xFFFFFFFF);
	
	new bank1 = CreateDynamicObject(1569, -2483.80664, 3483.64966, 2006.12000,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank1, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank3 = CreateDynamicObject(19454, -2488.48730, 3478.80859, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank3, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank4 = CreateDynamicObject(19454, -2477.82153, 3478.81348, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank4, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank5 = CreateDynamicObject(19454, -2486.10034, 3473.92456, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank5, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);//
	new bank6 = CreateDynamicObject(19362, -2481.19507, 3484.74219, 2005.37280,   0.00000, 0.00000, -47.04002);
	SetDynamicObjectMaterial(bank6, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank7 = CreateDynamicObject(19454, -2476.49585, 3472.36548, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank7, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	new bank8 = CreateDynamicObject(19362, -2488.48730, 3485.23096, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank8, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank9 = CreateDynamicObject(19362, -2487.01831, 3485.81226, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank9, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank10 = CreateDynamicObject(19362, -2478.54102, 3485.81226, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank10, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank11 = CreateDynamicObject(19362, -2477.82153, 3485.23730, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank11, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank12 = CreateDynamicObject(19362, -2484.91577, 3484.74023, 2005.37280,   0.00000, 0.00000, 47.04000);
	SetDynamicObjectMaterial(bank12, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bank13 = CreateDynamicObject(19466, -2479.03809, 3485.71265, 2005.43958,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank13, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
	new bank14 = CreateDynamicObject(19466, -2481.17871, 3484.62524, 2005.43958,   0.00000, 0.00000, -47.04000);
	SetDynamicObjectMaterial(bank14, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
	new bank15 = CreateDynamicObject(19466, -2484.96655, 3484.65332, 2005.43958,   0.00000, 0.00000, 47.04000);
	SetDynamicObjectMaterial(bank15, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
	new bank16 = CreateDynamicObject(19466, -2487.24365, 3485.70386, 2005.43958,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank16, 0, 3979, "civic01_lan", "sl_laglasswall1", 0xFFFFFFFF);
	new bank17 = CreateDynamicObject(19454, -2472.94116, 3476.42969, 2005.37280,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bank17, 0, 8460, "vgseland03_lvs", "ceaserwall06_128", 0xFFFFFFFF);
	new bank18 = CreateDynamicObject(19454, -2471.76147, 3477.15649, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank18, 0, 8460, "vgseland03_lvs", "ceaserwall06_128", 0xFFFFFFFF);
	new bank19 = CreateDynamicObject(19454, -2477.80151, 3478.81494, 2005.37280,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bank19, 0, 8460, "vgseland03_lvs", "ceaserwall06_128", 0xFFFFFFFF);

	
	
	new bankcounter1 = CreateDynamicObject(19455, -2481.90405, 3476.63599, 2003.12512,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bankcounter1, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bankcounter2 = CreateDynamicObject(19815, -2482.23608, 3477.04883, 2004.88623,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter2, 0, 10388, "scum2_sfs", "black32", 0xFFFFFFFF);
	new bankcounter3 = CreateDynamicObject(19815, -2479.23608, 3477.04883, 2004.88623,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter3, 0, 10388, "scum2_sfs", "black32", 0xFFFFFFFF);
	new bankcounter4 = CreateDynamicObject(9131, -2486.33545, 3477.25903, 2003.74121,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter4, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	new bankcounter5 = CreateDynamicObject(9131, -2482.20752, 3477.25903, 2003.74121,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter5, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	new bankcounter6 = CreateDynamicObject(19442, -2486.80444, 3477.01270, 2005.37585,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter6, 0, 10388, "scum2_sfs", "black32", 0xFFFFFFFF);//
	new bankcounter7 = CreateDynamicObject(19815, -2485.23657, 3477.04883, 2004.88623,   90.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter7, 0, 10388, "scum2_sfs", "black32", 0xFFFFFFFF);
	new bankcounter8 = CreateDynamicObject(9131, -2478.30151, 3477.25903, 2003.74121,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter8, 0, 17547, "eastbeach4a_lae2", "bluestucco1", 0xFFFFFFFF);
	new bankcounter9 = CreateDynamicObject(19455, -2481.90405, 3477.45996, 2003.12512,   0.00000, 0.00000, 90.00000);
	SetDynamicObjectMaterial(bankcounter9, 0, 16150, "ufo_bar", "GEwhite1_64", 0xFFFFFFFF);
	new bankcounter10 = CreateDynamicObject(19442, -2477.82544, 3477.01270, 2005.37585,   0.00000, 0.00000, 0.00000);
	SetDynamicObjectMaterial(bankcounter10, 0, 10388, "scum2_sfs", "black32", 0xFFFFFFFF);


}
//------------------------------------------------------------------------------
// END OF SCRIPT
//------------------------------------------------------------------------------

/*------------------------------------------------------------------------------
			######## ##        ######             ###     ######
			##       ##       ##    ##           ## ##   ##    ##
			##       ##       ##                ##   ##  ##
			######   ##       ##               ##     ## ##
			##       ##       ##               ######### ##
			##       ##       ##    ##         ##     ## ##    ##
			######## ########  ######  ####### ##     ##  ######


 							########  ##    ##
							##     ##  ##  ##
							##     ##   ####
							########     ##
							##     ##    ##
							##     ##    ##
							########     ##


		######## ##        #######   ######  ######## ########   #######
		##       ##       ##     ## ##    ##    ##    ##     ## ##     ##
		##       ##       ##     ## ##          ##    ##     ## ##     ##
		######   ##       ##     ## ##          ##    ########  ##     ##
		##       ##       ##     ## ##          ##    ##   ##   ##     ##
		##       ##       ##     ## ##    ##    ##    ##    ##  ##     ##
		######## ########  #######   ######     ##    ##     ##  #######

                             Anti-Cheat(ELC_AC)

                                PROTECTIONS :
                              Anti-Weapon HACK
                               Anti-Ammo HACK
                            Anti-Ammo Block HACK
                               Anti-Money HACK
                               Anti-Speed HACK
				     	Anti-Teleport & Anti-Airbreak
				     		  Anti-Health HACK
				     		  Anti-Armour HACK
				  		  Anti-VEHICLE TELEPORT HACK
					     	    Anti-Crasher

                                    BUG :
               					  Nothing

                                  VERSION :
						            V4.4

							     COMPATIBLE :
							     SA-MP 0.3z

                                  CREDITS :
                              ELOCTRO (SCRIPT)
                       SIM (GetTickCount for linux)
                            Donya(Anti-Crasher)
                       Mineralo(OnPlayerCheat Update)

				          ELC_AC THE BEST PROTECTION
		                              !

                                    \**/
/*/- Anti-Cheat By Eloctro -----------------------------------------------------

                            ELC PRODUCTION(FRANCE)

                          http://elcprod.bb-fr.com/
*/
#if defined _elc_ac_included
	#endinput
#endif
#define _elc_ac_included

#if defined _elc_ac_compill
#error You must add ELC_CONNECTOR or ELC_BASE but not add both
#endif
#define _elc_ac_compill
/*----------------------------------------------------------------------------*/
#include <a_samp>
/*----------------------------------------------------------------------------*/
//Anti-Cheat Statut defaut :
#define ANTI_WEAPON_&_AMMO_HACK     1
#define ANTI_AMMO_BLOCK_HACK        1
#define ANTI_MONEY_HACK             1
#define ANTI_SPEED_HACK             1
#define ANTI_TELEPORT/AIBREAK_HACK  1
#define ANTI_HEALTH_HACK            0//Not fix
#define ANTI_ARMOUR_HACK            0//Not fix
#define ANTI_VEHICLE-TELEPORT_HACK  2//1->Normal Protection,2->Hight Proection
//Configuration :
#define MAX_SPEED_VEHICLE                   380.0 // SPEED VEHICLE MAX(380=default)
#define MAX_VEHICLE_DISTANCE_PER_SECOND     180   // DISTANCE PARCOUR MAX VEHICLE PER SECOND(180=default)
#define MAX_PED_DISTANCE_PER_SECOND         100   // DISTANCE PARCOUR MAX AT PED PER SECOND(100=default)
#define SPRINT_SPEED                        30.0  // (30=DEFAULT)
#define TIMER_CHEAT_RATE                    3500  // (3500=DEFAULT)
#define TIME_GRANULITY                      50    // Granulity GetTickCount
#define DELAY_LOAD_AFTER_SPAWN              5000
#define MAX_DELAY_SEND_STATS                2000
#define MAX_DELAY_WAIT_AFTER_SPAWN          3000
#define MAX_VEHICLE_DISTANCE_UCM            10
#define MAX_WEAPON_SHOT_FOR_CHECK           5
//STATUS MODE :
//#define NO_TICK_COUNT  //uncomment If GetTickCount() bug(linux?)
#define INCLUDE_BASE_MODE //uncomment to pass in mod include
#define MODE_DELAY_SEND_STATS //uncomment if the sending of stats is a bit slow(RECOMMANDED)
#define DISABLE_MONEY_DEATHLOSE //uncomment if you disable the lose of 100$ after death
//Calcul(DON'T TOUCH)----------------------------------------------------------
#define XMAX_VEHICLE_DISTANCE_PER_SECOND MAX_VEHICLE_DISTANCE_PER_SECOND*(TIMER_CHEAT_RATE/1000)
#define XMAX_PED_DISTANCE_PER_SECOND MAX_PED_DISTANCE_PER_SECOND*(TIMER_CHEAT_RATE/1000)
#define SaveTime(%0,%1) %0=%1+MAX_DELAY_SEND_STATS
#define IsPassTime(%0,%1,%2) (%1<%2&&CheatPlayerInfo[%0][elc_LastUpdate]!=0&&CheatPlayerInfo[%0][elc_LastUpdate]<%2)//Time Action ,Time Now
#define IsPlayerCheatPos(%0) (((GetPlayerSurfingVehicleID(%0)!=INVALID_VEHICLE_ID || IsPlayerInAnyVehicle(%0)) && !IsPlayerInRangeOfPoint(%0,XMAX_VEHICLE_DISTANCE_PER_SECOND,CheatPlayerInfo[%0][elc_posx],CheatPlayerInfo[%0][elc_posy],CheatPlayerInfo[%0][elc_posz]))||!IsPlayerInRangeOfPoint(%0,XMAX_PED_DISTANCE_PER_SECOND,CheatPlayerInfo[%0][elc_posx],CheatPlayerInfo[%0][elc_posy],CheatPlayerInfo[%0][elc_posz]))
#define LastPlayerUpdate(%0) (CheatPlayerInfo[%0][elc_LastUpdate]-GetTickCount())

#define IsPlayerCheatAllowTelPos(%0) (((GetPlayerSurfingVehicleID(%0)!=INVALID_VEHICLE_ID || IsPlayerInAnyVehicle(%0)) && !IsPlayerInRangeOfPoint(%0,XMAX_VEHICLE_DISTANCE_PER_SECOND,CheatPlayerInfo[%0][elc_AllowTelX],CheatPlayerInfo[%0][elc_AllowTelY],CheatPlayerInfo[%0][elc_AllowTelZ]))|| \
!IsPlayerInRangeOfPoint(%0,XMAX_PED_DISTANCE_PER_SECOND,CheatPlayerInfo[%0][elc_AllowTelX],CheatPlayerInfo[%0][elc_AllowTelY],CheatPlayerInfo[%0][elc_AllowTelZ]))

#define IsPlayerUpdatePos(%0) !IsPlayerInRangeOfPoint(%0,0.5,CheatPlayerInfo[%0][elc_posx],CheatPlayerInfo[%0][elc_posy],CheatPlayerInfo[%0][elc_posz])

#define ELC_AC_IsCreatedVehicle(%0) (GetVehicleModel(%0)!=0)
/*----------------------------------------------------------------------------*/
enum aELCp
{
	elc_money,
	elc_ammo[13],
	elc_weapon[13],
	elc_tickfire,
	elc_ammoFire,
	elc_weaponFire,
	Float:elc_health,
	Float:elc_armour,
	elc_timer,
	Float:elc_posx,
	Float:elc_posy,
	Float:elc_posz,
	elc_interior,
	elc_virtualworld,
	Float:elc_AllowTelX,
	Float:elc_AllowTelY,
	Float:elc_AllowTelZ,
	elc_AntiTeleportHack,
	elc_AntiWeaponHack,
	elc_AntiAmmoBlockHack,
	elc_AntiMoneyHack,
	elc_AntiSpeedHack,
	elc_AntiHealthHack,
	elc_AntiArmourHack,
	elc_AntiVehicleTelportHack,
#if defined MODE_DELAY_SEND_STATS
	elc_GiveWeaponTime,
	elc_GiveMoneyTime,
	elc_GiveHealthTime,
	elc_GiveArmourTime,
#endif
	elc_SetPositionTime,
	elc_PlayerEnterTime,
	elc_PlayerEnterVeh,
	elc_PossibleVehicleHack,
	elc_LastUpdate,
	elc_TimeSpawn
};

new CheatPlayerInfo[MAX_PLAYERS][aELCp];
enum aELCv
{
	Float:elc_vHealth,
	Float:elc_vX,
	Float:elc_vY,
	Float:elc_vZ,
	Float:elc_vAngle,
	elc_vSetPositionTime,
	elc_vPossiblePlayerHack,
	elc_vPossibleHackTime,
	elc_vStatut
};
new CheatVehicleInfo[MAX_VEHICLES][aELCv];
#if defined NO_TICK_COUNT
enum aELCs
{
	elc_TickCount,
	elc_TimerTick
};
new CheatServerInfo[aELCs];
#endif
/*----------------------------------------------------------------------------*/
stock Float:elc_GetPlayerSpeedXY(playerid)
{
new Float:elc_SpeedX, Float:elc_SpeedY, Float:elc_SpeedZ;
new Float:elc_Speed;
if(IsPlayerInAnyVehicle(playerid)) GetVehicleVelocity(GetPlayerVehicleID(playerid), elc_SpeedX, elc_SpeedY, elc_SpeedZ);
else GetPlayerVelocity(playerid, elc_SpeedX, elc_SpeedY, elc_SpeedZ);
elc_Speed = floatsqroot(floatadd(floatpower(elc_SpeedX, 2.0), floatpower(elc_SpeedY, 2.0)));
return floatmul(elc_Speed, 200.0);
}
/*----------------------------------------------------------------------------*/
stock Float:elc_GetVehicleSpeedXY(vehicleid)
{
new Float:elc_SpeedX, Float:elc_SpeedY, Float:elc_SpeedZ;
new Float:elc_Speed;
GetVehicleVelocity(vehicleid, elc_SpeedX, elc_SpeedY, elc_SpeedZ);
elc_Speed = floatsqroot(floatadd(floatpower(elc_SpeedX, 2.0), floatpower(elc_SpeedY, 2.0)));
return floatmul(elc_Speed, 200.0);
}
/*----------------------------------------------------------------------------*/
#if defined NO_TICK_COUNT
	#define GetTickCount()                          (CheatServerInfo[TickCount])
	forward TimeUpdate();
	public TimeUpdate()
	{
		CheatServerInfo[elc_TickCount] +=TIME_GRANULITY;
		return 1;
	}
#endif
forward OnPlayerCheckCheat(playerid);
forward OnPlayerCheat(playerid, cheatid, source[]);
forward ELC_AC_EnablePlayerCheatID(playerid,cheatid,enable);
forward RemovePlayerWeapon(playerid, weaponid);
/*----------------------------------------------------------------------------*/
forward ELC_AC_GivePlayerMoney(playerid, money);
public ELC_AC_GivePlayerMoney(playerid, money)
{
    if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==1)CheatPlayerInfo[playerid][elc_AntiMoneyHack]=2;
	CheatPlayerInfo[playerid][elc_money] += money;
	GivePlayerMoney(playerid, money);
	#if defined MODE_DELAY_SEND_STATS
	SaveTime(CheatPlayerInfo[playerid][elc_GiveMoneyTime],GetTickCount());
	#endif
	if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==2)CheatPlayerInfo[playerid][elc_AntiMoneyHack]=1;
	return 1;
}
stock initial_GivePlayerMoney(playerid, money)
{
	return GivePlayerMoney(playerid, money);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GivePlayerMoney
    #undef GivePlayerMoney
#else
    #define _ALS_GivePlayerMoney
#endif
#define GivePlayerMoney ELC_AC_GivePlayerMoney
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
forward ELC_AC_ResetPlayerMoney(playerid);
public ELC_AC_ResetPlayerMoney(playerid)
{
	if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==1)CheatPlayerInfo[playerid][elc_AntiMoneyHack]=2;
	ResetPlayerMoney(playerid);
	CheatPlayerInfo[playerid][elc_money] = 0;
	#if defined MODE_DELAY_SEND_STATS
	SaveTime(CheatPlayerInfo[playerid][elc_GiveMoneyTime],GetTickCount());
	#endif
	if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==2)CheatPlayerInfo[playerid][elc_AntiMoneyHack]=1;
	return 1;
}
stock initial_ResetPlayerMoney(playerid)
{
	return ResetPlayerMoney(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_ResetPlayerMoney
    #undef ResetPlayerMoney
#else
    #define _ALS_ResetPlayerMoney
#endif
#define ResetPlayerMoney ELC_AC_ResetPlayerMoney
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
forward ELC_AC_GetPlayerMoney(playerid);
public ELC_AC_GetPlayerMoney(playerid)
{
	new elc_gpm=GetPlayerMoney(playerid);
	if(GetPlayerMoney(playerid)<CheatPlayerInfo[playerid][elc_money]) return elc_gpm;
	return CheatPlayerInfo[playerid][elc_money];
}
stock initial_GetPlayerMoney(playerid)
{
	return GetPlayerMoney(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GetPlayerMoney
    #undef GetPlayerMoney
#else
    #define _ALS_GetPlayerMoney
#endif
#define GetPlayerMoney ELC_AC_GetPlayerMoney
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
forward ELC_AC_SetPlayerPos(playerid, Float:ix, Float:iy, Float:iz);
public ELC_AC_SetPlayerPos(playerid, Float:ix, Float:iy, Float:iz)
{
    if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==1)CheatPlayerInfo[playerid][elc_AntiTeleportHack]=2;
    CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
	CheatPlayerInfo[playerid][elc_AllowTelX]=ix; CheatPlayerInfo[playerid][elc_AllowTelY]=iy; CheatPlayerInfo[playerid][elc_AllowTelZ]=iz;
	SetPlayerPos(playerid, ix, iy, iz);
    if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==2)CheatPlayerInfo[playerid][elc_AntiTeleportHack]=1;
	return 1;
}
stock initial_SetPlayerPos(playerid, Float:ix, Float:iy, Float:iz)
{
	return SetPlayerPos(playerid, ix, iy, iz);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_SetPlayerPos
    #undef SetPlayerPos
#else
    #define _ALS_SetPlayerPos
#endif
#define SetPlayerPos ELC_AC_SetPlayerPos
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_PutPlayerInVehicle(playerid,vehicleid, seatid);
public ELC_AC_PutPlayerInVehicle(playerid,vehicleid, seatid)
{
    if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==1)CheatPlayerInfo[playerid][elc_AntiTeleportHack]=2;
    CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
    CheatPlayerInfo[playerid][elc_PlayerEnterVeh]=vehicleid;
    GetVehiclePos(vehicleid,CheatPlayerInfo[playerid][elc_AllowTelX],CheatPlayerInfo[playerid][elc_AllowTelY],CheatPlayerInfo[playerid][elc_AllowTelZ]);
    GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
	SaveTime(CheatPlayerInfo[playerid][elc_SetPositionTime],GetTickCount());
	PutPlayerInVehicle(playerid,vehicleid, seatid);
	if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==2)CheatPlayerInfo[playerid][elc_AntiTeleportHack]=1;
	return 1;
}
stock initial_PutPlayerInVehicle(playerid,vehicleid, seatid)
{
	return PutPlayerInVehicle(playerid,vehicleid, seatid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_PutPlayerInVehicle
    #undef PutPlayerInVehicle
#else
    #define _ALS_PutPlayerInVehicle
#endif
#define PutPlayerInVehicle ELC_AC_PutPlayerInVehicle
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_RemovePlayerFromVehicle(playerid);
public ELC_AC_RemovePlayerFromVehicle(playerid)
{
    CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
	RemovePlayerFromVehicle(playerid);
	return 1;
}
stock initial_RemovePlayerFromVehicle(playerid)
{
	return RemovePlayerFromVehicle(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_RemovePlayerFromVehicle
    #undef RemovePlayerFromVehicle
#else
    #define _ALS_RemovePlayerFromVehicle
#endif
#define RemovePlayerFromVehicle ELC_AC_RemovePlayerFromVehicle
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_TogglePlayerSpectating(playerid, toggle);
public ELC_AC_TogglePlayerSpectating(playerid, toggle)
{
	if(toggle==1)
	{
		if(CheatPlayerInfo[playerid][elc_AntiSpeedHack]==1) CheatPlayerInfo[playerid][elc_AntiSpeedHack]=3;
		if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==1) CheatPlayerInfo[playerid][elc_AntiTeleportHack]=3;
	}
	else
	{
		if(CheatPlayerInfo[playerid][elc_AntiSpeedHack]==3) CheatPlayerInfo[playerid][elc_AntiSpeedHack]=1;
		if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==3)CheatPlayerInfo[playerid][elc_AntiTeleportHack]=1;
		GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
		SaveTime(CheatPlayerInfo[playerid][elc_SetPositionTime],GetTickCount());
	}
	return TogglePlayerSpectating(playerid, toggle);
}
stock initial_TogglePlayerSpectating(playerid, toggle)
{
	return TogglePlayerSpectating(playerid, toggle);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_TogglePlayerSpectating
    #undef TogglePlayerSpectating
#else
    #define _ALS_TogglePlayerSpectating
#endif
#define TogglePlayerSpectating ELC_AC_TogglePlayerSpectating
//ALS_OFF_SYSTEME ----------------
#endif
//Weapon------------------------------------------------------------------------
/*#define elc_IsNotWeaponNoAmmo(%0) (%0!=0 && %0!=1 && %0!=10)
#define elc_IsNotWeaponVise(%0,%1) (%0>1 && %0!=10 && %0!=6 && %0!=9 && %0!=11 && %0!=12 && %1!=35 && %1!=36 %1!=43)*/
stock elc_IsNotWeaponNoAmmo(WeaponID)
{
	new elc_slot=elc_GetWeaponSlot(WeaponID);
	if(elc_slot!=0 && elc_slot!=1 && elc_slot!=10)return 1;
	return 0;
}
stock elc_IsNotWeaponVise(WeaponID)
{
	new elc_slot=elc_GetWeaponSlot(WeaponID);
	if(elc_slot>1 && elc_slot!=10 && elc_slot!=6 && elc_slot!=9 && elc_slot!=11 && elc_slot!=12 && elc_slot!=35 && elc_slot!=36 && elc_slot!=43) return 1;
	return 0;
}
stock elc_IsGiveVehicleWeapon(WeaponID)
{
	if(WeaponID==25 || WeaponID==46 || WeaponID==2) return 1;
	return 0;
}
#define IsValidWeapon(%0) (%0>=1 && %0<=18 || %0>=21 && %0<=46)
stock elc_GetWeaponSlot(weaponid)
{
	new elc_slot=-1;
	switch(weaponid)
	{
		case 0,1: elc_slot = 0;
		case 2 .. 9: elc_slot = 1;
		case 10 .. 15: elc_slot = 10;
		case 16 .. 18, 39: elc_slot = 8;
		case 22 .. 24: elc_slot =2;
		case 25 .. 27: elc_slot = 3;
		case 28, 29, 32: elc_slot = 4;
		case 30, 31: elc_slot = 5;
		case 33, 34: elc_slot = 6;
		case 35 .. 38: elc_slot = 7;
		case 40: elc_slot = 12;
		case 41 .. 43: elc_slot = 9;
		case 44 .. 46: elc_slot = 11;
	}
	return elc_slot;
}
/*----------------------------------------------------------------------------*/
forward ELC_AC_GivePlayerWeapon(playerid,Weapon,ammo);
public ELC_AC_GivePlayerWeapon(playerid,Weapon,ammo)
{
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=2;
	new slot=elc_GetWeaponSlot(Weapon);
	if(IsValidWeapon(Weapon) && slot!=-1)
	{
	    CheatPlayerInfo[playerid][elc_tickfire]=0;
		CheatPlayerInfo[playerid][elc_weapon][slot] = Weapon;
		CheatPlayerInfo[playerid][elc_ammo][slot] += ammo;
		GivePlayerWeapon(playerid,Weapon,ammo);
		#if defined MODE_DELAY_SEND_STATS
		SaveTime(CheatPlayerInfo[playerid][elc_GiveWeaponTime],GetTickCount());
		#endif
	}
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==2)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=1;
    return 1;
}
stock initial_GivePlayerWeapon(playerid,Weapon,ammo)
{
	return GivePlayerWeapon(playerid,Weapon,ammo);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_GivePlayerWeapon
    #undef GivePlayerWeapon
#else
    #define _ALS_GivePlayerWeapon
#endif
#define GivePlayerWeapon ELC_AC_GivePlayerWeapon
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_SetPlayerAmmo(playerid,weapon,ammo);
public ELC_AC_SetPlayerAmmo(playerid,weapon,ammo)
{
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=2;
	new slot=elc_GetWeaponSlot(weapon);
 	if(weapon>0 && 47>weapon && slot!=-1)
 	{
		CheatPlayerInfo[playerid][elc_ammo][slot]=ammo;
		SetPlayerAmmo(playerid,weapon,ammo);
		#if defined MODE_DELAY_SEND_STATS
		SaveTime(CheatPlayerInfo[playerid][elc_GiveWeaponTime],GetTickCount());
		#endif
	}
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==2)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=1;
    return 1;
}
stock initial_SetPlayerAmmo(playerid,weapon,ammo)
{
	return SetPlayerAmmo(playerid,weapon,ammo);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_SetPlayerAmmo
    #undef SetPlayerAmmo
#else
    #define _ALS_SetPlayerAmmo
#endif
#define SetPlayerAmmo ELC_AC_SetPlayerAmmo
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_ResetPlayerWeapons(playerid);
public ELC_AC_ResetPlayerWeapons(playerid)
{
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=2;
	for(new i = 0; i <13; i++)
	{
        CheatPlayerInfo[playerid][elc_weapon][i]=0;
        CheatPlayerInfo[playerid][elc_ammo][i]=0;
	}
	ResetPlayerWeapons(playerid);
	#if defined MODE_DELAY_SEND_STATS
	SaveTime(CheatPlayerInfo[playerid][elc_GiveWeaponTime],GetTickCount());
	#endif
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==2)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=1;
    return 1;
}
stock initial_ResetPlayerWeapons(playerid)
{
	return ResetPlayerWeapons(playerid);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_ResetPlayerWeapons
    #undef ResetPlayerWeapons
#else
    #define _ALS_ResetPlayerWeapons
#endif
#define ResetPlayerWeapons ELC_AC_ResetPlayerWeapons
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_SetPlayerHealth(playerid,Float:health);
public ELC_AC_SetPlayerHealth(playerid,Float:health)
{
	if(CheatPlayerInfo[playerid][elc_AntiHealthHack]==1)CheatPlayerInfo[playerid][elc_AntiHealthHack]=2;
	CheatPlayerInfo[playerid][elc_health]=health;
	SetPlayerHealth(playerid,health);
	#if defined MODE_DELAY_SEND_STATS
	SaveTime(CheatPlayerInfo[playerid][elc_GiveHealthTime],GetTickCount());
	#endif
	if(CheatPlayerInfo[playerid][elc_AntiHealthHack]==2)CheatPlayerInfo[playerid][elc_AntiHealthHack]=1;
    return 1;
}
stock initial_SetPlayerHealth(playerid,Float:health)
{
	return SetPlayerHealth(playerid,health);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_SetPlayerHealth
    #undef SetPlayerHealth
#else
    #define _ALS_SetPlayerHealth
#endif
#define SetPlayerHealth ELC_AC_SetPlayerHealth
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_SetPlayerArmour(playerid,Float:armour);
public ELC_AC_SetPlayerArmour(playerid,Float:armour)
{
	if(CheatPlayerInfo[playerid][elc_AntiArmourHack]==1)CheatPlayerInfo[playerid][elc_AntiArmourHack]=2;
	CheatPlayerInfo[playerid][elc_armour]=armour;
	SetPlayerArmour(playerid,armour);
	#if defined MODE_DELAY_SEND_STATS
	SaveTime(CheatPlayerInfo[playerid][elc_GiveArmourTime],GetTickCount());
	#endif
	if(CheatPlayerInfo[playerid][elc_AntiArmourHack]==2)CheatPlayerInfo[playerid][elc_AntiArmourHack]=1;
    return 1;
}
stock initial_SetPlayerArmour(playerid,Float:armour)
{
	return SetPlayerArmour(playerid,armour);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_SetPlayerArmour
    #undef SetPlayerArmour
#else
    #define _ALS_SetPlayerArmour
#endif
#define SetPlayerArmour ELC_AC_SetPlayerArmour
//ALS_OFF_SYSTEME ----------------
#endif
/*----------------------------------------------------------------------------*/
forward ELC_AC_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z);
public ELC_AC_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z)
{
	CheatVehicleInfo[vehicleid][elc_vX]=x;
	CheatVehicleInfo[vehicleid][elc_vY]=y;
	CheatVehicleInfo[vehicleid][elc_vZ]=z;
    SetVehiclePos(vehicleid,x,y,z);
    CheatVehicleInfo[vehicleid][elc_vStatut]=0;
    return 1;
}
stock initial_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z)
{
	return SetVehiclePos(vehicleid,x,y,z);
}
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_SetVehiclePos
    #undef SetVehiclePos
#else
    #define _ALS_SetVehiclePos
#endif
#define SetVehiclePos ELC_AC_SetVehiclePos
//ALS_OFF_SYSTEME ----------------
#endif
//Core--------------------------------------------------------------------------
public OnPlayerCheckCheat(playerid)
{
	new elc_IsTime=GetTickCount();
	#if defined MODE_DELAY_SEND_STATS
	if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==1 && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveMoneyTime],elc_IsTime))
	#else
	if(CheatPlayerInfo[playerid][elc_AntiMoneyHack]==1)
	#endif
	{
		new elc_getmoney=initial_GetPlayerMoney(playerid);
		if(elc_getmoney>CheatPlayerInfo[playerid][elc_money])
		{
			new elc_str[60];
			format(elc_str,sizeof(elc_str),"%d", elc_getmoney-CheatPlayerInfo[playerid][elc_money]);
			initial_ResetPlayerMoney(playerid);
			initial_GivePlayerMoney(playerid, CheatPlayerInfo[playerid][elc_money]);
			ELC_SendCheatWarning(playerid,1,elc_str);
		}
		#if defined DISABLE_MONEY_DEATHLOSE
		else if(((elc_getmoney+100)<=CheatPlayerInfo[playerid][elc_money])&&((GetTickCount()-CheatPlayerInfo[playerid][elc_TimeSpawn])<(TIMER_CHEAT_RATE+MAX_DELAY_SEND_STATS+5000)))
		{
			initial_ResetPlayerMoney(playerid);
			initial_GivePlayerMoney(playerid, elc_getmoney+100);
		}
		#endif
	}
	if(CheatPlayerInfo[playerid][elc_AntiTeleportHack]==1 && IsPlayerUpdatePos(playerid))
	{
	    #if defined MODE_DELAY_SEND_STATS
		if(CheatPlayerInfo[playerid][elc_SetPositionTime]!=0)
		{
		    if(IsPassTime(playerid,CheatPlayerInfo[playerid][elc_SetPositionTime],elc_IsTime))
		    {
            	CheatPlayerInfo[playerid][elc_SetPositionTime]=0;
				GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
				CheatPlayerInfo[playerid][elc_interior]=GetPlayerInterior(playerid);
				CheatPlayerInfo[playerid][elc_virtualworld]=GetPlayerVirtualWorld(playerid);
			}
		}
		else if(IsPlayerCheatPos(playerid))
		#else
		if(IsPlayerCheatPos(playerid))
		#endif
		{
			if(!IsPlayerCheatAllowTelPos(playerid))
			{
			    GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
				CheatPlayerInfo[playerid][elc_interior]=GetPlayerInterior(playerid);
				CheatPlayerInfo[playerid][elc_virtualworld]=GetPlayerVirtualWorld(playerid);
			    CheatPlayerInfo[playerid][elc_AllowTelX]=0;
			    CheatPlayerInfo[playerid][elc_AllowTelY]=0;
			    CheatPlayerInfo[playerid][elc_AllowTelZ]=0;
			}
		    else
			{
				if(ELC_SendCheatWarning(playerid,6))
				{
					SetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
					SetPlayerInterior(playerid,CheatPlayerInfo[playerid][elc_interior]);
					SetPlayerVirtualWorld(playerid,CheatPlayerInfo[playerid][elc_virtualworld]);
				}
				else
				{
					GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
					CheatPlayerInfo[playerid][elc_interior]=GetPlayerInterior(playerid);
					CheatPlayerInfo[playerid][elc_virtualworld]=GetPlayerVirtualWorld(playerid);
				}
			}
		}
		else
		{
			GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
			CheatPlayerInfo[playerid][elc_interior]=GetPlayerInterior(playerid);
			CheatPlayerInfo[playerid][elc_virtualworld]=GetPlayerVirtualWorld(playerid);
		}
	}
	#if defined MODE_DELAY_SEND_STATS
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1 && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveWeaponTime],elc_IsTime))
	#else
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1&&GetPlayerSpecialAction(playerid)!=SPECIAL_ACTION_ENTER_VEHICLE&&GetPlayerSpecialAction(playerid)!=SPECIAL_ACTION_EXIT_VEHICLE)
	#endif
	{
		new elc_WA_VAR[2];
		new elc_NeedRemove;
		/*new actweap=GetPlayerWeapon(playerid);
		if(actweap!=0&&actweap!=CheatPlayerInfo[playerid][elc_weapon][elc_GetWeaponSlot(actweap)])
		{
			if(!elc_IsGiveVehicleWeapon(actweap))
			{
				new elc_str[32];
				GetWeaponName(elc_WA_VAR[0][i],str,32);
				ELC_SendCheatWarning(playerid,2,elc_str);
			}
			elc_NeedRemove=1;
		}*/
		for(new i = 0; i <13; i++)
		{
			elc_WA_VAR[0]=0; elc_WA_VAR[1]=0;
			GetPlayerWeaponData(playerid,i,elc_WA_VAR[0],elc_WA_VAR[1]);
			if(CheatPlayerInfo[playerid][elc_weapon][i]!=elc_WA_VAR[0] && elc_WA_VAR[0]!=0 && elc_WA_VAR[1]!=0)// && elc_WA_VAR[0][i]!=actweap
			{
				//CHEAT WEAPON
				if(!elc_IsGiveVehicleWeapon(elc_WA_VAR[0])&&elc_NeedRemove==0)
				{
					new elc_str[32];
					GetWeaponName(elc_WA_VAR[0],elc_str,sizeof(elc_str));
					ELC_SendCheatWarning(playerid,2,elc_str);
				}
				elc_NeedRemove=1;
				//SetPlayerAmmo(playerid, elc_WA_VAR[0], 0);
			}
			else if(((CheatPlayerInfo[playerid][elc_ammo][i]-elc_WA_VAR[1]) < 0) && elc_IsNotWeaponNoAmmo(elc_WA_VAR[0]) && elc_WA_VAR[0]!=0)
			{
				//CHEAT AMMO
				if(elc_NeedRemove<=1)
				{
					new elc_str[60];
					format(elc_str,sizeof(elc_str),"%d",elc_WA_VAR[1]-CheatPlayerInfo[playerid][elc_ammo][i]);
					ELC_SendCheatWarning(playerid,3,elc_str);
				}
				elc_NeedRemove=2;
				//SetPlayerAmmo(playerid, elc_WA_VAR[0], 0);
			}
			else if(CheatPlayerInfo[playerid][elc_weapon][i]!=0 && elc_WA_VAR[0]==0 && elc_WA_VAR[1]==0)
			{
			    CheatPlayerInfo[playerid][elc_weapon][i]=0;
			    CheatPlayerInfo[playerid][elc_ammo][i]=0;
			}
			else if(elc_WA_VAR[1]!=0) CheatPlayerInfo[playerid][elc_ammo][i]=elc_WA_VAR[1];

		}
		if(elc_NeedRemove>=1)
		{
			new WepUse=GetPlayerWeapon(playerid);
			initial_ResetPlayerWeapons(playerid);
		    for(new i = 0; i <13; i++)if(CheatPlayerInfo[playerid][elc_weapon][i] != 0)initial_GivePlayerWeapon(playerid, CheatPlayerInfo[playerid][elc_weapon][i], CheatPlayerInfo[playerid][elc_ammo][i]);
		    SetPlayerArmedWeapon(playerid,WepUse);
		}
	}
	#if defined MODE_DELAY_SEND_STATS
	if(CheatPlayerInfo[playerid][elc_AntiHealthHack]==1 && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveHealthTime],elc_IsTime) && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveMoneyTime],elc_IsTime))
	#else
	if(CheatPlayerInfo[playerid][elc_AntiHealthHack]==1)
	#endif
	{
		new Float:velc_health;
		GetPlayerHealth(playerid,velc_health);
		if(velc_health!=CheatPlayerInfo[playerid][elc_health])
		{
			if(velc_health<=100 && velc_health>0 && CheatPlayerInfo[playerid][elc_health]==0) CheatPlayerInfo[playerid][elc_health]=velc_health;
			else if(velc_health>CheatPlayerInfo[playerid][elc_health])
			{
			    //Cheat Health
			    initial_SetPlayerHealth(playerid,CheatPlayerInfo[playerid][elc_health]);
			    ELC_SendCheatWarning(playerid,7);
			}
			else if(velc_health<CheatPlayerInfo[playerid][elc_health] && velc_health!=0)CheatPlayerInfo[playerid][elc_health]=velc_health;
		}
	}
	#if defined MODE_DELAY_SEND_STATS
	if(CheatPlayerInfo[playerid][elc_AntiArmourHack]==1 && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveArmourTime],elc_IsTime) && IsPassTime(playerid,CheatPlayerInfo[playerid][elc_GiveMoneyTime],elc_IsTime))
	#else
	if(CheatPlayerInfo[playerid][elc_AntiArmourHack]==1)
	#endif
	{
		new Float:velc_armour;
		GetPlayerArmour(playerid,velc_armour);
		if(velc_armour!=CheatPlayerInfo[playerid][elc_armour])
		{
			if(velc_armour>CheatPlayerInfo[playerid][elc_armour])
			{
			    //Cheat Armour
			    initial_SetPlayerArmour(playerid,CheatPlayerInfo[playerid][elc_armour]);
			    ELC_SendCheatWarning(playerid,8);
			}
			else if(velc_armour<CheatPlayerInfo[playerid][elc_armour])CheatPlayerInfo[playerid][elc_armour]=velc_armour;
		}
	}
	if(CheatPlayerInfo[playerid][elc_AntiVehicleTelportHack]==2 && CheatPlayerInfo[playerid][elc_PossibleVehicleHack]!=0 && IsPassTime(playerid,CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vPossibleHackTime],elc_IsTime))
	{
	    if(ELC_AC_IsCreatedVehicle(CheatPlayerInfo[playerid][elc_PossibleVehicleHack]))
	    {
	        ELC_SendCheatWarning(playerid,9);
		    SetVehiclePos(CheatPlayerInfo[playerid][elc_PossibleVehicleHack], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vX], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vY], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vZ]);
		    SetVehicleZAngle(CheatPlayerInfo[playerid][elc_PossibleVehicleHack],CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vAngle]);
			CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vPossiblePlayerHack]=0;
			CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PossibleVehicleHack]][elc_vPossibleHackTime]=0;
		}
        CheatPlayerInfo[playerid][elc_PossibleVehicleHack]=0;
    }
	else if(GetPlayerVehicleSeat(playerid)==0)
	{
		new vehicleid=GetPlayerVehicleID(playerid);
		if(vehicleid!=0)
		{
			GetVehiclePos(vehicleid, CheatVehicleInfo[vehicleid][elc_vX], CheatVehicleInfo[vehicleid][elc_vY], CheatVehicleInfo[vehicleid][elc_vZ]);
            GetVehicleZAngle(vehicleid,CheatVehicleInfo[vehicleid][elc_vAngle]);
		}
	}
	return 1;
}
/*----------------------------------------------------------------------------*/
public OnPlayerUpdate(playerid)
{
	new elc_tick=GetTickCount();
	if(CheatPlayerInfo[playerid][elc_LastUpdate]+1000<elc_tick)
	{
	    GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
	}
    CheatPlayerInfo[playerid][elc_LastUpdate]=elc_tick;
	if(CheatPlayerInfo[playerid][elc_AntiSpeedHack]==1)
	{
		//if((GetPlayerSurfingVehicleID(playerid)!=INVALID_VEHICLE_ID || GetPlayerState(playerid) == PLAYER_STATE_DRIVER) && (elc_GetPlayerSpeedXY(playerid) > MAX_SPEED_VEHICLE))
		if(elc_GetPlayerSpeedXY(playerid) > MAX_SPEED_VEHICLE)ELC_SendCheatWarning(playerid,5);
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerUpdate", "i",playerid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerUpdate
	#undef OnPlayerUpdate
#else
	#define _ALS_OnPlayerUpdate
#endif
#define OnPlayerUpdate ELC_AC_OnPlayerUpdate
forward ELC_AC_OnPlayerUpdate(playerid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
public OnGameModeInit()
#else
public OnFilterScriptInit()
#endif
{
    #if defined NO_TICK_COUNT
	CheatServerInfo[elc_TimerTick]=SetTimer("TimeUpdate", TIME_GRANULITY, true);
	#endif
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnGameModeInit", " ");
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif
#define OnGameModeInit ELC_AC_OnGameModeInit
forward ELC_AC_OnGameModeInit();
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
public OnGameModeExit()
#else
public OnFilterScriptExit()
#endif
{
	#if defined NO_TICK_COUNT
	KillTimer(CheatServerInfo[elc_TimerTick]);
	#endif
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnGameModeExit", " ");
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnGameModeExit
	#undef OnGameModeExit
#else
	#define _ALS_OnGameModeExit
#endif
#define OnGameModeExit ELC_AC_OnGameModeExit
forward ELC_AC_OnGameModeExit();
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerConnect(playerid)
{
    for(new i = 0; i <_:aELCp; i++)CheatPlayerInfo[playerid][aELCp:i]=0;
	if (!IsPlayerNPC(playerid))
	{
		CheatPlayerInfo[playerid][elc_armour]=100;
		CheatPlayerInfo[playerid][elc_health]=100;
		CheatPlayerInfo[playerid][elc_timer]=SetTimerEx("OnPlayerCheckCheat", TIMER_CHEAT_RATE, 1, "i", playerid);
		CheatPlayerInfo[playerid][elc_AntiWeaponHack]=ANTI_WEAPON_&_AMMO_HACK;
		CheatPlayerInfo[playerid][elc_AntiAmmoBlockHack]=ANTI_AMMO_BLOCK_HACK;
		CheatPlayerInfo[playerid][elc_AntiMoneyHack]=ANTI_MONEY_HACK;
		CheatPlayerInfo[playerid][elc_AntiSpeedHack]=0;
		CheatPlayerInfo[playerid][elc_AntiArmourHack]=ANTI_ARMOUR_HACK;
		CheatPlayerInfo[playerid][elc_AntiHealthHack]=ANTI_HEALTH_HACK;
		CheatPlayerInfo[playerid][elc_AntiVehicleTelportHack]=ANTI_VEHICLE-TELEPORT_HACK;
		#if defined MODE_DELAY_SEND_STATS
		CheatPlayerInfo[playerid][elc_GiveWeaponTime]=1;
		CheatPlayerInfo[playerid][elc_GiveMoneyTime]=1;
		CheatPlayerInfo[playerid][elc_GiveHealthTime]=1;
		CheatPlayerInfo[playerid][elc_GiveArmourTime]=1;
		#endif
		CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerConnect", "d", playerid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerConnect
	#undef OnPlayerConnect
#else
	#define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect ELC_AC_OnPlayerConnect
forward ELC_AC_OnPlayerConnect(playerid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerSpawn(playerid)
{
	if (!IsPlayerNPC(playerid))
	{
	    GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
		SaveTime(CheatPlayerInfo[playerid][elc_SetPositionTime],GetTickCount()+MAX_DELAY_WAIT_AFTER_SPAWN);
		CheatPlayerInfo[playerid][elc_TimeSpawn]=GetTickCount();
		if(CheatPlayerInfo[playerid][elc_AntiSpeedHack]!=2)
		{
			CheatPlayerInfo[playerid][elc_AntiTeleportHack]=ANTI_TELEPORT/AIBREAK_HACK;
			CheatPlayerInfo[playerid][elc_AntiSpeedHack]=ANTI_SPEED_HACK;
		}
		CheatPlayerInfo[playerid][elc_health]=100;
		CheatPlayerInfo[playerid][elc_armour]=100;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerSpawn", "d", playerid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerSpawn
	#undef OnPlayerSpawn
#else
	#define _ALS_OnPlayerSpawn
#endif
#define OnPlayerSpawn ELC_AC_OnPlayerSpawn
forward ELC_AC_OnPlayerSpawn(playerid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerDeath(playerid, killerid, reason)
{
	if (!IsPlayerNPC(playerid))
	{
	    CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
		CheatPlayerInfo[playerid][elc_AntiTeleportHack]=0;
		CheatPlayerInfo[playerid][elc_AntiSpeedHack]=0;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerDeath", "ddd", playerid, killerid, reason);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerDeath
	#undef OnPlayerDeath
#else
	#define _ALS_OnPlayerDeath
#endif
#define OnPlayerDeath ELC_AC_OnPlayerDeath
forward ELC_AC_OnPlayerDeath(playerid, killerid, reason);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerDisconnect(playerid, reason)
{
	if (!IsPlayerNPC(playerid))KillTimer(CheatPlayerInfo[playerid][elc_timer]);
	//for(new i = 0; i <_:aELCp; i++)CheatPlayerInfo[playerid][aELCp:i]=0;
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerDisconnect", "dd", playerid, reason);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerDisconnect
	#undef OnPlayerDisconnect
#else
	#define _ALS_OnPlayerDisconnect
#endif
#define OnPlayerDisconnect ELC_AC_OnPlayerDisconnect
forward ELC_AC_OnPlayerDisconnect(playerid, reason);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    CheatPlayerInfo[playerid][elc_PlayerEnterVeh]=vehicleid;
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerEnterVehicle", "ddd",playerid, vehicleid, ispassenger);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerEnterVehicle
	#undef OnPlayerEnterVehicle
#else
	#define _ALS_OnPlayerEnterVehicle
#endif
#define OnPlayerEnterVehicle ELC_AC_OnPlayerEnterVehicle
forward ELC_AC_OnPlayerEnterVehicle(playerid, vehicleid, ispassenger);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(newstate == PLAYER_STATE_DRIVER)
    {
        if(CheatPlayerInfo[playerid][elc_AntiVehicleTelportHack]>=1&&CheatPlayerInfo[playerid][elc_PlayerEnterVeh]!=GetPlayerVehicleID(playerid))
		{
			CheatPlayerInfo[playerid][elc_PlayerEnterTime] = GetTickCount();
			new elc_vehicleid=GetPlayerVehicleID(playerid);
			if(elc_vehicleid!=0)
			{
				CheatPlayerInfo[playerid][elc_PlayerEnterVeh]=elc_vehicleid;
				CheatVehicleInfo[elc_vehicleid][elc_vStatut]=1;
			}
		}
    }
    else if(oldstate == PLAYER_STATE_DRIVER)
    {//220 def
        if(CheatPlayerInfo[playerid][elc_PlayerEnterTime]!=0&&(GetTickCount()-CheatPlayerInfo[playerid][elc_PlayerEnterTime]) < 220)//player entered and exited vehicle faster than 220 ms.
        {
            //if(CheatPlayerInfo[playerid][elc_PlayerEnterVeh]!=0)SetVehiclePos(CheatPlayerInfo[playerid][elc_PlayerEnterVeh], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PlayerEnterVeh]][elc_vX], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PlayerEnterVeh]][elc_vY], CheatVehicleInfo[CheatPlayerInfo[playerid][elc_PlayerEnterVeh]][elc_vZ]);
            ELC_SendCheatWarning(playerid,9);
        }
        CheatPlayerInfo[playerid][elc_PlayerEnterTime]=0;
    }
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerStateChange", "ddd",playerid, newstate, oldstate);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerStateChange
	#undef OnPlayerStateChange
#else
	#define _ALS_OnPlayerStateChange
#endif
#define OnPlayerStateChange ELC_AC_OnPlayerStateChange
forward ELC_AC_OnPlayerStateChange(playerid, newstate, oldstate);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnUnoccupiedVehicleUpdate(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z)
{
    if (CheatPlayerInfo[playerid][elc_AntiVehicleTelportHack]==2&&ELC_AC_IsCreatedVehicle(vehicleid))
    {
		new Float:elc_tempposx, Float:elc_tempposy, Float:elc_tempposz;
		GetVehiclePos(vehicleid, elc_tempposx, elc_tempposy, elc_tempposz);
		elc_tempposx = (new_x -elc_tempposx);
		elc_tempposy = (new_y -elc_tempposy);
		elc_tempposz = (new_z -elc_tempposz);
		new Float:XMVDUCM=elc_GetVehicleSpeedXY(vehicleid)+MAX_VEHICLE_DISTANCE_UCM;
		if(CheatVehicleInfo[vehicleid][elc_vStatut]==0&&!((elc_tempposx < XMVDUCM) && (elc_tempposx > -XMVDUCM)) && ((elc_tempposy < XMVDUCM) && (elc_tempposy > -XMVDUCM)) && ((elc_tempposz < XMVDUCM) && (elc_tempposz > -XMVDUCM)))
		{
			SetVehiclePos(vehicleid, elc_tempposx, elc_tempposy, elc_tempposz);
			SetVehicleZAngle(vehicleid,CheatVehicleInfo[vehicleid][elc_vAngle]);
		    if(CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]==0)
		    {
	            CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]=playerid+1;
	            SaveTime(CheatVehicleInfo[vehicleid][elc_vPossibleHackTime],GetTickCount());
	            CheatPlayerInfo[playerid][elc_PossibleVehicleHack]=vehicleid;
			}
			else
			{
	            CheatVehicleInfo[vehicleid][elc_vPossibleHackTime]=0;
	            if(IsPlayerConnected(CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]-1))CheatPlayerInfo[CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]-1][elc_PossibleVehicleHack]=0;
	            CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]=0;
			}
		    return 0;
		}
		else
		{
		    if(CheatVehicleInfo[vehicleid][elc_vStatut]==1)CheatVehicleInfo[vehicleid][elc_vStatut]=0;
			CheatVehicleInfo[vehicleid][elc_vX]=new_x;
			CheatVehicleInfo[vehicleid][elc_vY]=new_y;
			CheatVehicleInfo[vehicleid][elc_vZ]=new_z;
			GetVehicleZAngle(vehicleid,CheatVehicleInfo[vehicleid][elc_vAngle]);
		}
		if(CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]!=0 && playerid!=INVALID_PLAYER_ID && CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]!=playerid+1)
		{
			CheatVehicleInfo[vehicleid][elc_vPossibleHackTime]=0;
			if(IsPlayerConnected(CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]-1))CheatPlayerInfo[CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]-1][elc_PossibleVehicleHack]=0;
			CheatVehicleInfo[vehicleid][elc_vPossiblePlayerHack]=0;
		}
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnUnoccupiedVehicle", "dddfff",vehicleid, playerid, passenger_seat, new_x, new_y, new_z);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnUnoccupiedVehicleUpdate
	#undef OnUnoccupiedVehicleUpdate
#else
	#define _ALS_OnUnoccupiedVehicleUpdate
#endif
#define OnUnoccupiedVehicleUpdate ELC_AC_OnUnoccupiedVehicle
forward ELC_AC_OnUnoccupiedVehicle(vehicleid, playerid, passenger_seat, Float:new_x, Float:new_y, Float:new_z);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnVehicleSpawn(vehicleid)
{
    GetVehiclePos(vehicleid, CheatVehicleInfo[vehicleid][elc_vX], CheatVehicleInfo[vehicleid][elc_vY], CheatVehicleInfo[vehicleid][elc_vZ]);
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnVehicleSpawn", "d",vehicleid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnVehicleSpawn
	#undef OnVehicleSpawn
#else
	#define _ALS_OnVehicleSpawn
#endif
#define OnVehicleSpawn ELC_AC_OnVehicleSpawn
forward ELC_AC_OnVehicleSpawn(vehicleid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnVehicleDeath(vehicleid)
{
    CheatVehicleInfo[vehicleid][elc_vX]=0;
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnVehicleDeath", "d",vehicleid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnVehicleDeath
	#undef OnVehicleDeath
#else
	#define _ALS_OnVehicleDeath
#endif
#define OnVehicleDeath ELC_AC_OnVehicleDeath
forward ELC_AC_OnVehicleDeath(vehicleid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ)
{

	new slot=elc_GetWeaponSlot(weaponid);
	new elc_WA_VAR[2];
	GetPlayerWeaponData(playerid,slot,elc_WA_VAR[0],elc_WA_VAR[1]);
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1 && CheatPlayerInfo[playerid][elc_weapon][slot]!=weaponid && weaponid!=0 && elc_WA_VAR[1]!=0)// && elc_WA_VAR[0][i]!=actweap
	{
		//CHEAT WEAPON
		RemovePlayerWeapon(playerid, weaponid);
		if(!elc_IsGiveVehicleWeapon(weaponid))
		{
			new elc_str[32];
			GetWeaponName(weaponid,elc_str,sizeof(elc_str));
			ELC_SendCheatWarning(playerid,2,elc_str);
		}
	}
	else if(elc_IsNotWeaponNoAmmo(weaponid) && elc_WA_VAR[1]<=CheatPlayerInfo[playerid][elc_ammo][slot])
	{
		if(elc_WA_VAR[1]<CheatPlayerInfo[playerid][elc_ammo][slot])
		{
		    CheatPlayerInfo[playerid][elc_tickfire]=0;
			CheatPlayerInfo[playerid][elc_ammo][slot]=elc_WA_VAR[1];
		}
		else if(CheatPlayerInfo[playerid][elc_AntiAmmoBlockHack]==1)
		{
			if(CheatPlayerInfo[playerid][elc_tickfire]==0||CheatPlayerInfo[playerid][elc_weaponFire]!=weaponid)
			{
			    CheatPlayerInfo[playerid][elc_tickfire]=1;
				CheatPlayerInfo[playerid][elc_ammo][slot]=elc_WA_VAR[1];
				CheatPlayerInfo[playerid][elc_weaponFire]=weaponid;
			}
			else if(CheatPlayerInfo[playerid][elc_tickfire]<MAX_WEAPON_SHOT_FOR_CHECK) CheatPlayerInfo[playerid][elc_tickfire]++;
			else if(CheatPlayerInfo[playerid][elc_tickfire]>=MAX_WEAPON_SHOT_FOR_CHECK)
			{
			    CheatPlayerInfo[playerid][elc_tickfire]=0;
				if(CheatPlayerInfo[playerid][elc_ammo][slot]==elc_WA_VAR[1])
				{
					ELC_SendCheatWarning(playerid,4);
					initial_ResetPlayerWeapons(playerid);
					return 0;
				}
			}
		}
	}
	else if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1 && elc_IsNotWeaponNoAmmo(weaponid) && elc_WA_VAR[0]!=0)
	{
		new elc_str[60];
		format(elc_str,sizeof(elc_str),"%d",elc_WA_VAR[1]-CheatPlayerInfo[playerid][elc_ammo][slot]);
		ELC_SendCheatWarning(playerid,3,elc_str);
		RemovePlayerWeapon(playerid, elc_WA_VAR[0]);
	    return 0;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnPlayerWeaponShot", "ddddfff",playerid, weaponid, hittype, hitid, fX, fY, fZ);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnPlayerWeaponShot
	#undef OnPlayerWeaponShot
#else
	#define _ALS_OnPlayerWeaponShot
#endif
#define OnPlayerWeaponShot ELC_AC_OnPlayerWeaponShot
forward ELC_AC_OnPlayerWeaponShot(playerid, weaponid, hittype, hitid, Float:fX, Float:fY, Float:fZ);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public ELC_AC_EnablePlayerCheatID(playerid,cheatid,enable)
{
	if(cheatid==1)//Money
	{
		if(enable==1)
		{
			CheatPlayerInfo[playerid][elc_AntiMoneyHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiMoneyHack]=0;
	}
	else if(cheatid==2)//Weapon
	{
		if(enable==1)
		{
			for(new i = 0; i <13; i++)
			{
				GetPlayerWeaponData(playerid,i,CheatPlayerInfo[playerid][elc_weapon][i],CheatPlayerInfo[playerid][elc_ammo][i]);
			}
			CheatPlayerInfo[playerid][elc_AntiWeaponHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiWeaponHack]=0;
	}
	else if(cheatid==3)//AirBreak/SpeedHack
	{
		if(enable==1) CheatPlayerInfo[playerid][elc_AntiSpeedHack]=1;
		else CheatPlayerInfo[playerid][elc_AntiSpeedHack]=0;
	}
	else if(cheatid==4)//Anti-Teleport
	{
		if(enable==1)
		{
			GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
			CheatPlayerInfo[playerid][elc_AntiTeleportHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiTeleportHack]=0;
	}
	else if(cheatid==5)//Anti-Ammo_Block
	{
		if(enable==1)
		{
			CheatPlayerInfo[playerid][elc_tickfire]=0;
			CheatPlayerInfo[playerid][elc_ammoFire]=0;
			CheatPlayerInfo[playerid][elc_weaponFire]=0;
			CheatPlayerInfo[playerid][elc_AntiAmmoBlockHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiAmmoBlockHack]=0;
	}
	else if(cheatid==6)//Anti_HEALTH_HACK
	{
		if(enable==1)
		{
			CheatPlayerInfo[playerid][elc_AntiHealthHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiHealthHack]=0;
	}
	else if(cheatid==7)//Anti_ARMOUR_HACK
	{
		if(enable==1)
		{
			CheatPlayerInfo[playerid][elc_AntiArmourHack]=1;
		}
		else CheatPlayerInfo[playerid][elc_AntiArmourHack]=0;
	}
	return 1;
}
/*----------------------------------------------------------------------------*/
#define EnablePlayerCheatID ELC_AC_EnablePlayerCheatID
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
#else
public OnPlayerCheat(playerid, cheatid, source[])
{
    new elc_str[120],elc_reason[60],elc_name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, elc_name, sizeof(elc_name));
    format(elc_str,sizeof(elc_str),"( ! ) %s has been cheated for: ",elc_name);
    switch(cheatid)
    {
        case 1: format(elc_reason,sizeof(elc_reason),"Money Cheat ( %s $ )",source);
        case 2: format(elc_reason,sizeof(elc_reason),"Weapon Cheat ( %s )",source);
        case 3: format(elc_reason,sizeof(elc_reason),"Ammo Cheat ( %s Bullets )",source);
        case 4: format(elc_reason,sizeof(elc_reason),"Ammo Block Cheat");
        case 5: format(elc_reason,sizeof(elc_reason),"Speed Cheat");
        case 6: format(elc_reason,sizeof(elc_reason),"Airbreak/Teleport Cheat");
        case 7: format(elc_reason,sizeof(elc_reason),"Health Cheat");
        case 8: format(elc_reason,sizeof(elc_reason),"Armour Cheat");
        case 9: format(elc_reason,sizeof(elc_reason),"Vehicle Spawn Cheat");
        case 10: format(elc_reason,sizeof(elc_reason),"Vehicle Crasher");
    }
    strcat(elc_str,elc_reason);
    SendClientMessageToAll(0xBD0000FF,elc_str);
	return 1;
}
#endif
/*----------------------------------------------------------------------------*/
public RemovePlayerWeapon(playerid, weaponid)
{
    if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==1)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=2;
    new WeaponsID[13];
    new AmmoID[13];
    new WepUse=GetPlayerWeapon(playerid);
    new slotremove=elc_GetWeaponSlot(weaponid);
    for(new slot = 0; slot <13; slot++)
    {
        if(slotremove!=slot)GetPlayerWeaponData(playerid, slot, WeaponsID[slot], AmmoID[slot]);
    }
    initial_ResetPlayerWeapons(playerid);
    for(new slot = 0; slot <13; slot++)if(WeaponsID[slot]!=0 && AmmoID[slot] != 0)initial_GivePlayerWeapon(playerid, WeaponsID[slot], AmmoID[slot]);
    SetPlayerArmedWeapon(playerid,WepUse);
	if(CheatPlayerInfo[playerid][elc_AntiWeaponHack]==2)CheatPlayerInfo[playerid][elc_AntiWeaponHack]=1;
    return 1;
}
/*----------------------------------------------------------------------------*/
public OnEnterExitModShop(playerid, enterexit, interiorid)
{
    GetPlayerPos(playerid,CheatPlayerInfo[playerid][elc_posx],CheatPlayerInfo[playerid][elc_posy],CheatPlayerInfo[playerid][elc_posz]);
	SaveTime(CheatPlayerInfo[playerid][elc_SetPositionTime],GetTickCount()+MAX_DELAY_WAIT_AFTER_SPAWN);
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnEnterExitModShop", "ddd",playerid, enterexit, interiorid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnEnterExitModShop
	#undef OnEnterExitModShop
#else
	#define _ALS_OnEnterExitModShop
#endif
#define OnEnterExitModShop ELC_AC_OnEnterExitModShop
forward ELC_AC_OnEnterExitModShop(playerid, enterexit, interiorid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
public OnVehicleMod(playerid, vehicleid, componentid)
{
    switch(componentid)
	{
	    case 1008..1010: if(ELC_IsPlayerInInvalidNosVehicle(playerid))
		{
			RemoveVehicleComponent(vehicleid, componentid);
			return 0;
		}
	}
	if(!ELC_IsComponentidCompatible(GetVehicleModel(vehicleid), componentid))
	{
		RemoveVehicleComponent(vehicleid, componentid);
		ELC_SendCheatWarning(playerid,10);
		return 0;
	}
	#if defined INCLUDE_BASE_MODE
	return CallLocalFunction("ELC_AC_OnVehicleMod", "ddd",playerid, vehicleid, componentid);
	#else
	return 1;
	#endif
}
/*----------------------------------------------------------------------------*/
#if defined INCLUDE_BASE_MODE
//ALS_SYSTEME --------------------
#if defined _ALS_OnVehicleMod
	#undef OnVehicleMod
#else
	#define _ALS_OnVehicleMod
#endif
#define OnVehicleMod ELC_AC_OnVehicleMod
forward ELC_AC_OnVehicleMod(playerid, vehicleid, componentid);
#endif
//ALS_OFF_SYSTEME ----------------
/*----------------------------------------------------------------------------*/
stock ELC_IsPlayerInInvalidNosVehicle(playerid)
{
	new elc_vehicleid = GetPlayerVehicleID(playerid);
	#define MAX_INVALID_NOS_VEHICLES 52
	new ELC_InvalidNosVehicles[MAX_INVALID_NOS_VEHICLES] =
	{
		581,523,462,521,463,522,461,448,468,586,417,425,469,487,512,520,563,593,
		509,481,510,472,473,493,520,595,484,430,453,432,476,497,513,533,577,
		452,446,447,454,590,569,537,538,570,449,519,460,488,511,519,548,592
	};
 	if(IsPlayerInAnyVehicle(playerid))
  	{
   		for(new i = 0; i < MAX_INVALID_NOS_VEHICLES; i++)
     	{
      		if(GetVehicleModel(elc_vehicleid) == ELC_InvalidNosVehicles[i]) return true;
       	}
   	}
   	return false;
}
/*----------------------------------------------------------------------------*/
stock ELC_IsComponentidCompatible(modelid, componentid)
{
    if(componentid == 1025 || componentid == 1073 || componentid == 1074 || componentid == 1075 || componentid == 1076 ||
         componentid == 1077 || componentid == 1078 || componentid == 1079 || componentid == 1080 || componentid == 1081 ||
         componentid == 1082 || componentid == 1083 || componentid == 1084 || componentid == 1085 || componentid == 1096 ||
         componentid == 1097 || componentid == 1098 || componentid == 1087 || componentid == 1086)
         return true;

    switch (modelid)
    {
        case 400: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 401: return (componentid == 1005 || componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 114 || componentid == 1020 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 402: return (componentid == 1009 || componentid == 1009 || componentid == 1010);
        case 404: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007);
        case 405: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1014 || componentid == 1023 || componentid == 1000);
        case 409: return (componentid == 1009);
        case 410: return (componentid == 1019 || componentid == 1021 || componentid == 1020 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 411: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 412: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 415: return (componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 418: return (componentid == 1020 || componentid == 1021 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1016);
        case 419: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 420: return (componentid == 1005 || componentid == 1004 || componentid == 1021 || componentid == 1019 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1003);
        case 421: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1023 || componentid == 1016 || componentid == 1000);
        case 422: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1017 || componentid == 1007);
        case 426: return (componentid == 1005 || componentid == 1004 || componentid == 1021 || componentid == 1019 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003);
        case 429: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 436: return (componentid == 1020 || componentid == 1021 || componentid == 1022 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 438: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 439: return (componentid == 1003 || componentid == 1023 || componentid == 1001 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1017 || componentid == 1007 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1013);
        case 442: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 445: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 451: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 458: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 466: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 467: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 474: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 475: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 477: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1017 || componentid == 1007);
        case 478: return (componentid == 1005 || componentid == 1004 || componentid == 1012 || componentid == 1020 || componentid == 1021 || componentid == 1022 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 479: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 480: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 489: return (componentid == 1005 || componentid == 1004 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1016 || componentid == 1000);
        case 491: return (componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 492: return (componentid == 1005 || componentid == 1004 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1016 || componentid == 1000);
        case 496: return (componentid == 1006 || componentid == 1017 || componentid == 1007 || componentid == 1011 || componentid == 1019 || componentid == 1023 || componentid == 1001 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1003 || componentid == 1002 || componentid == 1142 || componentid == 1143 || componentid == 1020);
        case 500: return (componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 506: return (componentid == 1009);
        case 507: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 516: return (componentid == 1004 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1015 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007);
        case 517: return (componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1023 || componentid == 1016 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 518: return (componentid == 1005 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 526: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 527: return (componentid == 1021 || componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1014 || componentid == 1015 || componentid == 1017 || componentid == 1007);
        case 529: return (componentid == 1012 || componentid == 1011 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 533: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 534: return (componentid == 1126 || componentid == 1127 || componentid == 1179 || componentid == 1185 || componentid == 1100 || componentid == 1123 || componentid == 1125 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1180 || componentid == 1178 || componentid == 1101 || componentid == 1122 || componentid == 1124 || componentid == 1106);
        case 535: return (componentid == 1109 || componentid == 1110 || componentid == 1113 || componentid == 1114 || componentid == 1115 || componentid == 1116 || componentid == 1117 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1120 || componentid == 1118 || componentid == 1121 || componentid == 1119);
        case 536: return (componentid == 1104 || componentid == 1105 || componentid == 1182 || componentid == 1181 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1184 || componentid == 1183 || componentid == 1128 || componentid == 1103 || componentid == 1107 || componentid == 1108);
        case 540: return (componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007);
        case 541: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 542: return (componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1015);
        case 545: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 546: return (componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007);
        case 547: return (componentid == 1142 || componentid == 1143 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1016 || componentid == 1003 || componentid == 1000);
        case 549: return (componentid == 1012 || componentid == 1011 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 550: return (componentid == 1005 || componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003);
        case 551: return (componentid == 1005 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1023 || componentid == 1016 || componentid == 1003);
        case 555: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 558: return (componentid == 1092 || componentid == 1089 || componentid == 1166 || componentid == 1165 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1168 || componentid == 1167 || componentid == 1088 || componentid == 1091 || componentid == 1164 || componentid == 1163 || componentid == 1094 || componentid == 1090 || componentid == 1095 || componentid == 1093);
        case 559: return (componentid == 1065 || componentid == 1066 || componentid == 1160 || componentid == 1173 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1159 || componentid == 1161 || componentid == 1162 || componentid == 1158 || componentid == 1067 || componentid == 1068 || componentid == 1071 || componentid == 1069 || componentid == 1072 || componentid == 1070 || componentid == 1009);
        case 560: return (componentid == 1028 || componentid == 1029 || componentid == 1169 || componentid == 1170 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1141 || componentid == 1140 || componentid == 1032 || componentid == 1033 || componentid == 1138 || componentid == 1139 || componentid == 1027 || componentid == 1026 || componentid == 1030 || componentid == 1031);
        case 561: return (componentid == 1064 || componentid == 1059 || componentid == 1155 || componentid == 1157 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1154 || componentid == 1156 || componentid == 1055 || componentid == 1061 || componentid == 1058 || componentid == 1060 || componentid == 1062 || componentid == 1056 || componentid == 1063 || componentid == 1057);
        case 562: return (componentid == 1034 || componentid == 1037 || componentid == 1171 || componentid == 1172 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1149 || componentid == 1148 || componentid == 1038 || componentid == 1035 || componentid == 1147 || componentid == 1146 || componentid == 1040 || componentid == 1036 || componentid == 1041 || componentid == 1039);
        case 565: return (componentid == 1046 || componentid == 1045 || componentid == 1153 || componentid == 1152 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1150 || componentid == 1151 || componentid == 1054 || componentid == 1053 || componentid == 1049 || componentid == 1050 || componentid == 1051 || componentid == 1047 || componentid == 1052 || componentid == 1048);
        case 566: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 567: return (componentid == 1129 || componentid == 1132 || componentid == 1189 || componentid == 1188 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1187 || componentid == 1186 || componentid == 1130 || componentid == 1131 || componentid == 1102 || componentid == 1133);
        case 575: return (componentid == 1044 || componentid == 1043 || componentid == 1174 || componentid == 1175 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1176 || componentid == 1177 || componentid == 1099 || componentid == 1042);
        case 576: return (componentid == 1136 || componentid == 1135 || componentid == 1191 || componentid == 1190 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1192 || componentid == 1193 || componentid == 1137 || componentid == 1134);
        case 579: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 580: return (componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007);
        case 585: return (componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007);
        case 587: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 589: return (componentid == 1005 || componentid == 1004 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1024 || componentid == 1013 || componentid == 1006 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007);
        case 600: return (componentid == 1005 || componentid == 1004 || componentid == 1020 || componentid == 1022 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1017 || componentid == 1007);
        case 602: return (componentid == 1008 || componentid == 1009 || componentid == 1010);
        case 603: return (componentid == 1144 || componentid == 1145 || componentid == 1142 || componentid == 1143 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007);
    }
    return false;
}
/*----------------------------------------------------------------------------*/
stock ELC_SendCheatWarning(playerid,elc_type,xelc_str[]=" ")
{
	new elc_str[60];
	if(!strlen(xelc_str))format(elc_str,sizeof(elc_str)," ");
	else format(elc_str,sizeof(elc_str),"%s",xelc_str);
	return CallRemoteFunction("OnPlayerCheat", "dds", playerid,elc_type,elc_str);
}

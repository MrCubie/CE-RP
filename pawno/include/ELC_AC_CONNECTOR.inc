/*------------------------------------------------------------------------------
                                    
                             Anti-Cheat(ELC_AC)
                             
MODE CONNECTOR FOR ELC_AC VERSION 3.0


                                    \**/
/*/- Anti-Cheat By Eloctro -----------------------------------------------------

*/
#if defined _elc_ac_compill
#error You must add ELC_CONNECTOR or ELC_BASE but not add both
#endif
#define _elc_ac_compill
/*----------------------------------------------------------------------------*/
#include <a_samp>
/*----------------------------------------------------------------------------*/
#define GivePlayerMoney ELC_ACc_GivePlayerMoney
#define ResetPlayerMoney ELC_ACc_ResetPlayerMoney
#define GetPlayerMoney ELC_ACc_GetPlayerMoney
#define GivePlayerWeapon ELC_ACc_GivePlayerWeapon
#define SetPlayerAmmo ELC_ACc_SetPlayerAmmo
#define ResetPlayerWeapons ELC_ACc_ResetPlayerWeapons
#define SetPlayerPos ELC_ACc_SetPlayerPos
#define PutPlayerInVehicle ELC_ACc_PutPlayerInVehicle
#define TogglePlayerSpectating ELC_ACc_TogglePlayerSpectating
#define SetPlayerHealth ELC_ACc_SetPlayerHealth
#define SetPlayerArmour ELC_ACc_SetPlayerArmour
#define SetVehiclePos ELC_ACc_SetVehiclePos
forward OnPlayerCheat(playerid, cheatid);
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GivePlayerMoney(playerid, money);
public ELC_ACc_GivePlayerMoney(playerid, money)
{
	return CallRemoteFunction("ELC_AC_GivePlayerMoney", "dd",playerid, money);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_ResetPlayerMoney(playerid);
public ELC_ACc_ResetPlayerMoney(playerid)
{
	return CallRemoteFunction("ELC_AC_ResetPlayerMoney", "d",playerid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GetPlayerMoney(playerid);
public ELC_ACc_GetPlayerMoney(playerid)
{
	return CallRemoteFunction("ELC_AC_GetPlayerMoney", "d",playerid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_GivePlayerWeapon(playerid,Weapon,ammo);
public ELC_ACc_GivePlayerWeapon(playerid,Weapon,ammo)
{
	return CallRemoteFunction("ELC_AC_GivePlayerWeapon", "ddd",playerid,Weapon,ammo);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_SetPlayerAmmo(playerid,weaponslot,ammo);
public ELC_ACc_SetPlayerAmmo(playerid,weaponslot,ammo)
{
	return CallRemoteFunction("ELC_AC_SetPlayerAmmo", "ddd",playerid,weaponslot,ammo);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_ResetPlayerWeapons(playerid);
public ELC_ACc_ResetPlayerWeapons(playerid)
{
	return CallRemoteFunction("ELC_AC_ResetPlayerWeapons", "d",playerid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_SetPlayerPos(playerid, Float:ix, Float:iy, Float:iz);
public ELC_ACc_SetPlayerPos(playerid, Float:ix, Float:iy, Float:iz)
{
	return CallRemoteFunction("ELC_AC_SetPlayerPos", "dfff",playerid, Float:ix, Float:iy, Float:iz);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_PutPlayerInVehicle(playerid,vehicleid, seatid);
public ELC_ACc_PutPlayerInVehicle(playerid,vehicleid, seatid)
{
	return CallRemoteFunction("ELC_AC_PutPlayerInVehicle", "ddd",playerid,vehicleid, seatid);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_TogglePlayerSpectating(playerid, toggle);
public ELC_ACc_TogglePlayerSpectating(playerid, toggle)
{
	return CallRemoteFunction("ELC_AC_TogglePlayerSpectating", "dd",playerid, toggle);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_SetPlayerHealth(playerid,Float:health);
public ELC_ACc_SetPlayerHealth(playerid,Float:health)
{
	return CallRemoteFunction("ELC_AC_SetPlayerHealth", "dd",playerid,Float:health);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_SetPlayerArmour(playerid,Float:armour);
public ELC_ACc_SetPlayerArmour(playerid,Float:armour)
{
	return CallRemoteFunction("ELC_AC_SetPlayerArmour", "dd",playerid,Float:armour);
}
/*----------------------------------------------------------------------------*/
forward ELC_ACc_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z);
public ELC_ACc_SetVehiclePos(vehicleid,Float:x,Float:y,Float:z)
{
	return CallRemoteFunction("ELC_AC_SetVehiclePos", "dfff",vehicleid,x,y,z);
}
/*----------------------------------------------------------------------------*/
forward EnablePlayerCheatID(playerid,cheatid,enable);
public EnablePlayerCheatID(playerid,cheatid,enable)
{
	return CallRemoteFunction("ELC_AC_EnablePlayerCheatID", "ddd",playerid,cheatid,enable);
}

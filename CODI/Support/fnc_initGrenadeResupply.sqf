private["_veh"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_Loadout_ServerInitialised"};
	_veh addMagazineCargoGlobal ["HandGrenade", 10];
	_veh addMagazineCargoGlobal ["SmokeShell", 10];
	_veh addMagazineCargoGlobal ["SmokeShellGreen", 10];
	_veh addMagazineCargoGlobal ["Chemlight_green", 10];
	_veh addMagazineCargoGlobal ["ACE_HandFlare_Green", 10];
	_veh addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 30];
	[_veh] call CODI_LO_fnc_postInitGrenadeResupply;
};

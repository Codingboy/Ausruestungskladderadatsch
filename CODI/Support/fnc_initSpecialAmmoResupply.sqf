private["_veh","_faction"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_LO_ServerInitialised"};
	/*
	hmg
	mmg
	sniper
	*/
	[_veh, "hk121"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "lwmmg"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m60"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "awc"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "awm"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "gm6"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m200"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh] call CODI_LO_fnc_postInitSpecialAmmoResupply;
};

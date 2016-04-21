private["_veh","_faction"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_Loadout_ServerInitialised"};
	/*
	rflm
	gren
	lmg
	sp
	dm
	*/
	[_veh, "bushmaster_300"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "bushmaster_300"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m4"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m4_gl"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m249"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "lar15"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "sig556"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh, "m14"] call CODI_LO_fnc_addMagazinesToBox;
	[_veh] call CODI_LO_fnc_postInitAmmoResupply;
};

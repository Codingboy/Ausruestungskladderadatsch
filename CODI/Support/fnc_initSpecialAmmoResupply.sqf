private["_veh","_faction"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_Loadout_ServerInitialised"};
	[_veh] call CODI_LO_fnc_postInitSpecialAmmoResupply;
};

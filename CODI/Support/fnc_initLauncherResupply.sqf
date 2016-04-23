private["_veh","_faction"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_LO_ServerInitialised"};
	_veh addMagazineCargoGlobal ["Titan_AT", 5];
	_veh addMagazineCargoGlobal ["Titan_AA", 5];
	_veh addMagazineCargoGlobal ["Titan_AP", 10];
	[_veh] call CODI_LO_fnc_postInitLauncherResupply;
};

private["_veh"];

_veh = _this select 0;

if (isServer) then
{
	[_veh] call CODI_LO_fnc_clearBox;
	waitUntil{!isNil "CODI_LO_ServerInitialised"};
	if (ace_medical_level == 2) then
	{
		_veh addItemCargoGlobal ["ACE_morphine", 20];
		_veh addItemCargoGlobal ["ACE_epinephrine", 20];
		_veh addItemCargoGlobal ["ACE_packingBandage", 30];
		_veh addItemCargoGlobal ["ACE_elasticBandage", 30];
		_veh addItemCargoGlobal ["ACE_basicBandage", 30];
		_veh addItemCargoGlobal ["ACE_quikclot", 30];
		_veh addItemCargoGlobal ["ACE_salineIV", 15];
		_veh addItemCargoGlobal ["ACE_salineIV_500", 15];
		_veh addItemCargoGlobal ["ACE_salineIV_250", 15];
	}
	else
	{
		_veh addItemCargoGlobal ["ACE_morphine", 20];
		_veh addItemCargoGlobal ["ACE_epinephrine", 20];
		_veh addItemCargoGlobal ["ACE_basicBandage", 80];
		_veh addItemCargoGlobal ["ACE_bloodIV", 15];
	};
	[_veh] call CODI_LO_fnc_postInitMedicalResupply;
};

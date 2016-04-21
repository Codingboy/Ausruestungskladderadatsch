private["_veh","_fuel"];

_veh = _this select 0;

if (isServer) then
{
	while {alive _veh} do
	{
		_veh setFuelCargo 1;
		_fuel = getNumber (configFile >> "CfgVehicles" >> typeOf _veh >> "ACE_refuel_fuelCargo");
		_veh setVariable ["ACE_refuel_currentFuelCargo", _fuel, true];
		sleep (1*60);
	};
};
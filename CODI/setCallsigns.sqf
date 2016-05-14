private["_unit","_desc","_callsignArray","_isCallsign","_callsign","_separator"];

_unit = _this select 0;
_separator = param[1, "-"];
if ((group _unit) getVariable ["CODI_LO_callsignSet", false]) exitWith {};
(group _unit) setVariable ["CODI_LO_callsignSet", true, true];

_desc = toArray(roleDescription _unit);
_callsignArray = [];
_isCallsign = true;
for "_i" from 0 to (count(_desc)-1) do
{
	if (_isCallsign) then
	{
		if ((_desc select _i) == toArray(_separator) select 0) then
		{
			_isCallsign = false;
		};
		if (_isCallsign) then
		{
			_callsignArray pushBack (_desc select _i);
		};
	};
};
if (count _callsignArray > 0) then
{
	_callsign = [toString _callsignArray] call CBA_fnc_trim;
	(group _unit) setGroupIdGlobal [_callsign];
};
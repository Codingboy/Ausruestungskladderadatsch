disableSerialization;
lbClear 2101;
lbClear 2102;
lbClear 2103;
lbClear 2104;
lbClear 2105;
_colour = lbText[2100, lbCurSel 2100];
call compile format["CODI_LO_classes = CODI_LO_%1", _colour];
{
	_restricted = false;
	if (!isNil "CODI_LO_restrictedClass") then
	{
		if (CODI_LO_restrictedClass) then
		{
			_restricted = true;
		};
	};
	if (_restricted) then
	{
		if (_x == (([player] call CODI_LO_fnc_resolveClass) select 0)) then
		{
			lbAdd[2101, _x];
		};
	}
	else
	{
		lbAdd[2101, _x];
	};
}
forEach CODI_LO_classes;
ctrlEnable [1600, false];
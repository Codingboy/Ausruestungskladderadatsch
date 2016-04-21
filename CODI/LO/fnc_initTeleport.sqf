disableSerialization;
{
	if (name player != name _x) then
	{
		lbAdd[2100, name _x];
	};
}
forEach playableUnits;
lbSetCurSel[2100, 0];
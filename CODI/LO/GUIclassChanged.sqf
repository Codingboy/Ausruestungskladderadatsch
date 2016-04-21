disableSerialization;
lbClear 2102;
lbClear 2103;
lbClear 2104;
lbClear 2105;
_colour = lbText[2100, lbCurSel 2100];
_class = lbText[2101, lbCurSel 2101];
call CODI_LO_fnc_clearLoadout;
call compile format["call CODI_LO_fnc_%1", _class, _colour];
call compile format["call CODI_LO_fnc_%1_%2", _class, _colour];
if (!isNil "CODI_LO_postLoadout") then
{
	[player] call CODI_LO_postLoadout;
};
{
	lbAdd[2102, _x];
}
forEach (CODI_LO_weaponPacks select 0);
{
	lbAdd[2103, _x];
}
forEach (CODI_LO_weaponPacks select 1);
{
	lbAdd[2104, _x];
}
forEach (CODI_LO_weaponPacks select 2);
{
	lbAdd[2105, _x];
}
forEach (CODI_LO_weaponPacks select 3);
if (lbSize 2102 > 0) then
{
	lbSetCurSel[2102, 0];
};
if (lbSize 2103 > 0) then
{
	lbSetCurSel[2103, 0];
};
if (lbSize 2104 > 0) then
{
	lbSetCurSel[2104, 0];
};
if (lbSize 2105 > 0) then
{
	lbSetCurSel[2105, 0];
};
ctrlEnable [1600, true];
disableSerialization;
lbClear 2106;
if (lbSize 2104 > 0) then
{
	call compile format["call CODI_LO_fnc_%1", lbText [2104, lbCurSel 2104]];
	if (!isNil "CODI_LO_postWeaponLoadout") then
	{
		[player] call CODI_LO_postWeaponLoadout;
	};
	{
		lbAdd[2106, _x];
	}
	forEach CODI_LO_primaryWeaponOptic;
	if (lbSize 2106 > 0) then
	{
		lbSetCurSel[2106, 0];
	};
};
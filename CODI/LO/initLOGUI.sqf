disableSerialization;
_filter = CODI_LO_colours;
if (!isNil "CODI_LO_restrictedColours") then
{
	_filter = CODI_LO_restrictedColours;
};
{
	if (_x in _filter) then
	{
		lbAdd[2100, _x];//TODO restriction
	};
}
forEach CODI_LO_colours;
ctrlEnable [1600, false];
CODI_Path_markers = [];
CODI_Path_markersLocal = [];
CODI_Path_variables = [];
CODI_Path_fnc_aStar = {
	private["_continue","_tentativeG","_roads","_current","_open","_closed","_dst","_src","_marker"];
	_src = param[0, objNull];
	_dst = param[1, objNull];
	_closed = [];
	_open = [_src];
	missionNamespace setVariable ["CODI_Path_g_" + str _src, 0];
	CODI_Path_variables pushBack ("CODI_Path_g_" + str _src);
	missionNamespace setVariable ["CODI_Path_f_" + str _src, [_src, _dst] call CODI_Path_fnc_h];
	CODI_Path_variables pushBack ("CODI_Path_f_" + str _src);
	while {count _open != 0} do
	{
		_current = objNull;
		{
			if ((missionNamespace getVariable ["CODI_Path_f_" + str _x, 999999]) < (missionNamespace getVariable ["CODI_Path_f_" + str _current, 999999])) then
			{
				_current = _x;
			};
		}
		forEach _open;
		if (_current == _dst) exitWith
		{
			[_dst] call CODI_Path_fnc_mark;
		};
		_open = _open - [_current];
		_closed pushBack _current;
		_roads = roadsConnectedTo _current;
		{
			if (_x != _current) then
			{
				_roads pushBackUnique _x;
			};
		}
		forEach ((getPos _current) nearRoads 20);
		{
			if (!(_x in _closed)) then
			{
				_tentativeG = (missionNamespace getVariable ["CODI_Path_g_" + str _current, 999999]) + ([_current, _x] call CODI_Path_fnc_cost);
				_continue = false;
				if (!(_x in _open)) then
				{
					_open pushBack _x;
				}
				else
				{
					if (_tentativeG >= (missionNamespace getVariable ["CODI_Path_g_" + str _x, 999999])) then
					{
						_continue = true;
					};
				};
				if (!_continue) then
				{
					_marker = createMarkerLocal [str _x, getPos _x];
					_marker setMarkerShapeLocal "ICON";
					_marker setMarkerColorLocal "ColorWEST";
					_marker setMarkerTypeLocal "MIL_DOT";
					_marker setMarkerAlphaLocal 0.25;
					CODI_Path_markersLocal pushBack _marker;
					missionNamespace setVariable ["CODI_Path_parent_" + str _x, _current];
					CODI_Path_variables pushBack ("CODI_Path_parent_" + str _x);
					missionNamespace setVariable ["CODI_Path_g_" + str _x, _tentativeG];
					CODI_Path_variables pushBack ("CODI_Path_g_" + str _x);
					missionNamespace setVariable ["CODI_Path_f_" + str _x, (missionNamespace getVariable ["CODI_Path_g_" + str _x, 999999]) + ([_x, _dst] call CODI_Path_fnc_h)];
					CODI_Path_variables pushBack ("CODI_Path_f_" + str _x);
				};
			};
		}
		forEach _roads;
	};
};
CODI_Path_fnc_h = {
	private["_src","_dst","_dist"];
	_src = param[0, objNull];
	_dst = param[1, objNull];
	_dist = ((getPos _src) distance (getPos _dst))*1.25;
	_dist
};
CODI_Path_fnc_cost = {
	private["_src","_dst","_dist"];
	_src = param[0, objNull];
	_dst = param[1, objNull];
	_dist = ((getPos _src) distance (getPos _dst))*1;
	_dist
};
CODI_Path_fnc_mark = {
	private["_marker","_dst"];
	{
		deleteMarkerLocal _x;
	}
	forEach CODI_Path_markersLocal;
	CODI_Path_markersLocal = [];
	_dst = param[0, objNull];
	_marker = createMarker [str _dst, getPos _dst];
	_marker setMarkerShape "ICON";
	_marker setMarkerColor "ColorWEST";
	_marker setMarkerType "MIL_DOT";
	CODI_Path_markers pushBack _marker;
	while {!isNull _dst} do
	{
		if ((getMarkerPos _marker) distance2d (getPos _dst) > 75) then
		{		
			_marker = createMarker [str _dst, getPos _dst];
			_marker setMarkerShape "ICON";
			_marker setMarkerColor "ColorWEST";
			_marker setMarkerType "MIL_DOT";
		};
		CODI_Path_markers pushBack _marker;
		_dst = missionNamespace getVariable ["CODI_Path_parent_" + str _dst, objNull];
	};
};
CODI_Path_fnc_calcRoute = {
	private["_src","_dst","_srcRoad","_dstRoad"];
	_src = param[0, getPos player];
	_dst = param[1, [0,0,0]];
	_srcRoad = [_src] call CODI_Path_fnc_getNearestRoad;
	_dstRoad = [_dst] call CODI_Path_fnc_getNearestRoad;
	if (isNull _srcRoad || isNull _dstRoad) exitWith {};
	[_srcRoad, _dstRoad] call CODI_Path_fnc_aStar;
};
CODI_Path_fnc_removeMarkers = {
	{
		deleteMarker _x;
	}
	forEach CODI_Path_markers;
	CODI_Path_markers = [];
	{
		missionNamespace setVariable[_x, nil];
	}
	forEach CODI_Path_variables;
	CODI_Path_variables = [];
};
CODI_Path_fnc_start = {
    ["CODI_Path_mapClick", "onMapSingleClick",{
        [getPos player, _pos] spawn CODI_Path_fnc_calcRoute;
		openMap false;
    }] call BIS_fnc_addStackedEventHandler;
    openMap true;
    [] spawn {
        waitUntil{!visibleMap};
        ["CODI_Path_mapClick", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
    };
};
CODI_Path_fnc_getNearestRoad = {
	private["_pos","_roads","_road"];
    _pos = param[0, [0,0,0]];
    _roads = _pos nearRoads 1000;
    if (_roads isEqualTo []) exitWith {objNull};
    _road = _roads deleteAt 0;
    {
        if (((getPos _x) distance2d _pos) < ((getPos _road) distance2d _pos)) then
		{
            _road = _x;
        };
    }
	forEach _roads;
    _road
};
player addAction["Calculate Route", {call CODI_Path_fnc_start;}, [], 0, false, true, "", "count CODI_Path_markers == 0"];
player addAction["Delete Route", {call CODI_Path_fnc_removeMarkers;}, [], 0, false, true, "", "count CODI_Path_markers > 0"];
player addEventHandler ["Respawn", {
	player addAction["Calculate Route", {call CODI_Path_fnc_start;}, [], 0, false, true, "", "count CODI_Path_markers == 0"];
	player addAction["Delete Route", {call CODI_Path_fnc_removeMarkers;}, [], 0, false, true, "", "count CODI_Path_markers > 0"];
}];
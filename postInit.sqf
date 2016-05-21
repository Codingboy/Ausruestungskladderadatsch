waitUntil{!isNil "CODI_LO_preInited"};
waitUntil{!isNil "CODI_LO_Initialised"};

if (isNil "CODI_LO_option_va") then
{
	CODI_LO_option_va = false;//editable
};
if (isNil "CODI_LO_option_lva") then
{
	CODI_LO_option_lva = false;//editable
};
if (isNil "CODI_LO_option_para") then
{
	CODI_LO_option_para = false;
};
if (isNil "CODI_LO_option_dive") then
{
	CODI_LO_option_dive = false;
};
if (isNil "CODI_LO_option_equip") then
{
	CODI_LO_option_equip = true;//editable
};
if (isNil "CODI_LO_equipOnRespawn") then
{
	CODI_LO_equipOnRespawn = true;
};
if (isNil "CODI_LO_option_teleport") then
{
	CODI_LO_option_teleport = true;//editable
};
if (isNil "CODI_LO_option_spectate") then
{
	CODI_LO_option_spectate = true;//editable
};
if (isNil "CODI_LO_setCallsigns") then
{
	CODI_LO_setCallsigns = true;
};
if (isNil "CODI_LO_noShotsAtMissionEnd") then
{
	CODI_LO_noShotsAtMissionEnd = true;
};
if (isNil "CODI_LO_fnc_postInitAmmoResupply") then
{
	CODI_LO_fnc_postInitAmmoResupply = {};
};
if (isNil "CODI_LO_fnc_postInitMedicalResupply") then
{
	CODI_LO_fnc_postInitMedicalResupply = {};
};
if (isNil "CODI_LO_fnc_postInitGrenadeResupply") then
{
	CODI_LO_fnc_postInitGrenadeResupply = {};
};
if (isNil "CODI_LO_fnc_postInitLauncherResupply") then
{
	CODI_LO_fnc_postInitLauncherResupply = {};
};
if (isNil "CODI_LO_fnc_postInitSpecialAmmoResupply") then
{
	CODI_LO_fnc_postInitSpecialAmmoResupply = {};
};
if (isNil "CODI_LO_vanillaFatigue") then
{
	CODI_LO_vanillaFatigue = false;
};
if (isNil "CODI_LO_cleanup") then
{
	CODI_LO_cleanup = true;
};

if (isNil "CODI_LO_boxes") then
{
	CODI_LO_boxes = [];
};
CODI_LO_ServerInitialised = true;
if (hasInterface) then
{
	waitUntil{!isNull player};
	_resolved = [player] call CODI_LO_fnc_resolveClass;
	_class = _resolved select 0;
	if (_class == "ftl" || _class == "sl" || _class == "pl" || (getPlayerUID player) in ["_SP_PLAYER_","76561197996296785"]) then
	{
		execVM "1st_Core\CODI\LO\path.sqf";
	};
	[player] call CODI_LO_fnc_initialEquip;
	player addRating 99999999;
	[player] spawn CODI_Medical_fnc_medicMonitor;
	player addAction ["Fastrope", {[player] spawn CODI_LO_fnc_fastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND (vehicle player) getVariable['CODI_LO_fastropeEnabled', false] AND player != (assignedDriver (vehicle player)) AND (getpos (vehicle player) select 2) > 3 AND (getpos (vehicle player) select 2) < 60 AND (speed (vehicle player)) < 5"];
	player addAction ["Enable Fastrope", {[true, vehicle player] call CODI_LO_fnc_enableFastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND !((vehicle player) getVariable['CODI_LO_fastropeEnabled', false]) AND player == (assignedDriver (vehicle player))"];
	player addAction ["Disable Fastrope", {[false, vehicle player] call CODI_LO_fnc_enableFastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND (vehicle player) getVariable['CODI_LO_fastropeEnabled', false] AND player == (assignedDriver (vehicle player))"];
	player addMPEventHandler["MPRespawn", {
		player addAction ["Fastrope", {[player] spawn CODI_LO_fnc_fastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND (vehicle player) getVariable['CODI_LO_fastropeEnabled', false] AND player != (assignedDriver (vehicle player)) AND (getpos (vehicle player) select 2) > 3 AND (getpos (vehicle player) select 2) < 60 AND (speed (vehicle player)) < 5"];
		player addAction ["Enable Fastrope", {[true, vehicle player] call CODI_LO_fnc_enableFastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND !((vehicle player) getVariable['CODI_LO_fastropeEnabled', false]) AND player == (assignedDriver (vehicle player))"];
		player addAction ["Disable Fastrope", {[false, vehicle player] call CODI_LO_fnc_enableFastrope;}, [], 0, false, true, "", "(vehicle player) isKindOf 'Helicopter' AND (vehicle player) getVariable['CODI_LO_fastropeEnabled', false] AND player == (assignedDriver (vehicle player))"];
		player addRating 99999999;
		[player] spawn CODI_Medical_fnc_medicMonitor;
		if (CODI_LO_equipOnRespawn) then
		{
			[player] call CODI_LO_fnc_initialEquip;
		};
		["Terminate"] call BIS_fnc_EGSpectator;
	}];
	
	if (count playableUnits != 0) then
	{
		//["Preload"] call BIS_fnc_arsenal;
	};
	[5] call TFAR_fnc_setVoiceVolume;

	//workaround for ace featurebug "vanilla damage/no running"
	/*[] spawn {
		while {true} do
		{
			sleep 10;
			player setDamage 0;
		};
	};*/
	//fix for heartrate = 0 after getting shot
	if (ace_medical_level == 2) then
	{
		[] spawn {
			private["_heartRate"];
			while {true} do
			{
				_heartRate = player getVariable ["ace_medical_heartRate", 80];
				_bloodPressure = player getVariable ["ace_medical_bloodPressure", [80, 120]];
				_pain = player getVariable ["ace_medical_pain", 0];
				_painSuppress = player getVariable ["ace_medical_painSuppress", 0];
				if (_heartRate == 0 && (_bloodPressure select 1) >= 90 && (_pain <= 0.7 || _painSuppress > _pain)) then
				{
					_heartRate = 30 + random(20);
					ace_medical_unconsciousConditions = [];
					player setVariable["ace_medical_heartRate", _heartRate];
					player setVariable["ace_medical_inCardiacArrest", false];
					player setVariable["ace_medical_inReviveState", false];
				};
				sleep 30;
			};
		};
	};
	
	if (CODI_LO_noShotsAtMissionEnd) then
	{
		//addMissionEventHandler ["Ended", {removeAllWeapons player; removeAllItems player;}];
		[] spawn {
			waitUntil{sleep 1; !isNil "BIS_fnc_endMission_effects"};
			removeAllWeapons player;
			removeAllItems player;
		};
	};
	
	if (CODI_LO_setCallsigns) then
	{
		[player, "-"] execVM "1st_Core\CODI\setCallsigns.sqf";
	};
	if ((getPlayerUID player) in ["76561197996296785"]) then
	{
		player addAction ["Debug Console", {(finddisplay 46) createdisplay "RscDisplayDebugPublic";}];
	};
	if (player getVariable["CODI_LO_Admin", false] || (getPlayerUID player) in ["_SP_PLAYER_","76561197996296785"] || serverCommandAvailable "#kick") then
	{
		//[[player],"CODI_LO_fnc_becomeZeus",false,false] spawn BIS_fnc_MP;
	};
};
//[] execVM "\1st_Core\CSSA3\CSSA3_init.sqf";
if (isServer) then
{
	if (CODI_LO_cleanup) then
	{
		[] execVM "1st_Core\CLEANUP\repetitive_cleanup.sqf";
	};
	[] spawn {
		while {true} do
		{
			sleep 60;
			call CODI_LO_fnc_fillBoxes;
		};
	};
};
execVM "1st_Core\TOW\fn_advancedTowing.sqf";
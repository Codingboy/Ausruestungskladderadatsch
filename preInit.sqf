tf_no_auto_long_range_radio = true;
TF_give_personal_radio_to_regular_soldier = false;
TF_give_microdagr_to_soldier = false;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;

CODI_LO_fnc_enableFastrope = {
	private["_state","_veh","_rope"];
	_state = _this select 0;
	_veh = _this select 1;
	_veh setVariable["CODI_LO_fastropeEnabled", _state, true];
	if (_state) then
	{
		if (count(ropes _veh) == 0) then
		{
			_rope = ropeCreate [_veh, "slingload0", 0];
		};
		{
			ropeUnwind [_x, 5, 60];
		}
		forEach (ropes _veh);
	}
	else
	{
		{
			ropeUnwind [_x, 5, 0];
		}
		forEach (ropes _veh);
	};
};
CODI_LO_fnc_fastrope = {
	private["_ms","_d","_s","_u","_v"];
	_ms = 5;
	_d = -3;
	_s = _ms / 20;
	_u = (_this select 0);
	_v = (vehicle _u);
	moveOut _u;
	_u attachTo [_v, [0,0,_d]];
	while {(getpos _u select 2) > 0 AND (speed _v) < 5} do
	{
		_u attachTo [_v, [0,0,_d]];
		_d = _d - _s;
		sleep 0.05;
	};
	detach _u;
};
CODI_LO_fnc_becomeZeus = {
	_unit = _this select 0;
	_uid = getPlayerUID _unit;
	_playerString = format ["NSS_AC_Admin_%1", _uid];
	call compile format ['
		if (isNil "NSS_AC_Curator_%1") then
		{
			NSS_AC_Group_%1 = createCenter sideLogic;
			NSS_AC_Group_%1 = createGroup sideLogic;

			NSS_AC_Curator_%1 = NSS_AC_Group_%1 createUnit ["ModuleCurator_F",[0,0,0],[],0,"NONE"];
			NSS_AC_Curator_%1 setVehicleVarname "NSS_AC_Curator_%1";

			NSS_AC_Curator_%1 setVariable ["Owner", ""];
			NSS_AC_Curator_%1 setVariable ["Name", ""];
			NSS_AC_Curator_%1 setVariable ["Addons", 2];
			NSS_AC_Curator_%1 setVariable ["Forced", 0];
			
			NSS_AC_Curator_%1 synchronizeObjectsAdd [%2];
			%2 assignCurator NSS_AC_Curator_%1;
		}
		else
		{
			NSS_AC_Curator_%1 synchronizeObjectsAdd [%2];
			%2 assignCurator NSS_AC_Curator_%1;
		};
	', _uid, _playerString, _unit];
};
CODI_LO_fnc_interact = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_interact.sqf";
CODI_LO_fnc_initTeleport = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_initTeleport.sqf";
CODI_LO_fnc_teleport = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_teleport.sqf";
CODI_LO_fnc_para = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_para.sqf";
CODI_LO_fnc_dive = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_dive.sqf";
CODI_LO_fnc_initAllInOne = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_initAllInOne.sqf";
CODI_LO_fnc_initEnableVA = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_initEnableVA.sqf";
CODI_LO_fnc_enableVA = compile preprocessFileLineNumbers "\1st_Core\CODI\LO\fnc_enableVA.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\lo.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\classes.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\usmc_wood.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\usmc_desert.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\bw_fleck.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\bw_tropen.sqf";
call compile preprocessFileLineNumbers "\1st_Core\SV\rus_emr.sqf";
call compile preprocessFileLineNumbers "\1st_Core\SV\pmc_dul.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\LO\weapons.sqf";
call compile preprocessFileLineNumbers "\1st_Core\CODI\Medical\init.sqf";
CODI_LO_preInited = true;
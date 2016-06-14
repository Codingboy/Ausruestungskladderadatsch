CODI_LO_fnc_unarmed = {
	CODI_LO_radio = ["tf_anprc152"];
	CODI_LO_map = ["ItemMap"];
	CODI_LO_binocular = ["Binocular"];
	CODI_LO_watch = ["ItemWatch"];
	CODI_LO_compass = ["ItemCompass"];
	CODI_LO_gps = ["ItemGPS"];
	["ACE_EarPlugs"] call CODI_LO_fnc_addUniformItem;
	/*if (ace_medical_level == 2) then
	{
		["ACE_fieldDressing", 14] call CODI_LO_fnc_addUniformItem;
		["ACE_morphine", 2] call CODI_LO_fnc_addUniformItem;
		["ACE_tourniquet", 1] call CODI_LO_fnc_addUniformItem;
	}
	else
	{
		["ACE_morphine", 2] call CODI_LO_fnc_addUniformItem;
		["ACE_fieldDressing", 15] call CODI_LO_fnc_addUniformItem;
	};*/
	["CODI_MS_Item_Bandage", 10] call CODI_LO_fnc_addUniformItem;
	["CODI_MS_Item_XStat", 2] call CODI_LO_fnc_addUniformItem;
	["CODI_MS_Item_Morphine", 2] call CODI_LO_fnc_addUniformItem;
	["CODI_MS_Item_Tourniquet", 1] call CODI_LO_fnc_addUniformItem;
	["SmokeShellGreen", 2] call CODI_LO_fnc_addUniformItem;
	["Chemlight_green", 1] call CODI_LO_fnc_addUniformItem;
	["ACE_HandFlare_Green", 1] call CODI_LO_fnc_addUniformItem;
	["ACE_CableTie", 3] call CODI_LO_fnc_addUniformItem;
	["ACE_MapTools", 1] call CODI_LO_fnc_addUniformItem;
	["ACE_Flashlight_KSF1", 1] call CODI_LO_fnc_addUniformItem;
	["CODI_OFT_Tablet", 1] call CODI_LO_fnc_addUniformItem;
	["CODI_BFT_Tablet", 1] call CODI_LO_fnc_addUniformItem;
	["ACE_microDAGR", 1] call CODI_LO_fnc_addVestItem;
};
CODI_LO_fnc_rflm = {
	call CODI_LO_fnc_unarmed;
};
CODI_LO_fnc_cfr = {
	call CODI_LO_fnc_rflm;
	/*if (ace_medical_level == 2) then
	{
		["ACE_morphine", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_epinephrine", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_salineIV", 6] call CODI_LO_fnc_addBackpackItem;
		["ACE_salineIV_500", 6] call CODI_LO_fnc_addBackpackItem;
		["ACE_salineIV_250", 6] call CODI_LO_fnc_addBackpackItem;
		["ACE_personalAidKit", 1] call CODI_LO_fnc_addBackpackItem;
		["ACE_tourniquet", 5] call CODI_LO_fnc_addBackpackItem;
		["ACE_packingBandage", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_fieldDressing", 5] call CODI_LO_fnc_addBackpackItem;
		["ACE_elasticBandage", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_quikclot", 5] call CODI_LO_fnc_addBackpackItem;
	}
	else
	{
		["ACE_epinephrine", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_morphine", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_packingBandage", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_elasticBandage", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_fieldDressing", 5] call CODI_LO_fnc_addBackpackItem;
		["ACE_quikclot", 5] call CODI_LO_fnc_addBackpackItem;
		["ACE_bloodIV", 6] call CODI_LO_fnc_addBackpackItem;
	};*/
	["CODI_MS_Item_Bandage", 30] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Morphine", 15] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_XStat", 30] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_QuikClot", 15] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Tourniquet", 10] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Saline", 10] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Epinephrine", 5] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Naloxone", 5] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Chloroform", 5] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Bloodbag", 5] call CODI_LO_fnc_addBackpackItem;
	player setVariable ["CODI_MS_cfr", true];
};
CODI_LO_fnc_medic = {
	call CODI_LO_fnc_rflm;
	/*if (ace_medical_level == 2) then
	{
		["ACE_morphine", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_epinephrine", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_salineIV", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_salineIV_500", 7] call CODI_LO_fnc_addBackpackItem;
		["ACE_personalAidKit", 1] call CODI_LO_fnc_addBackpackItem;
		["ACE_tourniquet", 5] call CODI_LO_fnc_addBackpackItem;
		["ACE_packingBandage", 18] call CODI_LO_fnc_addBackpackItem;
		["ACE_fieldDressing", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_elasticBandage", 18] call CODI_LO_fnc_addBackpackItem;
		["ACE_quikclot", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_surgicalKit", 1] call CODI_LO_fnc_addBackpackItem;
	}
	else
	{
		["ACE_epinephrine", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_morphine", 15] call CODI_LO_fnc_addBackpackItem;
		["ACE_packingBandage", 18] call CODI_LO_fnc_addBackpackItem;
		["ACE_elasticBandage", 18] call CODI_LO_fnc_addBackpackItem;
		["ACE_fieldDressing", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_quikclot", 10] call CODI_LO_fnc_addBackpackItem;
		["ACE_bloodIV", 10] call CODI_LO_fnc_addBackpackItem;
	};*/
	["CODI_MS_Item_Bandage", 40] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Morphine", 30] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_SewingKit", 20] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_QuikClot", 15] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Blood0", 20] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Naloxone", 10] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Epinephrine", 10] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Adenosine", 10] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Chloroform", 5] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Bloodbag", 5] call CODI_LO_fnc_addBackpackItem;
	player setVariable ["CODI_MS_medic", true];
};
CODI_LO_fnc_ftl = {
	call CODI_LO_fnc_rflm;
	["SmokeShellGreen", 5] call CODI_LO_fnc_addBackpackItem;
	["ACE_HandFlare_Green", 5] call CODI_LO_fnc_addBackpackItem;
	["CODI_Arty_Tablet"] call CODI_LO_fnc_addBackpackItem;
	[CODI_LO_binocular, "ACE_Yardage450"] call BIS_fnc_ArrayUnshift;
	["ACE_EntrenchingTool"] call CODI_LO_fnc_addBackpackItem;
	["ACE_DAGR"] call CODI_LO_fnc_addBackpackItem;
};
CODI_LO_fnc_lmg = {
	call CODI_LO_fnc_rflm;
	CODI_LO_goggles = ["G_Combat"];
	["ACE_SpareBarrel"] call CODI_LO_fnc_addBackpackItem;
};
CODI_LO_fnc_mmg = {
	call CODI_LO_fnc_lmg;
};
CODI_LO_fnc_grn = {
	call CODI_LO_fnc_rflm;
	[CODI_LO_binocular, "ACE_Yardage450"] call BIS_fnc_ArrayUnshift;
};
CODI_LO_fnc_eng = {
	call CODI_LO_fnc_rflm;
	["ToolKit"] call CODI_LO_fnc_addBackpackItem;
	["ACE_wirecutter"] call CODI_LO_fnc_addBackpackItem;
	["ACE_EntrenchingTool"] call CODI_LO_fnc_addBackpackItem;
	player setVariable ["ACE_IsEngineer", 1, true];
};
CODI_LO_fnc_uav = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_es = {
	call CODI_LO_fnc_rflm;
	["DemoCharge_Remote_Mag", 4] call CODI_LO_fnc_addBackpackItem;
	["SatchelCharge_Remote_Mag", 2] call CODI_LO_fnc_addBackpackItem;
	["ACE_M26_Clacker"] call CODI_LO_fnc_addBackpackItem;
	["MineDetector"] call CODI_LO_fnc_addBackpackItem;
	["ACE_DefusalKit"] call CODI_LO_fnc_addBackpackItem;
	["ACE_DeadManSwitch"] call CODI_LO_fnc_addBackpackItem;
	["Revo_mD_battery"] call CODI_LO_fnc_addBackpackItem;
	["Revo_mD_Flag"] call CODI_LO_fnc_addBackpackItem;
	player setVariable ["ACE_isEOD", true, true];
};
CODI_LO_fnc_dm = {
	call CODI_LO_fnc_rflm;
	["ACE_RangeCard"] call CODI_LO_fnc_addVestItem;
	[CODI_LO_binocular, "ACE_Yardage450"] call BIS_fnc_ArrayUnshift;
};
CODI_LO_fnc_crew = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_com = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_sl = {
	call CODI_LO_fnc_rflm;
	["CODI_Arty_Tablet"] call CODI_LO_fnc_addBackpackItem;
	[CODI_LO_binocular, "ACE_Yardage450"] call BIS_fnc_ArrayUnshift;
	["ACE_EntrenchingTool"] call CODI_LO_fnc_addBackpackItem;
	["ACE_DAGR"] call CODI_LO_fnc_addBackpackItem;
};
CODI_LO_fnc_cq = {
	call CODI_LO_fnc_rflm;
	["CODI_MS_Item_Morphine", 2] call CODI_LO_fnc_addBackpackItem;
	["CODI_MS_Item_Bandage", 10] call CODI_LO_fnc_addBackpackItem;
};
CODI_LO_fnc_mortar = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_amortar = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_pilot = {
	call CODI_LO_fnc_rflm;
	player setVariable ["ACE_GForceCoef", 0.55, true];
};
CODI_LO_fnc_helipilot = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_helicrew = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_ac = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_lat = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_at = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_aa = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_flanker = {
	call CODI_LO_fnc_rflm;
};
CODI_LO_fnc_sniper = {
	call CODI_LO_fnc_rflm;
	["ACE_RangeCard"] call CODI_LO_fnc_addVestItem;
};
CODI_LO_fnc_spotter = {
	call CODI_LO_fnc_rflm;
	["ACE_ATragMX"] call CODI_LO_fnc_addUniformItem;
	["ACE_DAGR"] call CODI_LO_fnc_addBackpackItem;
	["ACE_Kestrel4500"] call CODI_LO_fnc_addUniformItem;
	["ACE_Tripod"] call CODI_LO_fnc_addBackpackItem;
	[CODI_LO_binocular, "ACE_Yardage450"] call BIS_fnc_ArrayUnshift;
	[CODI_LO_binocular, "ACE_Vector"] call BIS_fnc_ArrayUnshift;
	[CODI_LO_binocular, "Rangefinder"] call BIS_fnc_ArrayUnshift;
};
CODI_LO_fnc_pl = {
	call CODI_LO_fnc_rflm;
	["CODI_Arty_Tablet"] call CODI_LO_fnc_addBackpackItem;
};
CODI_LO_fnc_fac = {
	call CODI_LO_fnc_rflm;
};





CODI_LO_fnc_ammoBox = {
	private["_box","_colour"];
	_box = param[0, objNull];
	_colour = param[1, ""];
	[_box] call CODI_LO_fnc_clearBox;
	call compile format["[_box] call CODI_LO_fnc_ammoBox_%1;", _colour];
	[_box] call CODI_LO_fnc_postInitAmmoResupply;
};
CODI_LO_fnc_medicBox = {
	private["_box","_colour"];
	_box = param[0, objNull];
	_colour = param[1, ""];
	[_box] call CODI_LO_fnc_clearBox;
	call compile format["[_box] call CODI_LO_fnc_medicBox_%1;", _colour];
	[_box] call CODI_LO_fnc_postInitMedicalResupply;
};
CODI_LO_fnc_specialAmmoBox = {
	private["_box","_colour"];
	_box = param[0, objNull];
	_colour = param[1, ""];
	[_box] call CODI_LO_fnc_clearBox;
	call compile format["[_box] call CODI_LO_fnc_specialAmmoBox_%1;", _colour];
	[_box] call CODI_LO_fnc_postInitSpecialAmmoResupply;
};
CODI_LO_fnc_launcherBox = {
	private["_box","_colour"];
	_box = param[0, objNull];
	_colour = param[1, ""];
	[_box] call CODI_LO_fnc_clearBox;
	call compile format["[_box] call CODI_LO_fnc_launcherBox_%1;", _colour];
	[_box] call CODI_LO_fnc_postInitLauncherResupply;
};
CODI_LO_fnc_grenadeBox = {
	private["_box","_colour"];
	_box = param[0, objNull];
	_colour = param[1, ""];
	[_box] call CODI_LO_fnc_clearBox;
	call compile format["[_box] call CODI_LO_fnc_grenadeBox_%1;", _colour];
	[_box] call CODI_LO_fnc_postInitGrenadeResupply;
};
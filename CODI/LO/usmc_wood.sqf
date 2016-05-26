if (isNil "CODI_LO_usmc_wood") then
{
	CODI_LO_usmc_wood = ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
}
else
{
	{
		if (!(_x in CODI_LO_usmc_wood)) then
		{
			CODI_LO_usmc_wood pushBack _x;
		};
	}
	forEach ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
};
CODI_LO_usmc_wood sort true;
if (isNil "CODI_LO_colours") then
{
	CODI_LO_colours = ["usmc_wood"];
}
else
{
	{
		if (!(_x in CODI_LO_colours)) then
		{
			CODI_LO_colours pushBack _x;
		};
	}
	forEach ["usmc_wood"];
};
CODI_LO_fnc_unarmed_usmc_wood = {
	CODI_LO_uniform = ["rhs_uniform_FROG01_wd","MNP_CombatUniform_USMC_T"];
	CODI_LO_vest = ["rhsusf_spc","MNP_Vest_USMC_2"];
	CODI_LO_backpack = ["rhsusf_assault_eagleaiii_coy"];
	CODI_LO_helmet = ["rhsusf_mich_helmet_marpatwd","MNP_Helmet_USMC"];
	CODI_LO_nv = ["NVGoggles_INDEP"];
};
CODI_LO_fnc_rflm_usmc_wood = {
	call CODI_LO_fnc_unarmed_usmc_wood;
	CODI_LO_vest = ["rhsusf_spc_rifleman","MNP_Vest_USMC_2"];
	CODI_LO_weaponPacks = [["fnx45","p99","m9"],["grenades_he","grenades_flash","grenades_smoke"],["m4","lar15","hk416"],[]];
};
CODI_LO_fnc_cfr_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
};
CODI_LO_fnc_medic_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_ftl_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m4_gl_ftl","hk416_gl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m249","m27","m60"]];
};
CODI_LO_fnc_mmg_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [2, ["m4_gl","hk416_gl"]];
};
CODI_LO_fnc_eng_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
};
CODI_LO_fnc_uav_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_dm_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [2, ["m14","sig556"]];
};
CODI_LO_fnc_crew_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = [];
	CODI_LO_helmet = ["H_HelmetCrew_B"];
	CODI_LO_weaponPacks set [2, ["mp510"]];
};
CODI_LO_fnc_com_usmc_wood = {
	call CODI_LO_fnc_crew_usmc_wood;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [2, ["hk53"]];
};
CODI_LO_fnc_mortar_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_usmc_wood = {
	call CODI_LO_fnc_helicrew_usmc_wood;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_usmc_wood = {
	call CODI_LO_fnc_helicrew_usmc_wood;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["U_B_HeliPilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = [""];
	CODI_LO_vest = [""];
	CODI_LO_helmet = ["H_CrewHelmetHeli_B"];
	CODI_LO_uniformItems = [];
	CODI_LO_vestItems = [];
	["ACE_fieldDressing", 10] call CODI_LO_fnc_addUniformItem;
	["ACE_morphine", 2] call CODI_LO_fnc_addUniformItem;
	["ACE_Flashlight_KSF1"] call CODI_LO_fnc_addUniformItem;
	["ACE_MapTools"] call CODI_LO_fnc_addUniformItem;
	["ACE_microDAGR"] call CODI_LO_fnc_addUniformItem;
	["CODI_OFT_Tablet"] call CODI_LO_fnc_addUniformItem;
	["CODI_BFT_Tablet"] call CODI_LO_fnc_addUniformItem;
	["ACE_HandFlare_Green", 2] call CODI_LO_fnc_addUniformItem;
	["SmokeShellGreen", 2] call CODI_LO_fnc_addUniformItem;
	["11Rnd_45ACP_Mag", 2] call CODI_LO_fnc_addUniformItem;
	["ACE_IR_Strobe_Item", 1] call CODI_LO_fnc_addUniformItem;
	CODI_LO_weaponPacks set [1, []];
	CODI_LO_weaponPacks set [2, []];
	CODI_LO_weaponPacks set [0, ["fnx45_pilot","p99_pilot","m9_pilot"]];
};
CODI_LO_fnc_ac_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [3, ["nlaw"]];
};
CODI_LO_fnc_at_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	if (332350 in (getDLCs 1)) then
	{
		CODI_LO_uniform = ["U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_GhillieSuit"];
	}
	else
	{
		CODI_LO_uniform = ["U_B_GhillieSuit"];
	};
};
CODI_LO_fnc_sniper_usmc_wood = {
	call CODI_LO_fnc_flanker_usmc_wood;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_usmc_wood = {
	call CODI_LO_fnc_flanker_usmc_wood;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sp_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [2, ["lar15_sp"]];
};
CODI_LO_fnc_pl_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_helmet = ["H_Beret_02"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_usmc_wood = {
	call CODI_LO_fnc_pl_usmc_wood;
	CODI_LO_helmet = ["H_Beret_blk"];
};
CODI_LO_fnc_fac_usmc_wood = {
	call CODI_LO_fnc_rflm_usmc_wood;
	CODI_LO_weaponPacks set [2, ["m4_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
};




CODI_LO_fnc_ammoBox_usmc_wood = {
	private["_box"];
	_box = param[0, objNull];
	[_box, "lar15"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "lar15"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "lar15_sp"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m4"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m4"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m4_gl"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m249"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "sig556"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m14"] call CODI_LO_fnc_addMagazinesToBox;
};
CODI_LO_fnc_medicBox_usmc_wood = {
	private["_box"];
	_box = param[0, objNull];
	if (ace_medical_level == 2) then
	{
		_box addItemCargoGlobal ["ACE_morphine", 20];
		_box addItemCargoGlobal ["ACE_epinephrine", 20];
		_box addItemCargoGlobal ["ACE_packingBandage", 30];
		_box addItemCargoGlobal ["ACE_elasticBandage", 30];
		_box addItemCargoGlobal ["ACE_fieldDressing", 30];
		_box addItemCargoGlobal ["ACE_quikclot", 30];
		_box addItemCargoGlobal ["ACE_salineIV", 15];
		_box addItemCargoGlobal ["ACE_salineIV_500", 15];
		_box addItemCargoGlobal ["ACE_salineIV_250", 15];
	}
	else
	{
		_box addItemCargoGlobal ["ACE_morphine", 20];
		_box addItemCargoGlobal ["ACE_epinephrine", 20];
		_box addItemCargoGlobal ["ACE_fieldDressing", 80];
		_box addItemCargoGlobal ["ACE_bloodIV", 15];
	};
};
CODI_LO_fnc_specialAmmoBox_usmc_wood = {
	private["_box"];
	_box = param[0, objNull];
	[_box, "hk121"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "lwmmg"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m60"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "awc"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "awm"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "gm6"] call CODI_LO_fnc_addMagazinesToBox;
	[_box, "m200"] call CODI_LO_fnc_addMagazinesToBox;
};
CODI_LO_fnc_launcherBox_usmc_wood = {
	private["_box"];
	_box = param[0, objNull];
	_box addMagazineCargoGlobal ["Titan_AT", 5];
	_box addMagazineCargoGlobal ["Titan_AA", 5];
	_box addMagazineCargoGlobal ["Titan_AP", 10];
};
CODI_LO_fnc_grenadeBox_usmc_wood = {
	private["_box"];
	_box = param[0, objNull];
	_box addMagazineCargoGlobal ["HandGrenade", 10];
	_box addMagazineCargoGlobal ["SmokeShell", 10];
	_box addMagazineCargoGlobal ["SmokeShellGreen", 10];
	_box addMagazineCargoGlobal ["Chemlight_green", 10];
	_box addMagazineCargoGlobal ["ACE_HandFlare_Green", 10];
	_box addMagazineCargoGlobal ["1Rnd_HE_Grenade_shell", 30];
};
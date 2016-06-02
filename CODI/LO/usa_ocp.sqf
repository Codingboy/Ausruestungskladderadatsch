if (isNil "CODI_LO_usa_ocp") then
{
	CODI_LO_usa_ocp = ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","pl","fac"];
}
else
{
	{
		if (!(_x in CODI_LO_usa_ocp)) then
		{
			CODI_LO_usa_ocp pushBack _x;
		};
	}
	forEach ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","pl","fac"];
};
CODI_LO_usa_ocp sort true;
if (isNil "CODI_LO_colours") then
{
	CODI_LO_colours = ["usa_ocp"];
}
else
{
	{
		if (!(_x in CODI_LO_colours)) then
		{
			CODI_LO_colours pushBack _x;
		};
	}
	forEach ["usa_ocp"];
};
CODI_LO_fnc_unarmed_usa_ocp = {
	CODI_LO_uniform = ["rhs_uniform_cu_ocp","MNP_CombatUniform_DS_A"];
	CODI_LO_vest = ["rhsusf_iotv_ocp_Rifleman","MNP_Vest_USMC_2"];
	CODI_LO_backpack = ["rhsusf_assault_eagleaiii_ocp"];
	CODI_LO_helmet = ["rhsusf_ach_helmet_ocp","MNP_Helmet_DS"];
	CODI_LO_nv = ["NVGoggles_INDEP"];
};
CODI_LO_fnc_rflm_usa_ocp = {
	call CODI_LO_fnc_unarmed_usa_ocp;
	CODI_LO_weaponPacks = [["fnx45","p99","m9"],["grenades_he","grenades_flash","grenades_smoke"],["m4","lar15"],[]];
};
CODI_LO_fnc_cfr_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
};
CODI_LO_fnc_medic_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
};
CODI_LO_fnc_ftl_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [2, ["m4_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [2, ["m249","m60"]];
};
CODI_LO_fnc_mmg_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_weaponPacks set [2, ["m4_gl"]];
};
CODI_LO_fnc_eng_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
};
CODI_LO_fnc_uav_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
};
CODI_LO_fnc_dm_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_weaponPacks set [2, ["m14","sig556","lar15_sp"]];
};
CODI_LO_fnc_crew_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = [];
	CODI_LO_helmet = ["H_HelmetCrew_B"];
	CODI_LO_weaponPacks set [2, ["mp510"]];
};
CODI_LO_fnc_com_usa_ocp = {
	call CODI_LO_fnc_crew_usa_ocp;
	CODI_LO_backpack = ["tf_rt1523g_big"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["tf_rt1523g_big"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_weaponPacks set [2, ["hk53"]];
};
CODI_LO_fnc_mortar_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_usa_ocp = {
	call CODI_LO_fnc_helicrew_usa_ocp;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_usa_ocp = {
	call CODI_LO_fnc_helicrew_usa_ocp;
	CODI_LO_backpack = ["tf_rt1523g_big"];
	CODI_LO_uniform = ["U_B_HeliPilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
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
CODI_LO_fnc_ac_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_weaponPacks set [3, ["nlaw"]];
};
CODI_LO_fnc_at_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["B_Carryall_mcamo"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_backpack = ["tf_rt1523g_big"];
	if (332350 in (getDLCs 1)) then
	{
		CODI_LO_uniform = ["U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_GhillieSuit"];
	}
	else
	{
		CODI_LO_uniform = ["U_B_GhillieSuit"];
	};
};
CODI_LO_fnc_sniper_usa_ocp = {
	call CODI_LO_fnc_flanker_usa_ocp;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_usa_ocp = {
	call CODI_LO_fnc_flanker_usa_ocp;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_pl_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_helmet = ["H_Beret_02"];
	CODI_LO_backpack = ["tf_rt1523g_big"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_fac_usa_ocp = {
	call CODI_LO_fnc_rflm_usa_ocp;
	CODI_LO_weaponPacks set [2, ["m4_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
	CODI_LO_backpack = ["tf_rt1523g_big"];
};
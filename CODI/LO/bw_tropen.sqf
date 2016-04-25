if (isNil "CODI_LO_bw_tropen") then
{
	CODI_LO_bw_tropen = ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","hmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
}
else
{
	{
		if (!(_x in CODI_LO_bw_tropen)) then
		{
			CODI_LO_bw_tropen pushBack _x;
		};
	}
	forEach ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","hmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
};
CODI_LO_bw_tropen sort true;
if (isNil "CODI_LO_colours") then
{
	CODI_LO_colours = ["bw_tropen"];
}
else
{
	{
		if (!(_x in CODI_LO_colours)) then
		{
			CODI_LO_colours pushBack _x;
		};
	}
	forEach ["bw_tropen"];
};
CODI_LO_fnc_unarmed_bw_tropen = {
	CODI_LO_uniform = ["BWA3_Uniform_idz_Tropen","BWA3_Uniform_Tropen","MNP_CombatUniform_Germany_D"];
	CODI_LO_vest = ["BWA3_Vest_Rifleman1_Tropen","MNP_Vest_Germany_D"];
	CODI_LO_helmet = ["BWA3_MICH_Tropen","BWA3_M92_Tropen","BWA3_OpsCore_Tropen","MNP_Helmet_Germany_D"];
	CODI_LO_backpack = ["BWA3_Kitbag_Tropen"];
	CODI_LO_nv = ["NVGoggles"];
};
CODI_LO_fnc_rflm_bw_tropen = {
	call CODI_LO_fnc_unarmed_bw_tropen;
	CODI_LO_weaponPacks = [["fnx45","p99"],["grenades_he","grenades_flash","grenades_smoke"],["g36","g3"],[]];
};
CODI_LO_fnc_cfr_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Kitbag_Tropen_Medic"];
};
CODI_LO_fnc_medic_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Kitbag_Tropen_Medic"];
};
CODI_LO_fnc_ftl_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [2, ["g36_gl_ftl","g3_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [2, ["mg4"]];
};
CODI_LO_fnc_mmg_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [2, ["mg5"]];
};
CODI_LO_fnc_hmg_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [2, ["g36_gl","g3_gl"]];
};
CODI_LO_fnc_eng_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
};
CODI_LO_fnc_uav_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
};
CODI_LO_fnc_dm_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [2, ["psg1","sig556"]];
};
CODI_LO_fnc_crew_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = [];
	[CODI_LO_helmet, "BWA3_CrewmanKSK_Tropen_Headset"] call BIS_fnc_ArrayUnshift;
	CODI_LO_weaponPacks set [2, ["mp5"]];
};
CODI_LO_fnc_com_bw_tropen = {
	call CODI_LO_fnc_crew_bw_tropen;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [2, ["hk53"]];
};
CODI_LO_fnc_mortar_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_bw_tropen = {
	call CODI_LO_fnc_helicrew_bw_tropen;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_bw_tropen = {
	call CODI_LO_fnc_helicrew_bw_tropen;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_helmet = ["BWA3_Knighthelm","H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = [""];
	CODI_LO_vest = [""];
	CODI_LO_uniform = ["BWA3_Uniform_Crew_Tropen"];
	CODI_LO_helmet = ["BWA3_Knighthelm","H_CrewHelmetHeli_B"];
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
	CODI_LO_weaponPacks set [0, ["fnx45_pilot","p99_pilot"]];
};
CODI_LO_fnc_ac_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [3, ["pzf3"]];
};
CODI_LO_fnc_at_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["BWA3_Carryall_Tropen"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	if (332350 in (getDLCs 1)) then
	{
		CODI_LO_uniform = ["U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_GhillieSuit","BWA3_Uniform_Ghillie_Tropen","BWA3_Uniform_Ghillie_idz_Tropen"];
	}
	else
	{
		CODI_LO_uniform = ["BWA3_Uniform_Ghillie_Tropen","BWA3_Uniform_Ghillie_idz_Tropen","U_B_GhillieSuit"];
	};
};
CODI_LO_fnc_sniper_bw_tropen = {
	call CODI_LO_fnc_flanker_bw_tropen;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_bw_tropen = {
	call CODI_LO_fnc_flanker_bw_tropen;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sp_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [2, ["g36_sp","g3_sp"]];
};
CODI_LO_fnc_pl_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_helmet = ["H_Beret_02"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_bw_tropen = {
	call CODI_LO_fnc_pl_bw_tropen;
	CODI_LO_helmet = ["H_Beret_blk"];
};
CODI_LO_fnc_fac_bw_tropen = {
	call CODI_LO_fnc_rflm_bw_tropen;
	CODI_LO_weaponPacks set [2, ["g36_gl_fac","g3_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
};
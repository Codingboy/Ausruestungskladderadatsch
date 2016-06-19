if (isNil "CODI_LO_bw_fleck") then
{
	CODI_LO_bw_fleck = ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","pl","fac"];
}
else
{
	{
		if (!(_x in CODI_LO_bw_fleck)) then
		{
			CODI_LO_bw_fleck pushBack _x;
		};
	}
	forEach ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","pl","fac"];
};
CODI_LO_bw_fleck sort true;
if (isNil "CODI_LO_colours") then
{
	CODI_LO_colours = ["bw_fleck"];
}
else
{
	{
		if (!(_x in CODI_LO_colours)) then
		{
			CODI_LO_colours pushBack _x;
		};
	}
	forEach ["bw_fleck"];
};
CODI_LO_fnc_unarmed_bw_fleck = {
	CODI_LO_uniform = ["BWA3_Uniform_idz_Fleck","BWA3_Uniform_Fleck","MNP_CombatUniform_Germany"];
	CODI_LO_vest = ["BWA3_Vest_Rifleman1_Fleck","MNP_Vest_Germany"];
	CODI_LO_backpack = ["BWA3_Kitbag_Fleck"];
	CODI_LO_helmet = ["BWA3_MICH_Fleck","BWA3_M92_Fleck","BWA3_OpsCore_Fleck","MNP_Helmet_Germany"];
	CODI_LO_nv = ["NVGoggles_INDEP"];
};
CODI_LO_fnc_rflm_bw_fleck = {
	call CODI_LO_fnc_unarmed_bw_fleck;
	CODI_LO_weaponPacks = [["fnx45","p99","no_pistol"],["grenades_he","grenades_flash","grenades_smoke","no_grenade"],["g36","","","g36mli","no_rifle"],["no_launcher"]];
};
CODI_LO_fnc_cfr_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Kitbag_Fleck_Medic"];
};
CODI_LO_fnc_medic_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Kitbag_Fleck_Medic"];
};
CODI_LO_fnc_ftl_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [2, ["g36_gl_ftl","g3_gl_ftl","g36mli_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [2, ["mg4","mg5","mg36"]];
};
CODI_LO_fnc_mmg_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_weaponPacks set [2, ["g36_gl","g3_gl","g36mli_gl"]];
};
CODI_LO_fnc_eng_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
};
CODI_LO_fnc_uav_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
};
CODI_LO_fnc_dm_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_weaponPacks set [2, ["psg1","sig556","g3sg1","g36_sp","g3_sp","g36mli_sp"]];
};
CODI_LO_fnc_crew_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = [];
	[CODI_LO_helmet, "BWA3_CrewmanKSK_Fleck_Headset"] call BIS_fnc_ArrayUnshift;
	CODI_LO_weaponPacks set [2, ["mp510","mp7"]];
};
CODI_LO_fnc_com_bw_fleck = {
	call CODI_LO_fnc_crew_bw_fleck;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_weaponPacks set [2, ["hk53","mp7"]];
};
CODI_LO_fnc_mortar_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_bw_fleck = {
	call CODI_LO_fnc_helicrew_bw_fleck;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_bw_fleck = {
	call CODI_LO_fnc_helicrew_bw_fleck;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_helmet = ["BWA3_Knighthelm","H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = [""];
	CODI_LO_vest = [""];
	CODI_LO_uniform = ["BWA3_Uniform_Crew_Fleck"];
	CODI_LO_helmet = ["BWA3_Knighthelm","H_CrewHelmetHeli_B"];
	CODI_LO_uniformItems = [];
	CODI_LO_vestItems = [];
	["CODI_MS_Item_Bandage", 10] call CODI_LO_fnc_addUniformItem;
	["CODI_MS_Item_Morphine", 2] call CODI_LO_fnc_addUniformItem;
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
CODI_LO_fnc_ac_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_weaponPacks set [3, ["pzf3"]];
};
CODI_LO_fnc_at_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["BWA3_Carryall_Fleck"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	if (332350 in (getDLCs 1)) then
	{
		CODI_LO_uniform = ["U_B_FullGhillie_lsh","U_B_FullGhillie_sard","U_B_GhillieSuit","BWA3_Uniform_Ghillie_Fleck","BWA3_Uniform_Ghillie_idz_Fleck"];
	}
	else
	{
		CODI_LO_uniform = ["BWA3_Uniform_Ghillie_Fleck","BWA3_Uniform_Ghillie_idz_Fleck","U_B_GhillieSuit"];
	};
};
CODI_LO_fnc_sniper_bw_fleck = {
	call CODI_LO_fnc_flanker_bw_fleck;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_bw_fleck = {
	call CODI_LO_fnc_flanker_bw_fleck;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_pl_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_helmet = ["H_Beret_02"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_fac_bw_fleck = {
	call CODI_LO_fnc_rflm_bw_fleck;
	CODI_LO_weaponPacks set [2, ["g36_gl_fac","g3_gl_fac","g36mli_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
};
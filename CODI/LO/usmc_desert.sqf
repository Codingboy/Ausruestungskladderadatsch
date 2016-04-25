if (isNil "CODI_LO_usmc_desert") then
{
	CODI_LO_usmc_desert = ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","hmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
}
else
{
	{
		if (!(_x in CODI_LO_usmc_desert)) then
		{
			CODI_LO_usmc_desert pushBack _x;
		};
	}
	forEach ["unarmed","rflm","cfr","medic","ftl","lmg","mmg","hmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","sniper","flanker","spotter","sp","pl","ps","fac"];
};
CODI_LO_usmc_desert sort true;
if (isNil "CODI_LO_colours") then
{
	CODI_LO_colours = ["usmc_desert"];
}
else
{
	{
		if (!(_x in CODI_LO_colours)) then
		{
			CODI_LO_colours pushBack _x;
		};
	}
	forEach ["usmc_desert"];
};
CODI_LO_fnc_unarmed_usmc_desert = {
	CODI_LO_uniform = ["rhs_uniform_FROG01_d"];
	CODI_LO_vest = ["rhsusf_spc"];
	CODI_LO_backpack = ["rhsusf_assault_eagleaiii_coy"];
	CODI_LO_helmet = ["rhsusf_mich_helmet_marpatd"];
	CODI_LO_nv = ["NVGoggles"];
};
CODI_LO_fnc_rflm_usmc_desert = {
	call CODI_LO_fnc_unarmed_usmc_desert;
	CODI_LO_vest = ["rhsusf_spc_rifleman"];
	CODI_LO_weaponPacks = [["fnx45","p99"],["grenades_he","grenades_flash","grenades_smoke"],["m4","lar15"],[]];
};
CODI_LO_fnc_cfr_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
};
CODI_LO_fnc_medic_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_ftl_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m4_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m249"]];
};
CODI_LO_fnc_mmg_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m60"]];
};
CODI_LO_fnc_hmg_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [2, ["m4_gl"]];
};
CODI_LO_fnc_eng_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
};
CODI_LO_fnc_uav_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_dm_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [2, ["m14","sig556"]];
};
CODI_LO_fnc_crew_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = [];
	CODI_LO_helmet = ["H_HelmetCrew_B"];
	CODI_LO_weaponPacks set [2, ["mp5"]];
};
CODI_LO_fnc_com_usmc_desert = {
	call CODI_LO_fnc_crew_usmc_desert;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod_tropen"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod_tropen"];
};
CODI_LO_fnc_cq_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [2, ["hk53"]];
};
CODI_LO_fnc_mortar_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_usmc_desert = {
	call CODI_LO_fnc_helicrew_usmc_desert;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_usmc_desert = {
	call CODI_LO_fnc_helicrew_usmc_desert;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod_tropen"];
	CODI_LO_uniform = ["U_B_HeliPilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = [];
	CODI_LO_vest = [];
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
	CODI_LO_weaponPacks set [0, ["fnx45_pilot","p99_pilot"]];
};
CODI_LO_fnc_ac_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [3, ["nlaw"]];
};
CODI_LO_fnc_at_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod_tropen"];
	if (332350 in (getDLCs 1)) then
	{
		CODI_LO_uniform = ["U_B_FullGhillie_ard","U_B_GhillieSuit"];
	}
	else
	{
		CODI_LO_uniform = ["U_B_GhillieSuit"];
	};
};
CODI_LO_fnc_sniper_usmc_desert = {
	call CODI_LO_fnc_flanker_usmc_desert;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_usmc_desert = {
	call CODI_LO_fnc_flanker_usmc_desert;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sp_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [2, ["lar15_sp"]];
};
CODI_LO_fnc_pl_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_helmet = ["H_Beret_02"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod_tropen"];
};
CODI_LO_fnc_ps_usmc_desert = {
	call CODI_LO_fnc_pl_usmc_desert;
	CODI_LO_helmet = ["H_Beret_blk"];
};
CODI_LO_fnc_fac_usmc_desert = {
	call CODI_LO_fnc_rflm_usmc_desert;
	CODI_LO_weaponPacks set [2, ["m4_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
};
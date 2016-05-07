if (isNil "CODI_LO_pmc_dul") then
{
   CODI_LO_pmc_dul = ["medic","unarmed","rflm","cfr","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
}
else
{
   {
      if (!(_x in CODI_LO_pmc_dul)) then
      {
         CODI_LO_pmc_dul pushBack _x;
      };
   }
   forEach ["medic","unarmed","rflm","cfr","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
};
CODI_LO_pmc_dul sort true;//alphabetisch sortieren
//die Fraktion dem Ausrüstungskladderadatsch hinzufügen
if (isNil "CODI_LO_colours") then
{
   CODI_LO_colours = ["pmc_dul"];
}
else
{
   {
      if (!(_x in CODI_LO_colours)) then
      {
         CODI_LO_colours pushBack _x;
      };
   }
   forEach ["pmc_dul"];
};
CODI_LO_fnc_unarmed_pmc_dul = {
   CODI_LO_uniform = ["LOP_U_PMC_Fatigue_01","LOP_U_PMC_Fatigue_03","LOP_U_PMC_Fatigue_04"];
   CODI_LO_vest = ["V_PlateCarrier1_blk"];
   CODI_LO_backpack = ["rhs_assault_umbts","rhsusf_assault_eagleaiii_coy"];
   CODI_LO_helmet = ["rhsusf_opscore_rg_cover_pelt","rhsusf_bowman_cap","H_Cap_headphones","H_Cap_grn_BI","H_Cap_tan_specops_US"];
   CODI_LO_nv = ["NVGoggles_INDEP","NVGoggles"];//Soldat wird standardmäßig mit "NVGoggles_INDEP" ausgerüstet, hat im Virtual Arsenal die Option auch "NVGoggles" auszuwählen
};
CODI_LO_fnc_rflm_pmc_dul = {
   call CODI_LO_fnc_unarmed_pmc_dul;//dadurch sieht der rflm_ch_wood aus wie der unarmed_ch_wood
   CODI_LO_vest = ["V_PlateCarrier1_blk"];
   CODI_LO_helmet = ["rhsusf_opscore_rg_cover_pelt","rhsusf_bowman_cap","H_Cap_headphones","H_Cap_grn_BI","H_Cap_tan_specops_US"];
   CODI_LO_weaponPacks = [["glock17","acpc2","fnx45"],["grenades_he","grenades_flash","grenades_smoke"],["auga1","akm","bcmjack","m4","f2000","rk62","tar21","fal","hk33"],[]];//darf nur bereits definierte waffen enthalten, siehe ingamenamen beim ausrüstungsdialog
};
CODI_LO_fnc_cfr_pmc_dul = {
   call CODI_LO_fnc_rflm_pmc_dul;//dadurch sieht der cfr_ch_wood aus wie der rflm_ch_wood und hat dessen Waffenauswahl
};
CODI_LO_fnc_medic_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_ftl_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["fal_gl","g36_gl","akm_gl","tar21_gl","f2000_gl","auga3_gl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m249"]];
};
CODI_LO_fnc_mmg_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["m60"]];
};
CODI_LO_fnc_grn_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_weaponPacks set [2, ["fal_gl","g36_gl","akm_gl","tar21_gl","f2000_gl","auga3_gl"]];
};
CODI_LO_fnc_eng_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
};
CODI_LO_fnc_uav_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_UAV_01_backpack_F"];
	CODI_LO_gps = ["B_UavTerminal"];
};
CODI_LO_fnc_es_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
};
CODI_LO_fnc_dm_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_weaponPacks set [2, ["m14","sig556"]];
};
CODI_LO_fnc_crew_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = [];
	CODI_LO_weaponPacks set [2, ["aks74umtk","hk53","m4"]];
};
CODI_LO_fnc_com_pmc_dul = {
	call CODI_LO_fnc_crew_pmc_dul;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_weaponPacks set [2, ["aks74umtk","hk53","m4","mp5sd6","honeybadger"]];
};
CODI_LO_fnc_mortar_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["RHS_Podnos_Gun_Bag"];
};
CODI_LO_fnc_amortar_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["RHS_Podnos_Bipod_Bag"];
};
CODI_LO_fnc_pilot_pmc_dul = {
	call CODI_LO_fnc_helicrew_pmc_dul;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["rhs_uniform_df15"];
	CODI_LO_helmet = ["MNP_Helmet_STPilot"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_pmc_dul = {
	call CODI_LO_fnc_helicrew_pmc_dul;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["rhs_uniform_m88_patchless"];
	CODI_LO_helmet = ["MNP_Helmet_STPilot"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["rhs_sidor"];
	CODI_LO_vest = ["V_Chestrig_khk"];
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
	["ACE_IR_Strobe_Item", 1] call CODI_LO_fnc_addUniformItem;
	CODI_LO_weaponPacks set [1, []];
	CODI_LO_weaponPacks set [2, []];
	CODI_LO_weaponPacks set [0, ["glock17","acpc2","fnx45"]];
};
CODI_LO_fnc_ac_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["rpg7_ammo","igla_ammo"]];
};
CODI_LO_fnc_lat_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_weaponPacks set [3, ["rpg26"]];
};
CODI_LO_fnc_at_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["rhs_rpg_empty"];
	CODI_LO_weaponPacks set [3, ["rpg7"]];
};
CODI_LO_fnc_aa_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["igla"]];
};
CODI_LO_fnc_flanker_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
};
CODI_LO_fnc_sniper_pmc_dul = {
	call CODI_LO_fnc_flanker_pmc_dul;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_pmc_dul = {
	call CODI_LO_fnc_flanker_pmc_dul;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_pl_pmc_dul = {
	call CODI_LO_fnc_rflm_pmc_dul;
	CODI_LO_helmet = ["H_Cap_blk_ION"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_pmc_dul = {
	call CODI_LO_fnc_pl_pmc_dul;
	CODI_LO_helmet = ["LOP_H_Cowboy_hat"];
};
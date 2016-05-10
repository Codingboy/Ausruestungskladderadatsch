if (isNil "CODI_LO_pla_07d") then
{
   CODI_LO_pla_07d = ["unarmed","rflm","cfr","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
}
else
{
   {
      if (!(_x in CODI_LO_pla_07d)) then
      {
         CODI_LO_pla_07d pushBack _x;
      };
   }
   forEach ["unarmed","rflm","cfr","ftl","lmg","mmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
};
CODI_LO_pla_07d sort true;//alphabetisch sortieren
//die Fraktion dem Ausrüstungskladderadatsch hinzufügen
if (isNil "CODI_LO_colours") then
{
   CODI_LO_colours = ["pla_07d"];
}
else
{
   {
      if (!(_x in CODI_LO_colours)) then
      {
         CODI_LO_colours pushBack _x;
      };
   }
   forEach ["pla_07d"];
};
CODI_LO_fnc_unarmed_pla_07d = {
   CODI_LO_uniform = ["PLA_CombatUniform_HM_SW"];
   CODI_LO_vest = ["PLA_T15Vest_D"];
   CODI_LO_backpack = ["MNP_B_FieldPack_PLA_Basic_D"];
   CODI_LO_helmet = ["VME_PLA_Hat_D"];
   CODI_LO_nv = ["NVGoggles_INDEP","NVGoggles"];//Soldat wird standardmäßig mit "NVGoggles_INDEP" ausgerüstet, hat im Virtual Arsenal die Option auch "NVGoggles" auszuwählen
};
CODI_LO_fnc_rflm_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
   call CODI_LO_fnc_unarmed_pla_07d;//dadurch sieht der rflm_ch_wood aus wie der unarmed_ch_wood
   CODI_LO_vest = ["PLA_T15Vest_RF_D","PLA_B04_RF_D"];
   CODI_LO_helmet = ["VME_PLA_Helmet_D","VME_PLA_Hat_D","VME_PLA_Helmet_D_G","VME_PLA_Helmet_D_R"];
   CODI_LO_weaponPacks = [["qsz92","qsw06"],["grenades_he_bp","grenades_flash_bp","grenades_smoke_bp"],["qbz95_1","qbz03"],[]];//darf nur bereits definierte waffen enthalten, siehe ingamenamen beim ausrüstungsdialog
};
CODI_LO_fnc_cfr_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
   call CODI_LO_fnc_rflm_pla_07d;//dadurch sieht der cfr_ch_wood aus wie der rflm_ch_wood und hat dessen Waffenauswahl
};
CODI_LO_fnc_medic_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_vest = ["rhs_6b23_digi_medic"];
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
};
CODI_LO_fnc_ftl_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
   CODI_LO_vest = ["PLA_T15Vest_RD_D"];
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [2, ["qbz95_1_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
   CODI_LO_vest = ["PLA_B04_MG_D"];
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [2, ["qjb95_1"]];
};
CODI_LO_fnc_mmg_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
   CODI_LO_vest = ["PLA_B04_MG_D"];
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [2, ["qjy88"]];
};
CODI_LO_fnc_grn_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_weaponPacks set [2, ["qbz95_1_gl"]];
};
CODI_LO_fnc_eng_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
};
CODI_LO_fnc_uav_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["O_UAV_01_backpack_F"];
	CODI_LO_gps = ["O_UavTerminal"];
};
CODI_LO_fnc_es_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
};
CODI_LO_fnc_dm_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_weaponPacks set [2, ["qbu88"]];
};
CODI_LO_fnc_crew_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = [];
	CODI_LO_weaponPacks set [2, ["qcw05","qbz95b_1"]];
};
CODI_LO_fnc_com_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_crew_pla_07d;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_weaponPacks set [2, ["qcw05","qbz95b_1"]];
};
CODI_LO_fnc_mortar_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["RHS_Podnos_Gun_Bag"];
};
CODI_LO_fnc_amortar_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["RHS_Podnos_Bipod_Bag"];
};
CODI_LO_fnc_pilot_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_helicrew_pla_07d;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["rhs_uniform_df15"];
	CODI_LO_helmet = ["rhs_zsh7a"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_helicrew_pla_07d;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["rhs_uniform_m88_patchless"];
	CODI_LO_helmet = ["rhs_gssh18"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_pla_07d = {
	call CODI_LO_fnc_rflm_pla_07d;
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
	CODI_LO_weaponPacks set [0, ["qsz92","qsw06"]];
};
CODI_LO_fnc_ac_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [3, ["pf98_ammo"]];
};
CODI_LO_fnc_lat_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_weaponPacks set [3, ["pf89b_at"]];
};
CODI_LO_fnc_at_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [3, ["pf98"]];
};
CODI_LO_fnc_aa_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["MNP_B_Carryall_PLA_Basic_D"];
	CODI_LO_weaponPacks set [3, ["fn6"]];
};
CODI_LO_fnc_flanker_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
};
CODI_LO_fnc_sniper_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_flanker_pla_07d;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["cslr4"]];
};
CODI_LO_fnc_spotter_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_flanker_pla_07d;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_pl_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_pla_07d;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_pla_07d = {
	CODI_LO_backpackItems = CODI_LO_vestItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_pl_pla_07d;
};
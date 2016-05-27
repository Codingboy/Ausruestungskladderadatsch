if (isNil "CODI_LO_rus_spzns") then
{
   CODI_LO_rus_spzns = ["medic","unarmed","rflm","cfr","ftl","lmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
}
else
{
   {
      if (!(_x in CODI_LO_rus_spzns)) then
      {
         CODI_LO_rus_spzns pushBack _x;
      };
   }
   forEach ["medic","unarmed","rflm","cfr","ftl","lmg","grn","eng","uav","es","dm","crew","com","sl","cq","mortar","amortar","pilot","helipilot","helicrew","ac","lat","at","aa","flanker","sniper","spotter","pl","ps"];
};
CODI_LO_rus_spzns sort true;//alphabetisch sortieren
//die Fraktion dem Ausrüstungskladderadatsch hinzufügen
if (isNil "CODI_LO_colours") then
{
   CODI_LO_colours = ["rus_spzns"];
}
else
{
   {
      if (!(_x in CODI_LO_colours)) then
      {
         CODI_LO_colours pushBack _x;
      };
   }
   forEach ["rus_spzns"];
};
CODI_LO_fnc_unarmed_rus_spzns = {
   CODI_LO_uniform = ["rhs_uniform_gorka_r_y"];
   CODI_LO_vest = ["rhs_6b23_digi"];
   CODI_LO_backpack = ["rhs_assault_umbts"];
   CODI_LO_helmet = [""];
   CODI_LO_goggles = ["rhs_balaclava1_olive"];
   CODI_LO_nv = ["rhs_1PN138","NVGoggles_INDEP","NVGoggles"];//Soldat wird standardmäßig mit "NVGoggles_INDEP" ausgerüstet, hat im Virtual Arsenal die Option auch "NVGoggles" auszuwählen
};
CODI_LO_fnc_rflm_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
   call CODI_LO_fnc_unarmed_rus_spzns;//dadurch sieht der rflm_ch_wood aus wie der unarmed_ch_wood
   CODI_LO_vest = ["rhs_6b23_digi_rifleman"];
   CODI_LO_helmet = ["rhs_6b47_bala","rhs_6b47_ess_bala"];
   CODI_LO_weaponPacks = [["mp443","pp2000_folded","pmm"],["grenades_he_bp","grenades_flash_bp","grenades_smoke_bp"],["aek971mtk","ak12","akm","ak74mmtk","ak74m","asval_grip_npz"],[]];//darf nur bereits definierte waffen enthalten, siehe ingamenamen beim ausrüstungsdialog
};
CODI_LO_fnc_cfr_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
   call CODI_LO_fnc_rflm_rus_spzns;//dadurch sieht der cfr_ch_wood aus wie der rflm_ch_wood und hat dessen Waffenauswahl
};
CODI_LO_fnc_medic_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_vest = ["rhs_6b23_digi_medic"];
	CODI_LO_backpack = ["B_Carryall_oli"];
};
CODI_LO_fnc_ftl_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
   CODI_LO_vest = ["rhs_6b23_digi_6sh92_headset"];
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [2, ["akm_gl_ftl","ak74m_gl_ftl","ak12_gl_ftl"]];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [2, ["rpk12","rpk74","pkp"]];
};
CODI_LO_fnc_grn_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
   CODI_LO_vest = ["rhs_6b23_digi_6sh92_vog"];
	CODI_LO_weaponPacks set [2, ["akm_gl","ak74m_gl","ak12_gl"]];
};
CODI_LO_fnc_eng_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
   CODI_LO_vest = ["rhs_6b23_digi_engineer"];
};
CODI_LO_fnc_uav_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["O_UAV_01_backpack_F"];
	CODI_LO_gps = ["O_UavTerminal"];
};
CODI_LO_fnc_es_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["B_Carryall_oli"];
};
CODI_LO_fnc_dm_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
   CODI_LO_vest = ["rhs_6b23_digi_sniper"];
	CODI_LO_weaponPacks set [2, ["SVDSNPZ","SVDMNPZ","SVDMCamoNPZ","SVDM","SVDMCamo","SVDS","vss"]];
};
CODI_LO_fnc_crew_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = [];
	CODI_LO_helmet = ["rhs_tsh4","rhs_tsh4_ess","rhs_tsh4_ess_bala"];
	CODI_LO_weaponPacks set [2, ["aks74u","aks74umtk","ak12u","pp2000"]];
};
CODI_LO_fnc_com_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_crew_rus_spzns;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_vest = ["rhs_vydra_3m","rhs_6b23_digi_rifleman"];
	CODI_LO_weaponPacks set [2, ["aks74u","aks74umtk","ak12u","pp2000"]];
};
CODI_LO_fnc_mortar_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["RHS_Podnos_Gun_Bag"];
};
CODI_LO_fnc_amortar_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["RHS_Podnos_Bipod_Bag"];
};
CODI_LO_fnc_pilot_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_helicrew_rus_spzns;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["rhs_uniform_df15"];
	CODI_LO_helmet = ["rhs_zsh7a"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_helicrew_rus_spzns;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["rhs_uniform_m88_patchless"];
	CODI_LO_helmet = ["rhs_gssh18"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_rus_spzns = {
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["rhs_sidor"];
	CODI_LO_vest = ["rhs_vydra_3m"];
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
	CODI_LO_weaponPacks set [0, ["pmm","mp443","pp2000_folded"]];
};
CODI_LO_fnc_ac_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [3, ["rpg7_ammo","igla_ammo"]];
};
CODI_LO_fnc_lat_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_weaponPacks set [3, ["rpg26"]];
};
CODI_LO_fnc_at_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["rhs_rpg_empty"];
	CODI_LO_weaponPacks set [3, ["rpg7"]];
};
CODI_LO_fnc_aa_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [3, ["igla"]];
};
CODI_LO_fnc_flanker_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["rhs_uniform_gorka_r_y","rhs_uniform_gorka_r_g"];
};
CODI_LO_fnc_sniper_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_flanker_rus_spzns;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_flanker_rus_spzns;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_pl_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_rflm_rus_spzns;
	CODI_LO_vest = ["rhs_6b23_digi_crew"];
	CODI_LO_helmet = ["rhs_fieldcap_helm_digi"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_rus_spzns = {
	CODI_LO_backpackItems = CODI_LO_vestItems + CODI_LO_backpackItems;
	CODI_LO_vestItems = [];
	call CODI_LO_fnc_pl_rus_spzns;
	CODI_LO_vest = ["rhs_6b23_digi_crewofficer"];
	CODI_LO_helmet = ["LOP_H_Cowboy_hat"];
};
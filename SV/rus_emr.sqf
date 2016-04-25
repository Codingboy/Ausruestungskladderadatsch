if (isNil "CODI_LO_rus_emr") then
{
   CODI_LO_rus_emr = ["unarmed","rflm","cfr"];
}
else
{
   {
      if (!(_x in CODI_LO_rus_emr)) then
      {
         CODI_LO_rus_emr pushBack _x;
      };
   }
   forEach ["unarmed","rflm","cfr"];
};
CODI_LO_rus_emr sort true;//alphabetisch sortieren
//die Fraktion dem Ausrüstungskladderadatsch hinzufügen
if (isNil "CODI_LO_colours") then
{
   CODI_LO_colours = ["rus_emr"];
}
else
{
   {
      if (!(_x in CODI_LO_colours)) then
      {
         CODI_LO_colours pushBack _x;
      };
   }
   forEach ["ch_wood"];
};
CODI_LO_fnc_unarmed_rus_emr = {
   CODI_LO_uniform = ["rhs_uniform_emr_patchless"];
   CODI_LO_vest = ["rhs_6b23_digi"];
   CODI_LO_backpack = ["rhs_assault_umbts"];
   CODI_LO_helmet = ["rhs_fieldcap_helm_digi"];
   CODI_LO_nv = ["NVGoggles_INDEP","NVGoggles"];//Soldat wird standardmäßig mit "NVGoggles_INDEP" ausgerüstet, hat im Virtual Arsenal die Option auch "NVGoggles" auszuwählen
};
CODI_LO_fnc_rflm_rus_emr = {
   call CODI_LO_fnc_unarmed_rus_emr;//dadurch sieht der rflm_ch_wood aus wie der unarmed_ch_wood
   CODI_LO_weaponPacks = [["mp443","pmm"],["grenades_he","grenades_flash","grenades_smoke"],["ak12","akm","ak74mmtk","ak74m"],[]];//darf nur bereits definierte waffen enthalten, siehe ingamenamen beim ausrüstungsdialog
};
CODI_LO_fnc_cfr_rus_emr = {
   call CODI_LO_fnc_rflm_rus_emr;//dadurch sieht der cfr_ch_wood aus wie der rflm_ch_wood und hat dessen Waffenauswahl
};
CODI_LO_fnc_medic_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_oli"];
};
CODI_LO_fnc_ftl_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [2, ["akm_gl_ftl","ak74m_gl_ftl","ak12_gl_ftl"]];
	["ACE_key_east"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_lmg_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [2, ["rpk12","rpk74"]];
};
CODI_LO_fnc_mmg_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_oli"];
	CODI_LO_weaponPacks set [2, ["pkp"]];
};
CODI_LO_fnc_hmg_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [2, ["hk121","lwmmg"]];
};
CODI_LO_fnc_grn_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [2, ["akm_gl","ak74m_gl","ak12_gl"]];
};
CODI_LO_fnc_eng_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
};
CODI_LO_fnc_uav_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["O_UAV_01_backpack_F"];
	CODI_LO_gps = ["O_UavTerminal"];
};
CODI_LO_fnc_es_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_oli"];
};
CODI_LO_fnc_dm_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [2, ["SVDSNPZ","SVDMNPZ","SVDMCamoNPZ","SVDM","SVDMCamo","SVDS"]];
};
CODI_LO_fnc_crew_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = [];
	CODI_LO_helmet = ["H_HelmetCrew_B"];
	CODI_LO_weaponPacks set [2, ["mp5"]];
};
CODI_LO_fnc_com_rus_emr = {
	call CODI_LO_fnc_crew_rus_emr;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sl_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_cq_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [2, ["hk53"]];
};
CODI_LO_fnc_mortar_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Mortar_01_weapon_F"];
};
CODI_LO_fnc_amortar_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Mortar_01_support_F"];
};
CODI_LO_fnc_pilot_rus_emr = {
	call CODI_LO_fnc_helicrew_rus_emr;
	CODI_LO_backpack = ["B_Parachute"];
	CODI_LO_uniform = ["U_B_PilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetFighter_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helipilot_rus_emr = {
	call CODI_LO_fnc_helicrew_rus_emr;
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	CODI_LO_uniform = ["U_B_HeliPilotCoveralls"];
	CODI_LO_helmet = ["H_PilotHelmetHeli_B"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_helicrew_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
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
	CODI_LO_weaponPacks set [0, ["fnx45_pilot","p99_pilot"]];
};
CODI_LO_fnc_ac_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["hk121_ammo","lwmmg_ammo","titan_at_ammo","titan_aa_ammo"]];
};
CODI_LO_fnc_lat_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [3, ["nlaw"]];
};
CODI_LO_fnc_at_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_at"]];
};
CODI_LO_fnc_aa_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_backpack = ["B_Carryall_cbr"];
	CODI_LO_weaponPacks set [3, ["titan_aa"]];
};
CODI_LO_fnc_flanker_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
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
CODI_LO_fnc_sniper_rus_emr = {
	call CODI_LO_fnc_flanker_rus_emr;
	/*if (332350 in (getDLCs 1)) then
	{
		CODI_LO_backpack = ["B_Static_Designator_01_weapon_F"];
		CODI_LO_gps = ["B_UavTerminal"];
	};*/
	CODI_LO_weaponPacks set [2, ["awc","awm","gm6","m200"]];
};
CODI_LO_fnc_spotter_rus_emr = {
	call CODI_LO_fnc_flanker_rus_emr;
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_sp_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [2, ["lar15_sp"]];
};
CODI_LO_fnc_pl_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_helmet = ["H_Beret_02"];
	CODI_LO_backpack = ["tf_rt1523g_big_bwmod"];
	["ACE_key_west"] call CODI_LO_fnc_addUniformItem;
};
CODI_LO_fnc_ps_rus_emr = {
	call CODI_LO_fnc_pl_rus_emr;
	CODI_LO_helmet = ["H_Beret_blk"];
};
CODI_LO_fnc_fac_rus_emr = {
	call CODI_LO_fnc_rflm_rus_emr;
	CODI_LO_weaponPacks set [2, ["m4_gl_fac"]];
	CODI_LO_binocular = ["Laserdesignator"];
	CODI_LO_binocularAmmo = ["Laserbatteries"];
};
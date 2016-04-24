CODI_LO_fnc_fnx45 = {
	["11Rnd_45ACP_Mag", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_secondaryWeaponMagazines = ["11Rnd_45ACP_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_acp"];
	CODI_LO_secondaryWeaponOptic = ["optic_MRD"];
	CODI_LO_secondaryWeapon = ["hgun_Pistol_heavy_01_F"];
};
CODI_LO_fnc_p99 = {
	["16Rnd_9x21_Mag", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_secondaryWeaponMagazines = ["16Rnd_9x21_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_L"];
	CODI_LO_secondaryWeapon = ["hgun_P07_F"];
};
CODI_LO_fnc_fnx45_pilot = {
	["11Rnd_45ACP_Mag", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["11Rnd_45ACP_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_acp"];
	CODI_LO_secondaryWeaponOptic = ["optic_MRD"];
	CODI_LO_secondaryWeapon = ["hgun_Pistol_heavy_01_F"];
};
CODI_LO_fnc_p99_pilot = {
	["16Rnd_9x21_Mag", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["16Rnd_9x21_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_L"];
	CODI_LO_secondaryWeapon = ["hgun_P07_F"];
};
CODI_LO_fnc_mp443 = {
	["16Rnd_9x21_Mag", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["16Rnd_9x21_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_L"];
	CODI_LO_secondaryWeapon = ["hgun_Rook40_F"];
};
CODI_LO_fnc_pmm = {
	["rhs_mag_9x18_12_57N181S", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["rhs_mag_9x18_12_57N181S"];
	CODI_LO_secondaryWeapon = ["rhs_weap_makarov_pmm"];
};
CODI_LO_fnc_grenades_he = {
	["HandGrenade", 3] call CODI_LO_fnc_addVestMagazine;
	["SmokeShell", 1] call CODI_LO_fnc_addVestMagazine;
	["ACE_M84", 2] call CODI_LO_fnc_addVestMagazine;
};
CODI_LO_fnc_grenades_flash = {
	["HandGrenade", 2] call CODI_LO_fnc_addVestMagazine;
	["SmokeShell", 2] call CODI_LO_fnc_addVestMagazine;
	["ACE_M84", 4] call CODI_LO_fnc_addVestMagazine;
};
CODI_LO_fnc_grenades_smoke = {
	["HandGrenade", 2] call CODI_LO_fnc_addVestMagazine;
	["SmokeShell", 4] call CODI_LO_fnc_addVestMagazine;
	["ACE_M84", 2] call CODI_LO_fnc_addVestMagazine;
};
CODI_LO_fnc_m4 = {
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_M4"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lar15 = {
	["30Rnd_556x45_Stanag_Tracer_Red", 4] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SPR", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_samr2"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lar15_sp = {
	call CODI_LO_fnc_lar15;
	[CODI_LO_primaryWeaponOptic, "ACE_optic_Hamr_2D"] call BIS_fnc_ArrayUnshift;
	[CODI_LO_primaryWeaponOptic, "optic_Hamr"] call BIS_fnc_ArrayUnshift;
	[CODI_LO_primaryWeaponOptic, "ACE_optic_Hamr_PIP"] call BIS_fnc_ArrayUnshift;
};
CODI_LO_fnc_bushmaster_300 = {
	["29rnd_300BLK_STANAG_T", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG_S", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_Bushmaster300"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_m4_gl = {
	call CODI_LO_fnc_m4;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_m4m203"];
};
CODI_LO_fnc_m4_gl_fac = {
	call CODI_LO_fnc_m4_gl;
	CODI_LO_backpackMagazines = [];
	["UGL_FlareRed_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["1Rnd_SmokeBlue_Grenade_shell", 10] call CODI_LO_fnc_addBackpackMagazine;
	["UGL_FlareCIR_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HandFlare_Green", 5] call CODI_LO_fnc_addBackpackMagazine;
	["B_IR_Grenade", 2] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_m4_gl_ftl = {
	call CODI_LO_fnc_m4_gl;
	["ACE_HuntIR_monitor", 1] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HuntIR_M203", 5] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_m14 = {
	["rhsusf_20Rnd_762x51_m118_special_Mag", 6] call CODI_LO_fnc_addVestMagazine;
	["rhsusf_20Rnd_762x51_m118_special_Mag", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_m14sopmod"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_M14"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_ulr = {
	["ACE_10Rnd_338_300gr_HPBT_Mag", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["srifle_DMR_02_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_338_black"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_sig556 = {
	["ACE_20Rnd_762x51_Mk316_Mod_0_Mag", 4] call CODI_LO_fnc_addVestMagazine;
	["ACE_20Rnd_762x51_Mag_Tracer", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["srifle_DMR_03_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_vs121 = {
	["10Rnd_762x54_Mag", 5] call CODI_LO_fnc_addVestMagazine;
	["ACE_10Rnd_762x54_Tracer_mag", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["srifle_DMR_01_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_hk121 = {
	["150Rnd_93x64_Mag", 3] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["MMG_01_tan_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_93mmg"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_hk121_ammo = {
	["150Rnd_93x64_Mag", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_lwmmg = {
	["130Rnd_338_Mag", 4] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["MMG_02_black_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_338_black"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lwmmg_ammo = {
	["130Rnd_338_Mag", 4] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_m249 = {
	["hlc_200rnd_556x45_T_SAW", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_m249_pip2"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_m60 = {
	["hlc_100Rnd_762x51_T_M60E4", 10] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_lmg_M60E4"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mxsw = {
	["100Rnd_65x39_caseless_mag_Tracer", 7] call CODI_LO_fnc_addBackpackMagazine;
	["100Rnd_65x39_caseless_mag_Tracer", 3] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_MX_SW_Black_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ng7 = {
	["150Rnd_762x54_Box_Tracer", 5] call CODI_LO_fnc_addBackpackMagazine;
	["150Rnd_762x54_Box_Tracer", 1] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["LMG_Zafir_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_stoner99 = {
	["200Rnd_65x39_cased_Box_Tracer", 4] call CODI_LO_fnc_addBackpackMagazine;
	["200Rnd_65x39_cased_Box_Tracer", 1] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["LMG_Mk200_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_awc = {
	["hlc_5rnd_300WM_SBT_AWM", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_5rnd_300WM_SBT_AWM", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_awcovert_BL"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_awm = {
	["hlc_5rnd_300WM_mk248_AWM", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_5rnd_300WM_mk248_AWM", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_awmagnum_BL"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_gm6 = {
	["5Rnd_127x108_APDS_Mag", 2] call CODI_LO_fnc_addVestMagazine;
	["5Rnd_127x108_Mag", 2] call CODI_LO_fnc_addVestMagazine;
	["5Rnd_127x108_Mag", 3] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["srifle_GM6_F"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_m200 = {
	["7Rnd_408_Mag", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["srifle_LRR_F"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_mp5 = {
	["hlc_30Rnd_10mm_JHP_MP5", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_smg_mp510"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_Agendasix10mm"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_nlaw = {
	CODI_LO_launcher = ["launch_NLAW_F"];
};
CODI_LO_fnc_titan_at = {
	["Titan_AT", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcher = ["launch_B_Titan_short_F"];
};
CODI_LO_fnc_titan_at_ammo = {
	["Titan_AT", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_titan_aa = {
	["Titan_AA", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcher = ["launch_B_Titan_F"];
};
CODI_LO_fnc_titan_aa_ammo = {
	["Titan_AA", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_hk53 = {
	["hlc_30rnd_556x45_SOST_HK33", 8] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST_HK33", 7] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_hk53RAS"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_psg1 = {
	["hlc_20rnd_762x51_Mk316_G3", 2] call CODI_LO_fnc_addBackpackMagazine;
	["hlc_20rnd_762x51_Mk316_G3", 4] call CODI_LO_fnc_addVestMagazine;
	["hlc_20rnd_762x51_T_G3", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_PSG1A1_RIS"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
};
CODI_LO_fnc_g36 = {
	["hlc_30rnd_556x45_SOST_G36", 10] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36V"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["RH_qdss_nt4"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_g3 = {
	["hlc_20rnd_762x51_T_G3", 4] call CODI_LO_fnc_addVestMagazine;
	["hlc_20rnd_762x51_Mk316_G3", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_g3ka4"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ak12 = {
	["hlc_30Rnd_545x39_t_ak", 3] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 3] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak12"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_aug = {
	["hlc_30Rnd_556x45_T_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_556x45_SOST_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_auga3_b"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_AUG"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_fal = {
	["hlc_20Rnd_762x51_mk316_fal", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_20Rnd_762x51_T_fal", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_falosw"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_fal"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_tar21 = {
	["ACE_30Rnd_556x45_Stanag_Mk318_mag", 5] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_TRG21_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mx = {
	["30Rnd_65x39_caseless_mag", 4] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_65x39_caseless_mag_Tracer", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_MX_Black_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_f2000 = {
	["ACE_30Rnd_556x45_Stanag_Mk318_mag", 5] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_556x45_Stanag_Tracer_Yellow", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_Mk20_plain_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_kh2002 = {
	["30Rnd_65x39_caseless_green", 4] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_65x39_caseless_green_mag_Tracer", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_Katiba_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponOptic = ["optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_compM2l","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_akm = {
	["hlc_30Rnd_762x39_b_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_762x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_akm"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_762SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_fal_gl = {
	call CODI_LO_fnc_fal;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_osw_GL"];
};
CODI_LO_fnc_g36_gl = {
	call CODI_LO_fnc_g36;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36VAG36"];
};
CODI_LO_fnc_g3_gl = {
	call CODI_LO_fnc_g3;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["HLC_Rifle_g3ka4_GL"];
};
CODI_LO_fnc_ak12_gl = {
	call CODI_LO_fnc_ak12;
	["hlc_VOG25_AK", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak12GL"];
};
CODI_LO_fnc_aug_gl = {
	call CODI_LO_fnc_aug;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_auga3_GL_B"];
};
CODI_LO_fnc_tar21_gl = {
	call CODI_LO_fnc_tar21;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["arifle_TRG21_GL_F"];
};
CODI_LO_fnc_mx_gl = {
	call CODI_LO_fnc_mx;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["arifle_MX_GL_Black_F"];
};
CODI_LO_fnc_f2000_gl = {
	call CODI_LO_fnc_f2000;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["arifle_Mk20_GL_plain_F"];
};
CODI_LO_fnc_kh2002_gl = {
	call CODI_LO_fnc_kh2002;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["arifle_Katiba_GL_F"];
};
CODI_LO_fnc_akmgl = {
	call CODI_LO_fnc_akm;
	["hlc_VOG25_AK", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_akmgl"];
	
};
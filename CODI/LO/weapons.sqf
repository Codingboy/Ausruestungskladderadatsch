//pistolen
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
CODI_LO_fnc_m9 = {
	["rhsusf_mag_15Rnd_9x19_FMJ", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_secondaryWeaponMagazines = ["rhsusf_mag_15Rnd_9x19_FMJ"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_L"];//works?
	CODI_LO_secondaryWeapon = ["rhsusf_weap_m9"];
};
CODI_LO_fnc_m9_pilot = {
	["rhsusf_mag_15Rnd_9x19_FMJ", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["rhsusf_mag_15Rnd_9x19_FMJ"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_L"];//works?
	CODI_LO_secondaryWeapon = ["rhsusf_weap_m9"];
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
CODI_LO_fnc_acpc2 = {
	["9Rnd_45ACP_Mag", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["9Rnd_45ACP_Mag"];
	CODI_LO_secondaryWeaponSilencer = ["muzzle_snds_acp"];
	CODI_LO_secondaryWeapon = ["hgun_ACPC2_F"];
};
CODI_LO_fnc_glock17 = {
	["rhsusf_mag_17Rnd_9x19_JHP", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["rhsusf_mag_17Rnd_9x19_JHP"];
	CODI_LO_secondaryWeapon = ["rhsusf_weap_glock17g4"];
};
CODI_LO_fnc_qsz92 = {
	["VME_QSZ92_20Rnd_DAP92", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["VME_QSZ92_20Rnd_DAP92"];
	CODI_LO_secondaryWeapon = ["vme_pla_qsz92"];
};
CODI_LO_fnc_qsw06 = {
	["VME_QSZ92_20Rnd_DAP92", 3] call CODI_LO_fnc_addUniformMagazine;
	["VME_QSW06_20Rnd_DCV05", 2] call CODI_LO_fnc_addUniformMagazine;
	CODI_LO_secondaryWeaponMagazines = ["VME_QSZ92_20Rnd_DAP92"];
	CODI_LO_secondaryWeaponSilencer = ["VME_QSW06_Silencer"];
	CODI_LO_secondaryWeapon = ["vme_pla_qsw06"];
};






//granaten
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
CODI_LO_fnc_grenades_he_bp = {
	["HandGrenade", 3] call CODI_LO_fnc_addBackpackMagazine;
	["SmokeShell", 1] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_M84", 2] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_grenades_flash_bp = {
	["HandGrenade", 2] call CODI_LO_fnc_addBackpackMagazine;
	["SmokeShell", 2] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_M84", 4] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_grenades_smoke_bp = {
	["HandGrenade", 2] call CODI_LO_fnc_addBackpackMagazine;
	["SmokeShell", 4] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_M84", 2] call CODI_LO_fnc_addBackpackMagazine;
};


//smg
CODI_LO_fnc_qcw05 = {
	["VME_QCW05_50Rnd_DAP92", 5] call CODI_LO_fnc_addVestMagazine;
	["VME_QCW05_50Rnd_DCV05", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qcw05"];
	CODI_LO_primaryWeaponBipod = ["VME_qcw05_rail_scopes"];
	CODI_LO_primaryWeaponSilencer = ["VME_QCW05_Silencer"];
	CODI_LO_primaryWeaponOptic = ["BWA3_optic_EOTech","RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};


//gewehre
CODI_LO_fnc_m4 = {
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_M4"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_bcmjack = {
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_bcmjack"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lar15 = {
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_samr2"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lar15_sp = {
	["30Rnd_556x45_Stanag_Tracer_Red", 4] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SPR", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_samr2"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_556NATO_KAC"];
	CODI_LO_primaryWeaponOptic = ["ACE_optic_Hamr_PIP","optic_Hamr","ACE_optic_Hamr_2D"];
};
CODI_LO_fnc_bushmaster_300 = {
	["29rnd_300BLK_STANAG_T", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG_S", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_Bushmaster300"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_honeybadger = {
	["29rnd_300BLK_STANAG_T", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG", 4] call CODI_LO_fnc_addVestMagazine;
	["29rnd_300BLK_STANAG_S", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_honeybadger"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_HBADGER"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_qbz95_1 = {
	["VME_QBZ95_1_30Rnd_DBP10", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbz95_1"];
	CODI_LO_primaryWeaponLaser = ["VME_QBZ95_laser_flashlight"];
	CODI_LO_primaryWeaponSilencer = ["VME_QBZ95_1_Silencer"];
	CODI_LO_primaryWeaponBipod = ["VME_rail_scopes"];
	CODI_LO_primaryWeaponOptic = ["VME_95_1_PST","VME_95_1_PNV","RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_qbz95_1_gl = {
	call CODI_LO_fnc_qbz95_1;
	["VME_1Rnd_HE_GL", 25] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbz95_1GL"];
};
CODI_LO_fnc_qbz95_1_gl_ftl = {
	call CODI_LO_fnc_qbz95_1;
	["VME_1Rnd_HE_GL", 15] call CODI_LO_fnc_addBackpackMagazine;
	["VME_1Rnd_Smoke_GL", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbz95_1GL"];
};
CODI_LO_fnc_qbz03 = {
	["VME_QBZ95_1_30Rnd_DBP10", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbz03"];
	CODI_LO_primaryWeaponSilencer = ["VME_QBZ95_1_Silencer"];
	CODI_LO_primaryWeaponBipod = ["VME_QBZ03_rail"];
	CODI_LO_primaryWeaponOptic = ["VME_95_1_PST","VME_95_1_PNV","RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_qbz95b_1 = {
	["VME_QBZ95_1_30Rnd_DBP10", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbz95B_1"];
	CODI_LO_primaryWeaponLaser = ["VME_QBZ95_laser_flashlight"];
	CODI_LO_primaryWeaponSilencer = ["VME_QBZ95_1_Silencer"];
	CODI_LO_primaryWeaponBipod = ["VME_rail_scopes"];
	CODI_LO_primaryWeaponOptic = ["VME_95_1_PST","VME_95_1_PNV","RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
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
CODI_LO_fnc_g36 = {
	["hlc_30rnd_556x45_SOST_G36", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_Tracers_G36", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36V"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["RH_qdss_nt4"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_g36_sp = {
	["hlc_30rnd_556x45_SPR_G36", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_Tracers_G36", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36V"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["RH_qdss_nt4"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["ACE_optic_Hamr_PIP","optic_Hamr","ACE_optic_Hamr_2D"];
};
CODI_LO_fnc_g36mli = {
	["30Rnd_65x39_caseless_mag_Tracer", 4] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_65x39_caseless_mag", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36MLIC"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_g36mli_sp = {
	call CODI_LO_fnc_g36mli;
	CODI_LO_primaryWeaponOptic = ["ACE_optic_Hamr_PIP","optic_Hamr","ACE_optic_Hamr_2D"];
};
CODI_LO_fnc_g3 = {
	["hlc_20rnd_762x51_T_G3", 4] call CODI_LO_fnc_addBackpackMagazine;
	["hlc_20rnd_762x51_Mk316_G3", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_g3ka4"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_B"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_g3_sp = {
	call CODI_LO_fnc_g3;
	CODI_LO_primaryWeaponOptic = ["ACE_optic_Hamr_PIP","optic_Hamr","ACE_optic_Hamr_2D"];
};
CODI_LO_fnc_ak12 = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak12"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ak74mmtk = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak74m_MTK"];
	CODI_LO_primaryWeaponLaser = [];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ak74m = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak74m"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_akm = {
	["hlc_30Rnd_762x39_b_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_762x39_t_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_akm"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_762SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_rk62 = {
	["hlc_30Rnd_762x39_b_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_762x39_t_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_RK62"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_762SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_auga3 = {
	["hlc_30Rnd_556x45_T_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_556x45_SOST_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_auga3_b"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_AUG"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_auga1 = {
	["hlc_30Rnd_556x45_T_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_556x45_SOST_AUG", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_aug"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_AUG"];
};
CODI_LO_fnc_fal = {
	["hlc_20Rnd_762x51_mk316_fal", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_20Rnd_762x51_T_fal", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_falosw"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_snds_fal"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_tar21 = {
	["ACE_30Rnd_556x45_Stanag_Mk318_mag", 5] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_556x45_Stanag_Tracer_Red", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_TRG21_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mx = {
	["30Rnd_65x39_caseless_mag", 4] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_65x39_caseless_mag_Tracer", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_MX_Black_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_f2000 = {
	["ACE_30Rnd_556x45_Stanag_Mk318_mag", 5] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_556x45_Stanag_Tracer_Yellow", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_Mk20_plain_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_kh2002 = {
	["30Rnd_65x39_caseless_green", 4] call CODI_LO_fnc_addVestMagazine;
	["30Rnd_65x39_caseless_green_mag_Tracer", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_Katiba_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
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
CODI_LO_fnc_g36_gl_fac = {
	call CODI_LO_fnc_g36_gl;
	CODI_LO_backpackMagazines = [];
	["UGL_FlareRed_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["1Rnd_SmokeBlue_Grenade_shell", 10] call CODI_LO_fnc_addBackpackMagazine;
	["UGL_FlareCIR_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HandFlare_Green", 5] call CODI_LO_fnc_addBackpackMagazine;
	["B_IR_Grenade", 2] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_g36_gl_ftl = {
	call CODI_LO_fnc_g36_gl;
	["ACE_HuntIR_monitor", 1] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HuntIR_M203", 5] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_g36mli_gl = {
	call CODI_LO_fnc_g36mli;
	CODI_LO_primaryWeapon = ["hlc_rifle_G36MLIAG36"];
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeaponBipod = [];
};
CODI_LO_fnc_g36mli_gl_fac = {
	call CODI_LO_fnc_g36mli_gl;
	CODI_LO_backpackMagazines = [];
	["UGL_FlareRed_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["1Rnd_SmokeBlue_Grenade_shell", 10] call CODI_LO_fnc_addBackpackMagazine;
	["UGL_FlareCIR_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HandFlare_Green", 5] call CODI_LO_fnc_addBackpackMagazine;
	["B_IR_Grenade", 2] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_g36mli_gl_ftl = {
	call CODI_LO_fnc_g36mli_gl;
	["ACE_HuntIR_monitor", 1] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HuntIR_M203", 5] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_g3_gl = {
	call CODI_LO_fnc_g3;
	["1Rnd_HE_Grenade_shell", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["HLC_Rifle_g3ka4_GL"];
};
CODI_LO_fnc_g3_gl_fac = {
	call CODI_LO_fnc_g3_gl;
	CODI_LO_backpackMagazines = [];
	["UGL_FlareRed_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["1Rnd_SmokeBlue_Grenade_shell", 10] call CODI_LO_fnc_addBackpackMagazine;
	["UGL_FlareCIR_F", 10] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HandFlare_Green", 5] call CODI_LO_fnc_addBackpackMagazine;
	["B_IR_Grenade", 2] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_g3_gl_ftl = {
	call CODI_LO_fnc_g3_gl;
	["ACE_HuntIR_monitor", 1] call CODI_LO_fnc_addBackpackMagazine;
	["ACE_HuntIR_M203", 5] call CODI_LO_fnc_addBackpackMagazine;
};




//dmr
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
CODI_LO_fnc_stgw57ris = {
	["hlc_24Rnd_75x55_B_stgw", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_24Rnd_75x55_ap_stgw", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_stgw57_RIS"];
	CODI_LO_primaryWeaponSilencer = ["RH_fa762"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_qbu88 = {
	["VME_QBU88_10Rnd_DVP88_Sniper", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qbu88"];
	CODI_LO_primaryWeaponOptic = ["VME_QBU88_Scope","optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
	CODI_LO_primaryWeaponBipod = ["VME_qbu88_bipod_rail"];
	CODI_LO_primaryWeaponSilencer = ["VME_QBZ95_1_Silencer"];
};







//other stuff
CODI_LO_fnc_hk121_ammo = {
	["150Rnd_93x64_Mag", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_lwmmg_ammo = {
	["130Rnd_338_Mag", 4] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_titan_at_ammo = {
	["Titan_AT", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_titan_aa_ammo = {
	["Titan_AA", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_pf98_ammo = {
	["vme_pla_PF98_AT_Rocket", 2] call CODI_LO_fnc_addBackpackMagazine;
	["vme_pla_PF98_MP_Rocket", 1] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_fn6_ammo = {
	["vme_pla_FN6_Rocket", 2] call CODI_LO_fnc_addBackpackMagazine;
};





//mg
CODI_LO_fnc_hk121 = {
	["150Rnd_93x64_Mag", 3] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["MMG_01_tan_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_93mmg"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_lwmmg = {
	["130Rnd_338_Mag", 4] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["MMG_02_black_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_338_black"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_m249 = {
	["hlc_200rnd_556x45_T_SAW", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_m249_pip2"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_m60 = {
	["hlc_100Rnd_762x51_T_M60E4", 10] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_lmg_M60E4"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mxsw = {
	["100Rnd_65x39_caseless_mag_Tracer", 7] call CODI_LO_fnc_addBackpackMagazine;
	["100Rnd_65x39_caseless_mag_Tracer", 3] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["arifle_MX_SW_Black_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ng7 = {
	["150Rnd_762x54_Box_Tracer", 5] call CODI_LO_fnc_addBackpackMagazine;
	["150Rnd_762x54_Box_Tracer", 1] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["LMG_Zafir_F"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_stoner99 = {
	["200Rnd_65x39_cased_Box_Tracer", 4] call CODI_LO_fnc_addBackpackMagazine;
	["200Rnd_65x39_cased_Box_Tracer", 1] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["LMG_Mk200_F"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_H"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mg4 = {
	["BWA3_200Rnd_556x45_Tracer", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["BWA3_MG4"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mg5 = {
	["BWA3_120Rnd_762x51_Tracer", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["BWA3_MG5"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["BWA3_muzzle_snds_G28"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_qjb95_1 = {
	["VME_QJB95_1_75Rnd_DBP10", 7] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_qjb95_1"];
	CODI_LO_primaryWeaponLaser = ["VME_QBZ95_laser_flashlight"];
	CODI_LO_primaryWeaponSilencer = ["VME_QBZ95_1_Silencer"];
	CODI_LO_primaryWeaponBipod = ["VME_QJB95_1_bipod_rail"];
	CODI_LO_primaryWeaponOptic = ["VME_95_1_PST","VME_95_1_PNV","RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_qjy88 = {
	["VME_QJY88_200Rnd_DVP88_Heavy", 3] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["VME_PLA_QJY88"];
	CODI_LO_primaryWeaponBipod = ["VME_QJY88_bipod"];
	CODI_LO_primaryWeaponOptic = ["VME_QJY88_Scope"];
};




//sniper
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
CODI_LO_fnc_psg1 = {
	["hlc_20rnd_762x51_Mk316_G3", 2] call CODI_LO_fnc_addBackpackMagazine;
	["hlc_20rnd_762x51_Mk316_G3", 4] call CODI_LO_fnc_addVestMagazine;
	["hlc_20rnd_762x51_T_G3", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_PSG1A1_RIS"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
	CODI_LO_primaryWeaponBipod = ["bipod_01_F_blk"];
};
CODI_LO_fnc_cslr4 = {
	["VME_LR4_5Rnd_M118_Special", 2] call CODI_LO_fnc_addBackpackMagazine;
	["VME_LR4_5Rnd_M118_Special", 4] call CODI_LO_fnc_addVestMagazine;
	["VME_LR4_5Rnd_M61_AP", 3] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["vme_pla_LR4"];
	CODI_LO_primaryWeaponOptic = ["VME_LR4_Scope","optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
	CODI_LO_primaryWeaponBipod = ["VME_LR4_bipod"];
	CODI_LO_primaryWeaponSilencer = ["VME_LR4_Silencer"];
};





//launcher
CODI_LO_fnc_nlaw = {
	CODI_LO_launcher = ["launch_NLAW_F"];
};
CODI_LO_fnc_pzf3 = {
	CODI_LO_launcherMagazines = ["BWA3_Pzf3_IT"];
	CODI_LO_launcher = ["BWA3_Pzf3"];
	CODI_LO_launcherOptic = ["BWA3_optic_NSA80"];
};
CODI_LO_fnc_titan_at = {
	["Titan_AT", 1] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcherMagazines = ["Titan_AT"];
	CODI_LO_launcher = ["launch_B_Titan_short_F"];
};
CODI_LO_fnc_titan_aa = {
	["Titan_AA", 1] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcherMagazines = ["Titan_AA"];
	CODI_LO_launcher = ["launch_B_Titan_F"];
};
CODI_LO_fnc_pf98 = {
	["vme_pla_PF98_AT_Rocket", 4] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcherMagazines = ["vme_pla_PF98_AT_Rocket"];
	CODI_LO_launcher = ["vme_pla_PF98"];
	CODI_LO_launcherOptic = ["vme_pla_PF98"];
};
CODI_LO_fnc_pf89b_at = {
	CODI_LO_launcherMagazines = ["vme_pla_PF89B_Rocket"];
	CODI_LO_launcher = ["vme_pla_PF89B"];
};
CODI_LO_fnc_fn6 = {
	["vme_pla_FN6_Rocket", 4] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcherMagazines = ["vme_pla_FN6_Rocket"];
	CODI_LO_launcher = ["vme_pla_FN6"];
};






CODI_LO_fnc_pkp = {
	["rhs_100Rnd_762x54mmR_green", 4] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_100Rnd_762x54mmR_green", 1] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_pkp"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1p63","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_rpk74 = {
	["hlc_45Rnd_545x39_t_rpk", 15] call CODI_LO_fnc_addBackpackMagazine;
	["hlc_45Rnd_545x39_t_rpk", 5] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_rpk74n"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1p63","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_rpk12 = {
	["hlc_60Rnd_545x39_t_rpk", 15] call CODI_LO_fnc_addBackpackMagazine;
	["hlc_60Rnd_545x39_t_rpk", 4] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_RPK12"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mp510 = {
	["hlc_30Rnd_10mm_JHP_MP5", 8] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_smg_mp510"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_Agendasix10mm"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_mp5sd6 = {
	["hlc_30Rnd_9x19_GD_MP5", 6] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_9x19_SD_MP5", 2] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["hlc_smg_mp5sd6"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_igla = {
	CODI_LO_launcherMagazines = ["rhs_mag_9k38_rocket"];
	["rhs_mag_9k38_rocket", 1] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcher = ["rhs_weap_igla"];
};
CODI_LO_fnc_igla_ammo = {
	["Titan_AA", 3] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_rpg7 = {
	CODI_LO_launcherMagazines = ["rhs_rpg7_PG7VR_mag"];
	["rhs_rpg7_PG7VR_mag", 1] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_rpg7_OG7V_mag", 2] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_launcher = ["rhs_weap_rpg7"];
	CODI_LO_launcherOptic = ["rhs_acc_pgo7v","rhs_acc_1pn93_2"];
};
CODI_LO_fnc_rpg7_ammo = {
	["rhs_rpg7_PG7VL_mag", 4] call CODI_LO_fnc_addBackpackMagazine;
};
CODI_LO_fnc_rpg26 = {
	CODI_LO_launcherMagazines = ["rhs_rpg26_mag"];
	CODI_LO_launcher = ["rhs_weap_rpg26"];
};
CODI_LO_fnc_hk53 = {
	["hlc_30rnd_556x45_SOST_HK33", 8] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST_HK33", 7] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_hk53RAS"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_hk33 = {
	["hlc_30rnd_556x45_SOST_HK33", 8] call CODI_LO_fnc_addVestMagazine;
	["hlc_30rnd_556x45_SOST_HK33", 7] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_hk33a2RIS"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponSilencer = ["muzzle_snds_M"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_SVDSNPZ = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svds_npz"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_SVDMNPZ = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svdp_npz"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_SVDMCamoNPZ = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svdp_wd_npz"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["optic_SOS","optic_AMS","optic_AMS_khk","optic_AMS_snd","optic_DMS","optic_KHS_blk","optic_KHS_hex","optic_KHS_tan","optic_LRPS","optic_NVS","RH_anpvs4","RH_anpvs10"];
};
CODI_LO_fnc_SVDM = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svdp"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_pso1m21","rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_SVDMCamo = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svdp_wd"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_pso1m21","rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_SVDS = {
	["rhs_10Rnd_762x54mmR_7N1", 2] call CODI_LO_fnc_addBackpackMagazine;
	["rhs_10Rnd_762x54mmR_7N1", 6] call CODI_LO_fnc_addVestMagazine;
	CODI_LO_primaryWeapon = ["rhs_weap_svds"];
	CODI_LO_primaryWeaponSilencer = ["rhs_acc_tgpv"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_pso1m21","rhs_acc_1p29","rhs_acc_1pn93_1"];
};
CODI_LO_fnc_aks74u = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_aks74u"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["rhs_acc_1p29","rhs_acc_1pn93_1","rhs_acc_ekp1"];
};
CODI_LO_fnc_aks74umtk = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_aks74u_MTK"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_ak12u = {
	["hlc_30Rnd_545x39_t_ak", 5] call CODI_LO_fnc_addVestMagazine;
	["hlc_30Rnd_545x39_EP_ak", 5] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_aku12"];
	CODI_LO_primaryWeaponSilencer = ["hlc_muzzle_545SUP_AK"];
	CODI_LO_primaryWeaponLaser = ["acc_pointer_IR"];
	CODI_LO_primaryWeaponOptic = ["RH_compM2","optic_MRCO","ACE_optic_MRCO_2D","optic_ACO_grn","optic_Aco","optic_ACO_grn_smg","optic_Aco_smg","RH_barska_rds","RH_cmore","optic_Holosight","optic_Holosight_smg"];
};
CODI_LO_fnc_akm_gl = {
	call CODI_LO_fnc_akm;
	["hlc_VOG25_AK", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_akmgl"];
};
CODI_LO_fnc_ak12_gl = {
	call CODI_LO_fnc_ak12;
	["hlc_VOG25_AK", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak12GL"];
};
CODI_LO_fnc_ak74m_gl = {
	call CODI_LO_fnc_ak74m;
	["hlc_VOG25_AK", 20] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak74m_gl"];
};
CODI_LO_fnc_akm_gl_ftl = {
	call CODI_LO_fnc_akm;
	["hlc_VOG25_AK", 10] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_akmgl"];
};
CODI_LO_fnc_ak12_gl_ftl = {
	call CODI_LO_fnc_ak12;
	["hlc_VOG25_AK", 10] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak12GL"];
};
CODI_LO_fnc_ak74m_gl_ftl = {
	call CODI_LO_fnc_ak74m;
	["hlc_VOG25_AK", 10] call CODI_LO_fnc_addBackpackMagazine;
	CODI_LO_primaryWeapon = ["hlc_rifle_ak74m_gl"];
};
CODI_LO_fnc_auga3_gl = {
	call CODI_LO_fnc_auga3;
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
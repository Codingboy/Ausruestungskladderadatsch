class CfgPatches
{
	class 1st_Core
	{
		author = "Coding";
		authors[] = {"Coding","SV-97"};
		version = 0.1;
		units[] = {"CODI_LO_AllInOne","CODI_LO_AmmoResupply","CODI_LO_MedicResupply","CODI_LO_GrenadeResupply","CODI_LO_SpecialAmmoResupply","CODI_LO_LauncherResupply"};
		weapons[] = {};
		requiredVersion = 0.1;
		requiredAddons[] = {};
		license = "CC-BY-NC-SA 4.0";
		licenseURL = "http://creativecommons.org/licenses/by-nc-sa/4.0/";
	};
};

#include "CODI\Dialogs.hpp"
#include "CODI\LO\Dialogs.hpp"
//#include "CSSA3\CSSA3_header.hpp"
#include "CHVD\dialog.hpp"
class CfgFunctions
{
	#include "CHVD\CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
	class 1st_Core_PreInit
	{
		init = "[] call compile preprocessFileLineNumbers '\1st_Core\preInit.sqf';";
	};
};
class Extended_PostInit_EventHandlers
{
	class 1st_Core_PostInit
	{
		init = "[] execVM '\1st_Core\postInit.sqf';";
	};
};
class Extended_Init_Eventhandlers
{
	class CODI_LO_AllInOne
	{
		CODI_LO_AllInOne_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\fnc_initAllInOne.sqf';";
	};
	class CODI_LO_ammoBox_usmc_wood
	{
		CODI_LO_ammoBox_usmc_wood_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\newBox.sqf';";
	};
	class CODI_LO_medicBox_usmc_wood
	{
		CODI_LO_medicBox_usmc_wood_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\newBox.sqf';";
	};
	class CODI_LO_grenadeBox_usmc_wood
	{
		CODI_LO_grenadeBox_usmc_wood_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\newBox.sqf';";
	};
	class CODI_LO_specialAmmoBox_usmc_wood
	{
		CODI_LO_specialAmmoBox_usmc_wood_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\newBox.sqf';";
	};
	class CODI_LO_launcherBox_usmc_wood
	{
		CODI_LO_launcherBox_usmc_wood_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\LO\newBox.sqf';";
	};
	class B_Truck_01_ammo_F
	{
		B_Truck_01_ammo_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmo.sqf';";
	};
	class B_Truck_01_fuel_F
	{
		B_Truck_01_fuel_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initFuel.sqf';";
	};
	class B_Truck_01_Repair_F
	{
		B_Truck_01_Repair_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initRepair.sqf';";
	};
	class O_Truck_03_ammo_F
	{
		O_Truck_03_ammo_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmo.sqf';";
	};
	class O_Truck_03_fuel_F
	{
		O_Truck_03_fuel_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initFuel.sqf';";
	};
	class O_Truck_03_repair_F
	{
		O_Truck_03_repair_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initRepair.sqf';";
	};
	class O_Truck_02_Ammo_F
	{
		O_Truck_02_Ammo_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmo.sqf';";
	};
	class O_Truck_02_fuel_F
	{
		O_Truck_02_fuel_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initFuel.sqf';";
	};
	class O_Truck_02_box_F
	{
		O_Truck_02_box_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initRepair.sqf';";
	};
	class I_Truck_02_Ammo_F
	{
		I_Truck_02_Ammo_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmo.sqf';";
	};
	class I_Truck_02_fuel_F
	{
		I_Truck_02_fuel_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initFuel.sqf';";
	};
	class I_Truck_02_box_F
	{
		I_Truck_02_box_F_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initRepair.sqf';";
	};
};

class CfgVehicles
{
	class B_supplyCrate_F;
	class Box_NATO_Ammo_F;
	class Box_NATO_WpsLaunch_F;
	class Box_NATO_WpsSpecial_F;
	class Box_NATO_Grenades_F;
	class Box_NATO_Support_F;
	#include "CODI\LO\boxes.hpp"
	class B_Soldier_F;
	#include "CODI\LO\usmc_wood.hpp"
	#include "CODI\LO\usmc_desert.hpp"
	#include "CODI\LO\bw_fleck.hpp"
	#include "CODI\LO\bw_tropen.hpp"
	#include "CODI\LO\usa_ocp.hpp"
	#include "SV\rus_emr.hpp"
	#include "SV\rus_spzns.hpp"
	#include "SV\pmc_dul.hpp"
	#include "SV\pla_07d.hpp"
	#include "SV\pla_07w.hpp"
	class Man;
	class CAManBase: Man
	{
		class ACE_SelfActions
		{
			class ACE_Equipment
			{
				class CODI_LO_lowerHeadset
				{
					displayName = "Headset absetzen";
					condition = "CODI_LO_headsetOn";
					statement = "call CODI_LO_fnc_lowerHeadSet";
					showDisabled = 0;
					priority = 0.1;
					icon = "\z\ace\addons\interaction\UI\dot_ca.paa";
					exceptions[] = {"isNotInside","isNotSitting"};
				};
				class CODI_LO_raiseHeadset
				{
					displayName = "Headset aufsetzen";
					condition = "!CODI_LO_headsetOn";
					statement = "call CODI_LO_fnc_raiseHeadSet";
					showDisabled = 0;
					priority = 0.1;
					icon = "\z\ace\addons\interaction\UI\dot_ca.paa";
					exceptions[] = {"isNotInside","isNotSitting"};
				};
			};
		};
	};
};

class CfgFactionClasses
{
	class CODI_LO_usmc_wood
	{
		displayName = "1st usmc_wood";
		priority = 100;
		icon = "";
		side = 1;//0=opfor, 1=blufor, 2=independent, 3=civilian
	};
	class CODI_LO_usmc_desert
	{
		displayName = "1st usmc_desert";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_bw_fleck
	{
		displayName = "1st bw_fleck";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_bw_tropen
	{
		displayName = "1st bw_tropen";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_rus_emr
	{
		displayName = "1st rus_emr";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_rus_spzns
	{
		displayName = "1st rus_spzns";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_pmc_dul
	{
		displayName = "1st pmc_dul";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_usa_ocp
	{
		displayName = "1st usa_ocp";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_pla_07d
	{
		displayName = "1st pla_07d";
		priority = 100;
		icon = "";
		side = 1;
	};
	class CODI_LO_pla_07w
	{
		displayName = "1st pla_07w";
		priority = 100;
		icon = "";
		side = 1;
	};
};

class CfgVehicleClasses
{
	class CODI_Infantry
	{
		displayName = "1st Infantry";
	};
};
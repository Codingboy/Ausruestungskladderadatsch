class CfgPatches
{
	class 1st_Core
	{
		authors[] = {"Coding"};
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
#include "CSSA3\CSSA3_header.hpp"
#include "CHVD\dialog.hpp"
class CfgFunctions
{
	#include "CHVD\CfgFunctions.hpp"
};

class Extended_PreInit_EventHandlers
{
	class ArsenalInit
	{
		init = "[] call compile preprocessFileLineNumbers '\1st_Core\preInit.sqf';";
	};
};
class Extended_PostInit_EventHandlers
{
	class ArsenalInit
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
	class CODI_LO_AmmoResupply
	{
		CODI_LO_AmmoResupply_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initAmmoResupply.sqf';";
	};
	class CODI_LO_MedicResupply
	{
		CODI_LO_MedicResupply_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initMedicalResupply.sqf';";
	};
	class CODI_LO_GrenadeResupply
	{
		CODI_LO_GrenadeResupply_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initGrenadeResupply.sqf';";
	};
	class CODI_LO_SpecialAmmoResupply
	{
		CODI_LO_SpecialAmmoResupply_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initSpecialAmmoResupply.sqf';";
	};
	class CODI_LO_LauncherResupply
	{
		CODI_LO_LauncherResupply_init = "_nul = [_this select 0] execVM '\1st_Core\CODI\Support\fnc_initLauncherResupply.sqf';";
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
	#include "CODI\LO\rus_emr.hpp"
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
};

class CfgVehicleClasses
{
	class CODI_Infantry
	{
		displayName = "1st Infantry";
	};
};
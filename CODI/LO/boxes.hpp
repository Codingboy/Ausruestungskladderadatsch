
	class CODI_LO_AllInOne : B_supplyCrate_F
	{
		displayName = "1st Ausrüstungskiste";
		author = "Coding";
		class ACE_Actions
		{
			class ACE_MainActions
			{
				distance = 5;
				class Admin
				{
					condition = "_player getVariable['CODI_LO_Admin', false] || (getPlayerUID _player) in [""_SP_PLAYER_"",""76561197996296785""] || serverCommandAvailable ""#kick""";
					displayName = "Admin";
					exceptions[] = {};
					hotkey = "";
					icon = "";
					priority = -1;
					showDisabled = 1;
					statement = "";
					class Enable_spectate
					{
						condition = "!CODI_LO_option_spectate";
						displayName = "enable_Zusehen";
						statement = "CODI_LO_option_spectate = true; publicVariable ""CODI_LO_option_spectate""";
					};
					class Disable_spectate
					{
						condition = "CODI_LO_option_spectate";
						displayName = "disable_Zusehen";
						statement = "CODI_LO_option_spectate = false; publicVariable ""CODI_LO_option_spectate""";
					};
					class Enable_teleport
					{
						condition = "!CODI_LO_option_teleport";
						displayName = "enable_Teleport";
						statement = "CODI_LO_option_teleport = true; publicVariable ""CODI_LO_option_teleport""";
					};
					class Disable_teleport
					{
						condition = "CODI_LO_option_teleport";
						displayName = "disable_Teleport";
						statement = "CODI_LO_option_teleport = false; publicVariable ""CODI_LO_option_teleport""";
					};
					/*class Enable_dive
					{
						condition = "!CODI_LO_option_dive";
						displayName = "enable_Taucherausrüstung";
						statement = "CODI_LO_option_dive = true";
					};
					class Disable_dive
					{
						condition = "CODI_LO_option_dive";
						displayName = "disable_Taucherausrüstung";
						statement = "CODI_LO_option_dive = false";
					};*/
					class Enable_para
					{
						condition = "!CODI_LO_option_para";
						displayName = "enable_Fallschirm";
						statement = "CODI_LO_option_para = true";
					};
					class Disable_para
					{
						condition = "CODI_LO_option_para";
						displayName = "disable_Fallschirm";
						statement = "CODI_LO_option_para = false";
					};
					class Enable_va
					{
						condition = "!CODI_LO_option_va";
						displayName = "enable_Virtual_Arsenal";
						statement = "CODI_LO_option_va = true; publicVariable ""CODI_LO_option_va""";
					};
					class Disable_va
					{
						condition = "CODI_LO_option_va";
						displayName = "disable_Virtual_Arsenal";
						statement = "CODI_LO_option_va = false; publicVariable ""CODI_LO_option_va""";
					};
					/*class Enable_lva
					{
						condition = "!CODI_LO_option_lva";
						displayName = "enable_whitelisted_Virtual_Arsenal";
						statement = "CODI_LO_option_lva = true; publicVariable ""CODI_LO_option_lva""";
					};
					class Disable_lva
					{
						condition = "CODI_LO_option_lva";
						displayName = "disable_whitelisted_Virtual_Arsenal";
						statement = "CODI_LO_option_lva = false; publicVariable ""CODI_LO_option_lva""";
					};*/
					class Enable_vaFor
					{
						condition = "!CODI_LO_option_va";
						displayName = "enable_VA_for_player";
						statement = "createDialog ""CODI_LO_EnableVA""";
					};
				};
				class Para
				{
					condition = "CODI_LO_option_para";
					displayName = "Fallschirm Nehmen";
					statement = "[_player] spawn CODI_LO_fnc_para";
				};
				class Dive
				{
					condition = "CODI_LO_option_dive";
					displayName = "Taucherausrüstung Nehmen";
					statement = "[_player] spawn CODI_LO_fnc_dive";
				};
				class Spectate
				{
					condition = "CODI_LO_option_spectate";
					displayName = "Zusehen";
					//statement = "['forced'] spawn CSSA3_fnc_createSpectateDialog;";
					//statement = "[true] spawn ace_spectator_fnc_setSpectator";
					statement = "['Initialize', [player, [], true]] call BIS_fnc_EGSpectator;";
				};
				class Teleport
				{
					condition = "CODI_LO_option_teleport";
					displayName = "Teleport";
					statement = "createdialog ""CODI_LO_teleport""";
				};
				class VA
				{
					condition = "CODI_LO_option_va || _player getVariable[""CODI_LO_option_va"", CODI_LO_option_va]";
					displayName = "Virtual Arsenal";
					statement = "[""Open"",true] spawn BIS_fnc_arsenal";
				};
				/*class LVA
				{
					condition = "CODI_LO_option_lva || _player getVariable[""CODI_LO_option_lva"", CODI_LO_option_lva]";
					displayName = "whitelisted Virtual Arsenal";
					statement = "[] spawn BIS_fnc_arsenal";
				};*/
				class Ausruesten
				{
					condition = "true";
					displayName = "Ausruesten";
					statement = "createDialog ""CODI_LO_lo""";
				};
			};
		};
	};
	class CODI_LO_ammoBox_usmc_wood : Box_NATO_Ammo_F
	{
		displayName = "1st Munition";
		author = "Coding";
	};
	class CODI_LO_medicBox_usmc_wood : Box_NATO_Support_F
	{
		displayName = "1st Medizinische Ausrüstung";
		author = "Coding";
	};
	class CODI_LO_grenadeBox_usmc_wood : Box_NATO_Grenades_F
	{
		displayName = "1st Granaten";
		author = "Coding";
	};
	class CODI_LO_specialAmmoBox_usmc_wood : Box_NATO_WpsSpecial_F
	{
		displayName = "1st SpezialMunition";
		author = "Coding";
	};
	class CODI_LO_launcherBox_usmc_wood : Box_NATO_WpsLaunch_F
	{
		displayName = "1st WerferMunition";
		author = "Coding";
	};
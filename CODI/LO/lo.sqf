CODI_LO_fnc_equip = {
	private["_unit"];
	_unit = param[0, player];
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;
	if ((getPlayerUID _unit) in ["76561197996296785","_SP_PLAYER_"]) then
	{
		_unit setVariable ["ACE_hasEarPlugsIn", true, true];
	};
	if (count(CODI_LO_uniform) != 0) then
	{
		_unit forceAddUniform (CODI_LO_uniform select 0);
	};
	if (count(CODI_LO_vest) != 0) then
	{
		_unit addVest (CODI_LO_vest select 0);
	};
	if (count(CODI_LO_backpack) != 0) then
	{
		_unit addBackpack (CODI_LO_backpack select 0);
	};
	if (count(CODI_LO_helmet) != 0) then
	{
		_unit addHeadgear (CODI_LO_helmet select 0);
	};
	if (count(CODI_LO_goggles) != 0) then
	{
		_unit addGoggles (CODI_LO_goggles select 0);
	};
	if (count(CODI_LO_nv) != 0) then
	{
		_unit linkItem (CODI_LO_nv select 0);
	};
	if (count(CODI_LO_binocularAmmo) != 0) then
	{
		_unit addMagazine (CODI_LO_binocularAmmo select 0);
	};
	if (count(CODI_LO_binocular) != 0) then
	{
		_unit addWeapon (CODI_LO_binocular select 0);
	};
	if (count(CODI_LO_radio) != 0) then
	{
		_unit linkItem (CODI_LO_radio select 0);
	};
	if (count(CODI_LO_gps) != 0) then
	{
		_unit linkItem (CODI_LO_gps select 0);
	};
	if (count(CODI_LO_watch) != 0) then
	{
		_unit linkItem (CODI_LO_watch select 0);
	};
	if (count(CODI_LO_compass) != 0) then
	{
		_unit linkItem (CODI_LO_compass select 0);
	};
	if (count(CODI_LO_map) != 0) then
	{
		_unit linkItem (CODI_LO_map select 0);
	};
	{
		_unit addItemToUniform _x;
	}
	forEach CODI_LO_uniformItems;
	{
		_unit addItemToVest _x;
	}
	forEach CODI_LO_vestItems;
	{
		_unit addItemToBackpack _x;
	}
	forEach CODI_LO_backpackItems;
	{
		_unit addMagazine _x;
	}
	forEach CODI_LO_primaryWeaponMagazines;
	if (count(CODI_LO_primaryWeapon) != 0) then
	{
		_unit addWeapon (CODI_LO_primaryWeapon select 0);
	};
	if (count(CODI_LO_primaryWeaponLaser) != 0) then
	{
		_unit addPrimaryWeaponItem (CODI_LO_primaryWeaponLaser select 0);
	};
	if (count(CODI_LO_primaryWeaponSilencer) != 0) then
	{
		_unit addPrimaryWeaponItem (CODI_LO_primaryWeaponSilencer select 0);
	};
	if (count(CODI_LO_primaryWeaponOptic) != 0) then
	{
		_unit addPrimaryWeaponItem (CODI_LO_primaryWeaponOptic select 0);
	};
	if (count(CODI_LO_primaryWeaponBipod) != 0) then
	{
		_unit addPrimaryWeaponItem (CODI_LO_primaryWeaponBipod select 0);
	};
	{
		_unit addMagazine _x;
	}
	forEach CODI_LO_secondaryWeaponMagazines;
	if (count(CODI_LO_secondaryWeapon) != 0) then
	{
		_unit addWeapon (CODI_LO_secondaryWeapon select 0);
	};
	if (count(CODI_LO_secondaryWeaponLaser) != 0) then
	{
		_unit addHandgunItem (CODI_LO_secondaryWeaponLaser select 0);
	};
	if (count(CODI_LO_secondaryWeaponSilencer) != 0) then
	{
		_unit addHandgunItem (CODI_LO_secondaryWeaponSilencer select 0);
	};
	if (count(CODI_LO_secondaryWeaponOptic) != 0) then
	{
		_unit addHandgunItem (CODI_LO_secondaryWeaponOptic select 0);
	};
	if (count(CODI_LO_secondaryWeaponBipod) != 0) then
	{
		_unit addHandgunItem (CODI_LO_secondaryWeaponBipod select 0);
	};
	{
		_unit addMagazine _x;
	}
	forEach CODI_LO_launcherMagazines;
	if (count(CODI_LO_launcher) != 0) then
	{
		_unit addWeapon (CODI_LO_launcher select 0);
	};
	if (count(CODI_LO_launcherLaser) != 0) then
	{
		_unit addSecondaryWeaponItem (CODI_LO_launcherLaser select 0);
	};
	if (count(CODI_LO_launcherSilencer) != 0) then
	{
		_unit addSecondaryWeaponItem (CODI_LO_launcherSilencer select 0);
	};
	if (count(CODI_LO_launcherOptic) != 0) then
	{
		_unit addSecondaryWeaponItem (CODI_LO_launcherOptic select 0);
	};
	if (count(CODI_LO_launcherBipod) != 0) then
	{
		_unit addSecondaryWeaponItem (CODI_LO_launcherBipod select 0);
	};
	{
		_unit addItemToUniform _x;
	}
	forEach CODI_LO_uniformMagazines;
	{
		_unit addItemToVest _x;
	}
	forEach CODI_LO_vestMagazines;
	{
		_unit addItemToBackpack _x;
	}
	forEach CODI_LO_backpackMagazines;
	if (!isNil "CODI_LO_postEquip") then
	{
		[player] call CODI_LO_postEquip;
	};
};
CODI_LO_fnc_whitelistArsenal = {
	private["_resolved","_fnc"];
	call CODI_LO_fnc_clearLoadout;
	_resolved = [player] call CODI_LO_fnc_resolveClass;
	_fnc = "CODI_LO_fnc_" + (_resolved select 0);
	call compile format["[player] call %1;", _fnc];
	_fnc = _fnc + "_" + (_resolved select 1);
	call compile format["[player] call %1;", _fnc];
	if (!isNil "CODI_LO_postLoadout") then
	{
		[player] call CODI_LO_postLoadout;
	};
	[missionnamespace, CODI_LO_uniform] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_vest] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_backpack] call BIS_fnc_addVirtualBackpackCargo;
	[missionnamespace, CODI_LO_helmet] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_goggles] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_nv] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_binocular] call BIS_fnc_addVirtualWeaponCargo;
	[missionnamespace, CODI_LO_radio] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_gps] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_watch] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_compass] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_map] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_uniformItems] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_vestItems] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_backpackItems] call BIS_fnc_addVirtualItemCargo;
	[missionnamespace, CODI_LO_binocularAmmo] call BIS_fnc_addVirtualMagazineCargo;
	{
		_weaponPacks = _x;
		{
			_weaponPack = _x;
			call CODI_LO_fnc_clearWeaponLoadout;
			call compile format["[player] call CODI_LO_fnc_%1;", _weaponPack];
		}
		forEach _weaponPacks;
	}
	forEach CODI_LO_weaponPacks;
	for "_i" from 0 to (4-1) do
	{
		if (count(CODI_LO_weaponPacks select _i) > 0) then
		{
			call compile format["[player] call CODI_LO_fnc_%1;", (CODI_LO_weaponPacks select _i) select (floor(random(count(CODI_LO_weaponPacks select _i))))];
			if (!isNil "CODI_LO_postWeaponLoadout") then
			{
				[player] call CODI_LO_postWeaponLoadout;
			};
			[missionnamespace, CODI_LO_primaryWeaponMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_secondaryWeaponMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_launcherMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_uniformMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_vestMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_backpackMagazines] call BIS_fnc_addVirtualMagazineCargo;
			[missionnamespace, CODI_LO_primaryWeapon] call BIS_fnc_addVirtualWeaponCargo;
			[missionnamespace, CODI_LO_secondaryWeapon] call BIS_fnc_addVirtualWeaponCargo;
			[missionnamespace, CODI_LO_launcher] call BIS_fnc_addVirtualWeaponCargo;
			[missionnamespace, CODI_LO_primaryWeaponLaser] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_primaryWeaponSilencer] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_primaryWeaponOptic] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_primaryWeaponBipod] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_secondaryWeaponLaser] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_secondaryWeaponSilencer] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_secondaryWeaponOptic] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_secondaryWeaponBipod] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_launcherLaser] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_launcherSilencer] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_launcherOptic] call BIS_fnc_addVirtualItemCargo;
			[missionnamespace, CODI_LO_launcherBipod] call BIS_fnc_addVirtualItemCargo;
		};
	};
};
CODI_LO_fnc_clearLoadout = {
	CODI_LO_uniform = [];
	CODI_LO_vest = [];
	CODI_LO_backpack = [];
	CODI_LO_helmet = [];
	CODI_LO_nv = [];
	CODI_LO_radio = [];
	CODI_LO_gps = [];
	CODI_LO_watch = [];
	CODI_LO_compass = [];
	CODI_LO_goggles = [];
	CODI_LO_binocular = [];
	CODI_LO_binocularAmmo = [];
	CODI_LO_map = [];
	CODI_LO_uniformItems = [];
	CODI_LO_vestItems = [];
	CODI_LO_backpackItems = [];
	CODI_LO_weaponPacks = [[],[],[],[]];
};
CODI_LO_fnc_addUniformItem = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_uniformItems pushBack _object;
	};
};
CODI_LO_fnc_addVestItem = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_vestItems pushBack _object;
	};
};
CODI_LO_fnc_addBackpackItem = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_backpackItems pushBack _object;
	};
};
CODI_LO_fnc_clearWeaponLoadout = {
	CODI_LO_primaryWeapon = [];
	CODI_LO_secondaryWeapon = [];
	CODI_LO_launcher = [];
	CODI_LO_primaryWeaponLaser = [];
	CODI_LO_primaryWeaponSilencer = [];
	CODI_LO_primaryWeaponOptic = [];
	CODI_LO_primaryWeaponBipod = [];
	CODI_LO_secondaryWeaponLaser = [];
	CODI_LO_secondaryWeaponSilencer = [];
	CODI_LO_secondaryWeaponOptic = [];
	CODI_LO_secondaryWeaponBipod = [];
	CODI_LO_launcherLaser = [];
	CODI_LO_launcherSilencer = [];
	CODI_LO_launcherOptic = [];
	CODI_LO_launcherBipod = [];
	CODI_LO_uniformMagazines = [];
	CODI_LO_vestMagazines = [];
	CODI_LO_backpackMagazines = [];
	CODI_LO_primaryWeaponMagazines = [];
	CODI_LO_secondaryWeaponMagazines = [];
	CODI_LO_launcherMagazines = [];
};
CODI_LO_fnc_addUniformMagazine = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_uniformMagazines pushBack _object;
	};
};
CODI_LO_fnc_addVestMagazine = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_vestMagazines pushBack _object;
	};
};
CODI_LO_fnc_addBackpackMagazine = {
	private["_object","_count"];
	_object = param[0, ""];
	_count = param[1, 1];
	for "_i" from 1 to _count do
	{
		CODI_LO_backpackMagazines pushBack _object;
	};
};
CODI_LO_fnc_resolveClass = {
	private["_unit","_class","_colour","_ret","_type","_typeArr"];
	_unit = param[0, player];
	_type = _unit getVariable["CODI_LO_class", ""];
	if (_type == "") then
	{
		_type = typeOf _unit;
	}
	else
	{
		_type = "CODI_LO_" + _type;
	};
	_typeArr = _type splitString "_";
	_ret = [];
	if (count(_typeArr) >= 5) then
	{
		if ((_typeArr select 0) == "CODI" && (_typeArr select 1) == "LO") then
		{
			_class = "";
			_colour = "";
			{
				if (_forEachIndex == 2) then
				{
					_class = _x;
				}
				else
				{
					if (_forEachIndex == 3) then
					{
						_colour = _x;
					}
					else
					{
						if (_forEachIndex > 3) then
						{
							_colour = _colour + "_" + _x;
						};
					};
				};
			}
			forEach _typeArr;
			_ret = [_class, _colour];
		};
	};
	_ret
};
CODI_LO_fnc_initialEquip = {
	private["_equipUnarmed","_fnc","_customEquip","_resolved"];
	call CODI_LO_fnc_clearLoadout;
	call CODI_LO_fnc_clearWeaponLoadout;
	_equipUnarmed = false;
	if (!isNil "CODI_LO_equipUnarmed") then
	{
		_equipUnarmed = CODI_LO_equipUnarmed;
	};
	_equipUnarmed = player getVariable["CODI_LO_equipUnarmed", _equipUnarmed];
	_customEquip = false;
	if (!isNil "CODI_LO_customEquip") then
	{
		_customEquip = CODI_LO_customEquip;
	};
	_customEquip = player getVariable["CODI_LO_customEquip", _customEquip];
	_resolved = [player] call CODI_LO_fnc_resolveClass;
	_fnc = "CODI_LO_fnc_" + (_resolved select 0);
	if (_equipUnarmed) then
	{
		_fnc = "CODI_LO_fnc_unarmed";
	};
	if (!_customEquip) then
	{
		call compile format["[player] call %1;", _fnc];
		_fnc = _fnc + "_" + (_resolved select 1);
		call compile format["[player] call %1;", _fnc];
		if (!isNil "CODI_LO_postLoadout") then
		{
			[player] call CODI_LO_postLoadout;
		};
		for "_i" from 0 to (4-1) do
		{
			if (count(CODI_LO_weaponPacks select _i) > 0) then
			{
				call compile format["[player] call CODI_LO_fnc_%1;", (CODI_LO_weaponPacks select _i) select (floor(random(count(CODI_LO_weaponPacks select _i))))];
			};
		};
		if (!isNil "CODI_LO_postWeaponLoadout") then
		{
			[player] call CODI_LO_postWeaponLoadout;
		};
	};
	[player] call CODI_LO_fnc_equip;
};
CODI_LO_fnc_guiEquip = {
	_colour = lbText[2100, lbCurSel 2100];
	_class = lbText[2101, lbCurSel 2101];
	call CODI_LO_fnc_clearLoadout;
	call CODI_LO_fnc_clearWeaponLoadout;
	call compile format["call CODI_LO_fnc_%1", _class];
	call compile format["call CODI_LO_fnc_%1_%2", _class, _colour];
	if (!isNil "CODI_LO_postLoadout") then
	{
		[player] call CODI_LO_postLoadout;
	};
	if (lbSize 2102 > 0) then
	{
		call compile format["[player] call CODI_LO_fnc_%1", lbText[2102, lbCurSel 2102]];
	};
	if (lbSize 2103 > 0) then
	{
		call compile format["[player] call CODI_LO_fnc_%1", lbText[2103, lbCurSel 2103]];
	};
	if (lbSize 2104 > 0) then
	{
		call compile format["[player] call CODI_LO_fnc_%1", lbText[2104, lbCurSel 2104]];
	};
	if (lbSize 2105 > 0) then
	{
		call compile format["[player] call CODI_LO_fnc_%1", lbText[2105, lbCurSel 2105]];
	};
	if (!isNil "CODI_LO_postWeaponLoadout") then
	{
		[player] call CODI_LO_postWeaponLoadout;
	};
	[player] call CODI_LO_fnc_equip;
	closeDialog 0;
};
CODI_LO_fnc_addMagazinesToBox = {
	_box = _this select 0;
	_weapon = _this select 1;
	call CODI_LO_fnc_clearWeaponLoadout;
	call compile format["call CODI_LO_fnc_%1", _weapon];
	{
		_magazines = _x;
		{
			_box addMagazineCargoGlobal _x;
		}
		forEach _magazines;
	}
	forEach [CODI_LO_uniformMagazines, CODI_LO_vestMagazines, CODI_LO_backpackMagazines];
};
CODI_LO_fnc_clearBox = {
	_box = _this select 0;
	clearItemCargoGlobal _box;
	clearWeaponCargoGlobal _box;
	clearMagazineCargoGlobal _box;
	clearBackpackCargoGlobal _box;
};





































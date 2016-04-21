class CODI_LO_lo
{
	idd = 4242;
	onLoad = "_this execVM '\1st_Core\CODI\LO\initLOGUI.sqf';";
	class controls
	{
/* #Wucilo
$[
	1.063,
	["asd",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2100,"Camouflage",[1,"",["0.436979 * safezoneW + safezoneX","0.357056 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1000,"",[1,"Tarnfarbe",["0.379688 * safezoneW + safezoneX","0.357056 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1001,"",[1,"Klasse",["0.379688 * safezoneW + safezoneX","0.401039 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1002,"",[1,"Pistole",["0.379688 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2101,"Clazz",[1,"",["0.436979 * safezoneW + safezoneX","0.401039 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2102,"Pistol",[1,"",["0.436979 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1003,"",[1,"Granaten",["0.379688 * safezoneW + safezoneX","0.489004 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1004,"",[1,"Gewehr",["0.379688 * safezoneW + safezoneX","0.532987 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1005,"",[1,"Werfer",["0.379688 * safezoneW + safezoneX","0.57697 * safezoneH + safezoneY","0.0515625 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2103,"Grenade",[1,"",["0.436979 * safezoneW + safezoneX","0.489004 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2104,"Rifle",[1,"",["0.436979 * safezoneW + safezoneX","0.532987 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2105,"Launcher",[1,"",["0.436979 * safezoneW + safezoneX","0.57697 * safezoneH + safezoneY","0.177604 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"OK",[1,"Ausrüsten",["0.385417 * safezoneW + safezoneX","0.620953 * safezoneH + safezoneY","0.229167 * safezoneW","0.0439828 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Wucilo)
////////////////////////////////////////////////////////

class Camouflage: CODIRscCombo
{
	idc = 2100;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.357056 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
	onLBSelChanged = "execVM '\1st_Core\CODI\LO\GUIcolourChanged.sqf'";
};
class CODIRscText_1000: CODIRscText
{
	idc = 1000;
	text = "Tarnfarbe";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.357056 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class CODIRscText_1001: CODIRscText
{
	idc = 1001;
	text = "Klasse";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.401039 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class CODIRscText_1002: CODIRscText
{
	idc = 1002;
	text = "Pistole";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class Clazz: CODIRscCombo
{
	idc = 2101;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.401039 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
	onLBSelChanged = "execVM '\1st_Core\CODI\LO\GUIclassChanged.sqf'";
};
class Pistol: CODIRscCombo
{
	idc = 2102;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class CODIRscText_1003: CODIRscText
{
	idc = 1003;
	text = "Granaten";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.489004 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class CODIRscText_1004: CODIRscText
{
	idc = 1004;
	text = "Gewehr";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.532987 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class CODIRscText_1005: CODIRscText
{
	idc = 1005;
	text = "Werfer";
	x = 0.379688 * safezoneW + safezoneX;
	y = 0.57697 * safezoneH + safezoneY;
	w = 0.0515625 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class Grenade: CODIRscCombo
{
	idc = 2103;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.489004 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class Rifle: CODIRscCombo
{
	idc = 2104;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.532987 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class Launcher: CODIRscCombo
{
	idc = 2105;
	x = 0.436979 * safezoneW + safezoneX;
	y = 0.57697 * safezoneH + safezoneY;
	w = 0.177604 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class OK: CODIRscButton
{
	idc = 1600;
	text = "Ausrüsten";
	x = 0.385417 * safezoneW + safezoneX;
	y = 0.620953 * safezoneH + safezoneY;
	w = 0.229167 * safezoneW;
	h = 0.0439828 * safezoneH;
	action = "call CODI_LO_fnc_guiEquip";
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////

	};
};














class CODI_LO_Teleport
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\LO\fnc_initTeleport.sqf';";
	class controls
	{
/* #Tykexu
$[
	1.063,
	["asd",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2100,"",[1,"",["0.419792 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Teleport",["0.419792 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.414063 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.171875 * safezoneW","0.07697 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Tykexu)
////////////////////////////////////////////////////////

class RscCombo_2100: CODIRscCombo
{
	idc = 2100;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscButton_1600: CODIRscButton
{
	idc = 1600;
	text = "Teleport"; //--- ToDo: Localize;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
	action = "call CODI_LO_fnc_teleport";
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.414063 * safezoneW + safezoneX;
	y = 0.434026 * safezoneH + safezoneY;
	w = 0.171875 * safezoneW;
	h = 0.07697 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};








class CODI_LO_EnableVA
{
	idd = -1;
	onLoad = "_this execVM '\1st_Core\CODI\LO\fnc_initEnableVA.sqf';";
	class controls
	{
/* #Tykexu
$[
	1.063,
	["asd",[[0,0,1,1],0.025,0.04,"GUI_GRID"],0,0,0],
	[2100,"",[1,"",["0.419792 * safezoneW + safezoneX","0.445021 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[1600,"",[1,"Teleport",["0.419792 * safezoneW + safezoneX","0.478009 * safezoneH + safezoneY","0.160417 * safezoneW","0.0219914 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]],
	[2200,"",[1,"",["0.414063 * safezoneW + safezoneX","0.434026 * safezoneH + safezoneY","0.171875 * safezoneW","0.07697 * safezoneH"],[-1,-1,-1,-1],[-1,-1,-1,-1],[-1,-1,-1,-1],"","-1"],[]]
]
*/

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Coding, v1.063, #Tykexu)
////////////////////////////////////////////////////////

class RscCombo_2100: CODIRscCombo
{
	idc = 2100;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.445021 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
};
class RscButton_1600: CODIRscButton
{
	idc = 1600;
	text = "Enable VA for person"; //--- ToDo: Localize;
	x = 0.419792 * safezoneW + safezoneX;
	y = 0.478009 * safezoneH + safezoneY;
	w = 0.160417 * safezoneW;
	h = 0.0219914 * safezoneH;
	action = "call CODI_LO_fnc_enableVA";
};
class IGUIBack_2200: CODIIGUIBack
{
	idc = 2200;
	x = 0.414063 * safezoneW + safezoneX;
	y = 0.434026 * safezoneH + safezoneY;
	w = 0.171875 * safezoneW;
	h = 0.07697 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
	};
};
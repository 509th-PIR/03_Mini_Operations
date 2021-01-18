/*
Placed in the ammobox init of you choice 
this execVM "Unit\Limited_Arsenal\Arsenal.sqf";
*/


a26_VirtualWeaponCargo = [];
a26_VirtualMagazineCargo = [];
a26_VirtualItemCargo = [];
a26_addVirtualBackpackCargo = [];

// private [
// 	"_available_weapons", 
// 	"_available_Ammo556",
// 	"_available_Ammo762",
// 	"_available_nvgoggles",
// 	"_available_items",
// 	"_available_Headgear",
// 	"_available_Goggles",
// 	"_available_Uniforms",
// 	"_available_Vests",
// 	"_available_BackpackCargo",
// 	"_available_medical",
// 	" _available_handgrenade",
// 	"_available_203",
// 	"_available_ace_items"
// ];

dummy=[];

_available_weapons = [
	"rhs_weap_m4a1_blockII_KAC",
	"rhs_weap_m249_pip_L",
	"rhs_weap_m4a1_m203s",
	"rhs_weap_m4a1"

];

//a26_VirtualMagazineCargo start/////////////////////////

_available_handgrenade =[
	"rhs_mag_an_m8hc",
	"SmokeShell",
	"SmokeShellBlue",
	"SmokeShellGreen",
	"rhs_mag_m67",
	"HandGrenade",
	"ACE_Chemlight_HiBlue",
	"ACE_Chemlight_HiGreen"

];

_available_203 = [
	"1Rnd_Smoke_Grenade_shell",
	"1Rnd_SmokeBlue_Grenade_shell",
	"rhs_mag_M441_HE",
	"rhs_mag_M585_white",
	"rhs_mag_m713_Red"


];

_available_Ammo556 = [
	"rhs_mag_30Rnd_556x45_M855A1_Stanag",
	"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
	"rhs_mag_30Rnd_556x45_M855A1_PMAG"

];

_available_Ammo762 = [
];
	// ////////////////      a26_VirtualItemCargo start                          //////////////;

_available_nvgoggles = [
	"rhsusf_ANPVS_14",
	"rhsusf_ANPVS_15",
	"ACE_NVG_Wide"
];
_available_items = [
	"ItemCompass",
	"ItemMap",
	"MineDetector",
	"Binocular",
	"Rangefinder",
	"Laserdesignator_03",
	"ToolKit",
	"B_UavTerminal",
	"rhsusf_bino_lrf_Vector21",
	"ItemcTab",
	"ItemMicroDAGR",
	"TFAR_anprc152",
	"TFAR_microdagr",
	"rhsusf_acc_nt4_black",
	"ITC_EPLRS",
	"itc_land_tablet_rover",
	"acc_pointer_IR",
	"ITC_ROVER_SIR",
	"rhsusf_acc_anpeq15side",
	"tfw_rf3080Item"

];
_available_ace_items = [
	"ACE_MapTools",
	"ACE_CableTie",
	"ACE_EarPlugs",
	"ACE_HuntIR_monitor",
	"ACE_acc_pointer_green",
	"ACE_UAVBattery",
	"ACE_microDAGR",
	"ACE_Sandbag_empty",
	"ACE_SpraypaintBlack",
	"ACE_SpraypaintRed",
	"ACE_SpraypaintGreen",
	"ACE_SpraypaintBlue",
	"ACE_EntrenchingTool",
	"ACE_DAGR",
	"ACE_M26_Clacker",
	"ACE_DefusalKit",
	"ACE_Flashlight_MX991",
	"ACE_Flashlight_XL50",
	"ACE_bodyBag",
	"ACE_Fortify"

];

_available_medical = [
	"ACE_fieldDressing",
	"ACE_splint",
	"ACE_epinephrine",
	"ACE_bloodIV",
	"ACE_bloodIV_500",
	"ACE_bloodIV_250",
	"ACE_salineIV",
	"ACE_salineIV_500",
	"ACE_salineIV_250",
	"ACE_personalAidKit",
	"ACE_surgicalKit",
	"ACE_packingBandage",
	"ACE_morphine",
	"ACE_tourniquet",
	"ACE_elasticBandage",
	"ACE_quikclot",
	"ACE_epinephrine"	
];

_available_Uniforms = [
	"rhs_uniform_cu_ocp",
	"JS_JC_FA18_PilotCoveralls",
	"rhs_uniform_g3_mc",
	"rhs_uniform_cu_ocp"
];

_available_Headgear = [
	"rhsusf_lwh_helmet_marpatd",
	"rhsusf_lwh_helmet_marpatd_ess",
	"rhsusf_lwh_helmet_marpatd_headset",
	"rhs_8point_marpatd"
];

_available_Goggles = [
	"rhsusf_googles_black",
	"rhsusf_googles_yellow",
	"rhsusf_googles_orange",
	"rhsusf_googles_clear",
	"rhsusf_shemagh_tan",
	"rhsusf_shemagh2_tan",
	"rhsusf_shemagh_gogg_tan",
	"rhsusf_shemagh2_gogg_tan",
	"G_Aviator"
];

_available_Vests = [
	"rhsusf_spc",
	"rhsusf_spc_corpsman",
	"rhsusf_spc",
	"rhsusf_spc_iar",
	"rhsusf_spc_light",
	"rhsusf_spc_mg",
	"rhsusf_spc_marksman",
	"rhsusf_spc_patchless",
	"rhsusf_spc_patchless_radio",
	"rhsusf_spc_rifleman",
	"rhsusf_spc_squadleader",
	"rhsusf_spc_teamleader"
];
//////////////////    a26_addVirtualBackpackCargo   start             ////////////////////////
_available_Backpack = [
		"B_LegStrapBag_olive_F",
		"rhsusf_assault_eagleaiii_ocp",
		"B_rhsusf_B_BACKPACK",
		"ACE_NonSteerableParachute",
		"tfw_ilbe_whip_mc",
		"tfw_ilbe_blade_mc",
		"B_AssaultPack_mcamo_Ammo"
		

];

a26_VirtualWeaponCargo = _available_weapons + dummy;
a26_VirtualMagazineCargo =  _available_203 + _available_Ammo556 + _available_handgrenade + _available_Ammo762 ;
a26_VirtualItemCargo = _available_nvgoggles + _available_items + _available_medical + _available_Uniforms + _available_Vests + _available_ace_items ;
a26_addVirtualBackpackCargo = _available_Backpack;

["AmmoboxInit",[_this]] spawn BIS_fnc_arsenal;
[_this, a26_VirtualWeaponCargo, true] call BIS_fnc_addVirtualWeaponCargo;
[_this, a26_VirtualMagazineCargo, true ] call BIS_fnc_addVirtualMagazineCargo;
[_this, a26_VirtualItemCargo, true ] call BIS_fnc_addVirtualItemCargo;
[_this, a26_addVirtualBackpackCargo, true ] call BIS_fnc_addVirtualBackpackCargo;




//this execVM "Unit\Limited_Arsenal\Arsenal.sqf";


// Exported from Arsenal by 2LT. Michael


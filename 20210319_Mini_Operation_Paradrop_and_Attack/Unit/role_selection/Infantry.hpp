#include "defines.hpp"
/*Infantry Loadout
TODO {
	Team leader 
	Squad leader
	Rifleman
}

	Auto rifleman 
	Grenadier
	Ammo bearer
	Anti Tank    
*/

class Infantry1 {
		displayName = "Team leader";									// Name visible in the menu
		icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
		role = "Infantry";										// Optional, see CfgRoles

		// Loadout definition, uses same entries as CfgVehicles classes
	weapons[] = {
		"rhs_weap_m4a1_blockII_KAC",
		"Binocular",
		"Throw",
		"Put"
	};

	magazines[] = {
		AMOUNT_7("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		DEFAULT_THROWABLES
	};

	items[] = {
		DEFAULT_ITEMS	
	};

	linkedItems[] = {
		GEAR_COMMON,
		"rhsusf_spcs_ocp_rifleman_alt",
		//Unit Specific
		"ItemcTab"
		//need helmet 

	};

	uniformClass = "rhs_uniform_cu_ocp";
	backpack = "tfw_ilbe_blade_mc"; 
};
class Infantry2 {
	displayName = "Squad leader";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
	weapons[] = {
		"rhs_weap_m4a1_blockII_KAC",
		"Binocular",
		"rhsusf_weap_m9",
		"Throw",
		"Put"
	};

	magazines[] = {
		//M855A1 #7
		AMOUNT_7("rhs_mag_30Rnd_556x45_M855A1_PMAG"),
		DEFAULT_THROWABLES
	};

	items[] = {
		DEFAULT_ITEMS,
		//Unit specific 
		"ACE_microDAGR"
	};

	linkedItems[] = {
		GEAR_COMMON,
		//Unit Specific
		"rhsusf_ach_helmet_ocp",
		"ItemcTab",
		"rhsusf_hgu56p_visor_mask_black_skull"
	};


	uniformClass = "rhs_uniform_cu_ocp";
	backpack = "tfw_ilbe_blade_mc"; 
};

class Infantry3 {
	displayName = "Auto Rifleman";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles
	// Loadout definition, uses same entries as CfgVehicles classes
	// Exported from Arsenal by CW2. Donov "Swallow" auto Gunner
	weapons[] = {
		"rhs_weap_m249_pip_L",
		"Rangefinder",
		"Throw",
		"Put"};

	magazines[] = {
		DEFAULT_THROWABLES,
		"rhsusf_200rnd_556x45_mixed_box",
		AMOUNT_3("rhsusf_200Rnd_556x45_soft_pouch_coyote"),
		AMOUNT_2("rhsusf_200Rnd_556x45_mixed_soft_pouch_coyote")
	};

	items[] = {
		DEFAULT_ITEMS
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp",
		"rhsusf_ach_helmet_ocp",
		"rhs_googles_clear",
		"ItemMap",
		"ItemCompass",
		"tf_microdagr",
		"TFAR_anprc152",
		"ItemGPS"
	};

	uniformClass = "rhs_uniform_g3_mc";
	backpack = "rhsusf_assault_eagleaiii_ocp";

};

class Infantry4 {
	displayName = "Rifleman";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
	weapons[] = {
		"arifle_MXC_F",
		"Binocular"
	};
	magazines[] = {
		"30Rnd_65x39_caseless_mag",
		"30Rnd_65x39_caseless_mag",
		"SmokeShell"
	};
	items[] = {
		"FirstAidKit"
	};
	linkedItems[] = {
		"V_Chestrig_khk",
		"H_Watchcap_blk",
		"optic_Aco",
		"acc_flashlight",
		"ItemMap",
		"ItemCompass",
		"ItemWatch",
		"ItemRadio"
	};
	uniformClass = "U_B_CombatUniform_mcam_tshirt";
	backpack = "B_AssaultPack_mcamo";
};

class Infantry5 {
	displayName = "Grenadier";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
	// Exported from Arsenal by CW2. Donov "Swallow" grenader
	weapons[] = {
		"rhs_weap_m4a1_m203s",
		"Binocular",
		"Throw",
		"Put"
	};

	magazines[] = {
		"rhs_mag_M441_HE",
		"rhs_mag_m67",
		"rhs_mag_m67",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShellBlue",
		"SmokeShellGreen",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M441_HE",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_M585_white",
		"rhs_mag_m713_Red",
		"rhs_mag_m713_Red",
		"rhs_mag_m713_Red",
		"rhs_mag_m713_Red",
		"rhs_mag_m713_Red",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_Smoke_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"1Rnd_SmokeBlue_Grenade_shell",
		"HandGrenade"
	};

	items[] = {
		"ACE_packingBandage",
		"ACE_morphine","ACE_tourniquet",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_EarPlugs",
		"ACE_EarPlugs",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_Flashlight_XL50",
		"ACE_MapTools",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_EntrenchingTool",
		"rhsusf_acc_nt4_black"
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp",
		"rhsusf_ach_helmet_ocp",
		"rhs_googles_clear",
		"ItemMap",
		"ItemCompass",
		"tf_microdagr",
		"TFAR_anprc152",
		"ItemGPS"
	};

	uniformClass = "rhs_uniform_g3_mc";
	backpack = "rhsusf_falconii_mc";
};

class Infantry6 {
	displayName = "Ammo Bearer";								// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles
	// Exported from Arsenal by CW2. Donov "Swallow" ammo man
	weapons[] = {
		"rhs_weap_m4a1",
		"Binocular",
		"Throw",
		"Put"
	};
	magazines[] = {
		"rhs_mag_m67",
		"rhs_mag_m67",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShellBlue",
		"SmokeShellGreen",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
	};

	items[] = {
		"ACE_packingBandage",
		"ACE_morphine",
		"ACE_tourniquet",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_EarPlugs",
		"ACE_EarPlugs",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_Flashlight_XL50",
		"ACE_MapTools",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_EntrenchingTool",
		"rhsusf_acc_nt4_black"};

	linkedItems[] = {
		"rhsusf_spcs_ocp",
		"rhsusf_ach_helmet_ocp",
		"rhs_googles_clear",
		"ItemMap",
		"ItemCompass",
		"tf_microdagr",
		"TFAR_anprc152",
		"ItemGPS"
	};

	uniformClass = "rhs_uniform_g3_mc";
	backpack = "B_Carryall_mcamo";

};

class Infantry7 {
	displayName = "Anti Tank";									// Name visible in the menu
	icon = "\A3\Ui_f\data\GUI\Cfg\Ranks\sergeant_gs.paa";	// Icon displayed next to the name
	role = "Infantry";										// Optional, see CfgRoles

	// Loadout definition, uses same entries as CfgVehicles classes
			weapons[] = {
		"rhs_weap_m4a1",
		"rhs_weap_maaws",
		"Rangefinder",
		"Throw",
		"Put"
	};

	magazines[] = {
		"rhs_mag_m67",
		"rhs_mag_m67",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShell",
		"SmokeShellBlue",
		"SmokeShellGreen",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",
		"rhs_mag_30Rnd_556x45_M855A1_Stanag",
		"MRAWS_HEAT_F","MRAWS_HEAT_F",
		"MRAWS_HE_F","MRAWS_HEAT_F"
	};

	items[] = {
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_packingBandage",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_morphine",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_tourniquet",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_elasticBandage",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_quikclot",
		"ACE_EarPlugs",
		"ACE_EarPlugs",
		"ACE_CableTie",
		"ACE_CableTie",
		"ACE_Flashlight_XL50",
		"ACE_MapTools",
		"ACE_epinephrine",
		"ACE_epinephrine",
		"ACE_EntrenchingTool"
	};

	linkedItems[] = {
		"rhsusf_spcs_ocp",
		"rhsusf_ach_helmet_ocp",
		"rhs_googles_clear",
		"ItemMap",
		"ItemCompass",
		"TFAR_anprc152",
		"ItemGPS"
	};
	
	uniformClass = "rhs_uniform_g3_mc";
	backpack = "rhsusf_assault_eagleaiii_ocp";
};
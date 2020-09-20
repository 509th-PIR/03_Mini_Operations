// JIP Check (This code should be placed first line of init.sqf file)
if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands


//////////////////////View Distance Settings///////////////////////////////////////////////////////////////////////////////////////////

CHVD_allowNoGrass = false;
CHVD_maxView = 5000;
CHVD_maxObj = 5000;

////////////////Anit Cheat/////////////////////////////////////////////////////

/////////////////////Admin and cheat mods
if (["KA_proving_ground",
	"NSS_Admin_Console",
	"MGI_TP_V3",
	"MGI_TG",
	"XEDOM_AdminTool",
	"SSPCM",
	"Revo_DC", 
	"mcc_sandbox",
	"mcc_sandbox_curatorExp",
	"sn_backpack_air",
	"sn_backpack_tt",
	"sn_backpack_sw",
	"SPCONTROLMOD",
	"targetedBUGHANDLER",
	"TPW_HUD"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["AdminMod", false, 2] call BIS_fnc_endMission;};

    //Mods banned off the Server
if (["tf47_launchers",
	"ravage",
	"BloodSplatter",
	"BloodlustLITE_Auto",
	"BloodSplatterLITE",
	"AACC",
	"KA_Suitcase_Nuke",
	"hlcweapons_M134",
	"achilles_data_f_achilles",
	"gpn18",
	"tfa_facewear",
	"bullet_cases"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
		["RestrictedMods", false, 2] call BIS_fnc_endMission;};

//arsenal Block
if (["PA_arsenal",	
	"VAS_Diag",
	"Gear_Loadout", 
	"KA_VAA",
	"vaa_arsenal",
	"nks_arsenal",
	"IA_ACE_VAA",
	"Lordeath_arsenal",
	"Roys_Arsenal"] apply {isClass(configFile>>"CfgPatches">>_x)} findIf {_x} > -1) then{
	["ArsenalMod", false, 2] call BIS_fnc_endMission;};

///////////////////////////Remove Shack Tac vis////////////////////////////////////////////////

STGI_Update = {}; 
STNT_Update ={};

///////////////////////////Damage Disabled Area////////////////////////////////////////////////




///////////////////////////Tow Artillery////////////////////////////////////////////////
attachgun = {
 _vehicles = nearestObjects [_this, ["Car","Truck"], 8];
 if (count _vehicles==0) then {
  hint format ["No vehicle within 3 meters."];
 } else {
  if (_this doorPhase 'fold_arty' == 1) then {
   _this attachto [(_vehicles select 0),[0,-5,-2.5]];
   removeAllActions _this;
   _this addAction["Detach from truck",{(_this select 0) call detachgun;},[],1.5,true,true,"","true",3];
  } else {
   hint format ["Gun is not folded, can't attach"];
  };
 };
};

detachgun = {
 if (_this doorPhase 'fold_arty' == 1) then {  
detach _this;
  removeAllActions _this;
  _this addAction["Attach to truck",{(_this select 0) call attachgun;},[],1.5,true,true,"","true",3];
 } else {
  hint format ["Gun is not folded, can't detach"];
 };
};


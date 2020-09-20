//nul = execVM "GroupSpawner.sqf";
//this addaction ["spawn AI", "GroupSpawner.sqf"];

_crew1 = [];
_airframe1 = [];
_airframe2 = [];
_airframe3 = [];
_landframe1 = [];
_landframe2 = [];
_group1 = [];
_group2 = [];
_group3 = [];
_group4 = [];


//_crew1 = creategroup WEST;
//_airframe1 = [getMarkerPos "marker", bearing, "vehicle classname", _crew1] call BIS_fnc_spawnVehicle;
//_team1 = [];


if (isServer) then {
_crew1 = creategroup west;
_airframe1 = [getMarkerPos "ins_1", 0, "sab_bf109", _crew1] call BIS_fnc_spawnVehicle;
_airframe2 = [getMarkerPos "ins_2", 0, "sab_bf109", _crew1] call BIS_fnc_spawnVehicle;
_airframe3 = [getMarkerPos "ins_3", 0, "sab_bf109", _crew1] call BIS_fnc_spawnVehicle;

_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

sleep .5;

_group1 = creategroup west;
_landframe1 = [getMarkerPos "fins_1", 0, "rp_LIB_DAK_PzKpfwIV_H", _group1] call BIS_fnc_spawnVehicle;

_wp1 = _group1 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group2 = creategroup west;
_landframe2 = [getMarkerPos "fins_2", 0, "rp_LIB_DAK_PzKpfwIV_H", _group2] call BIS_fnc_spawnVehicle;

_wp1 = _group2 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group3 = [getmarkerpos "fins_3", west, ["LIB_DAK_NCO",
"LIB_DAK_Soldier_3",
"LIB_DAK_medic",
"LIB_DAK_Soldier_2",
"LIB_DAK_grenadier",
"LIB_DAK_Soldier",
"LIB_DAK_AT_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _group3 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group4 = [getmarkerpos "fins_4", west, ["LIB_DAK_NCO",
"LIB_DAK_Soldier_3",
"LIB_DAK_medic",
"LIB_DAK_Soldier_2",
"LIB_DAK_grenadier",
"LIB_DAK_Soldier",
"LIB_DAK_AT_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _group4 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

};

//_wp1 = _crew1 addWaypoint [getmarkerpos "wp1_1", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_1", 0];

//sleep x;
//_mygroup = _mygroup;
//{_x assignAsCargo (_airframe1 select 0); _x moveInCargo (airframe1 select 0);} foreach units _mygroup;
// add }; at the end
//nul = execVM "GroupSpawner.sqf";
//this addaction ["spawn AI", "GroupSpawner.sqf"];

_crew2 = [];
_airframe4 = [];
_airframe5 = [];
_airframe6 = [];
_landframe3 = [];
_landframe4 = [];
_group5 = [];
_group6 = [];
_group7 = [];
_group8 = [];


//_crew2 = creategroup WEST;
//_airframe4 = [getMarkerPos "marker", bearing, "vehicle classname", _crew2] call BIS_fnc_spawnVehicle;
//_team1 = [];


if (isServer) then {
_crew2 = creategroup west;
_airframe4 = [getMarkerPos "ins_1", 0, "sab_bf110", _crew2] call BIS_fnc_spawnVehicle;
_airframe5 = [getMarkerPos "ins_2", 0, "sab_ju87", _crew2] call BIS_fnc_spawnVehicle;
_airframe6 = [getMarkerPos "ins_3", 0, "sab_ju87", _crew2] call BIS_fnc_spawnVehicle;

_wp1 = _crew2 addWaypoint [getmarkerpos "wp1_1", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

sleep 10;

_group5 = creategroup west;
_landframe3 = [getMarkerPos "fins_1", 0, "rp_LIB_DAK_PzKpfwIV_H", _group5] call BIS_fnc_spawnVehicle;

_wp1 = _group5 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group6 = creategroup west;
_landframe4 = [getMarkerPos "fins_2", 0, "rp_LIB_DAK_PzKpfwIV_H", _group6] call BIS_fnc_spawnVehicle;

_wp1 = _group6 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group7 = [getmarkerpos "fins_3", west, ["LIB_DAK_NCO",
"LIB_DAK_Soldier_3",
"LIB_DAK_medic",
"LIB_DAK_Soldier_2",
"LIB_DAK_grenadier",
"LIB_DAK_Soldier",
"LIB_DAK_AT_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _group7 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

_group8 = [getmarkerpos "fins_4", west, ["LIB_DAK_NCO",
"LIB_DAK_Soldier_3",
"LIB_DAK_medic",
"LIB_DAK_Soldier_2",
"LIB_DAK_grenadier",
"LIB_DAK_Soldier",
"LIB_DAK_AT_grenadier"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;

_wp1 = _group8 addWaypoint [getmarkerpos "wp1_3", 0];
    _wp1 setWaypointType "MOVE";
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "AWARE";

};

//_wp1 = _crew2 addWaypoint [getmarkerpos "wp1_1", 0];
//	_wp1 setWaypointType "TR UNLOAD"; 
//	_wp1 setWaypointSpeed "FULL";
//	_wp1 setwaypointstatements ["this land 'land'"];

//_mygroup = [getmarkerpos "EXAMPLE VARIABLE NAME", Side, ["Class_Name"],[],[],[],[],[],Spawn bearing] call BIS_fnc_spawnGroup;
//_wp1a = _mygroup addWaypoint [getmarkerpos "wp1_1", 0];

//sleep x;
//_mygroup = _mygroup;
//{_x assignAsCargo (_airframe4 select 0); _x moveInCargo (airframe4 select 0);} foreach units _mygroup;
// add }; at the end
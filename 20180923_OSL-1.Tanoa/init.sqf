[] execVM "VCOMAI\init.sqf";
execVM "R3F_LOG\init.sqf";

_mrkr = getMarkerPos "respawn_west";
"respawn_west" setMarkerPosLocal [_mrkr select 0, _mrkr select 1, 3001.409];
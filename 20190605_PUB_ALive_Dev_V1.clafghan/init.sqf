if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

player enableFatigue false;   
player addEventHandler ["Respawn", {player enableFatigue false}];
player setCustomAimCoef 0.1;
player addEventHandler ["Respawn", {player setCustomAimCoef 0.1}];


0 = [] spawn { 
    while{true} do { 
        { 
            if(_x distance (getMarkerPos "mrk_safe_zone") < 500) then {_x allowDamage false} else {_x allowDamage true}; 
        } forEach allUnits + vehicles; 
        sleep 1; 
    }; 
};

_EndSplashScreen = {
    for "_x" from 1 to 4 do {
        endLoadingScreen;
        sleep 3;
    };
};

[] spawn _EndSplashScreen;

_trig = createTrigger ["EmptyDetector",[0, 0, 0],false];
_trig setTriggerStatements [
  		"vehicle player isKindOf 'Air'",
  		"if (!(player isKindOf 'rhsusf_army_ocp_helipilot') && {assignedVehicleRole player in [['driver'],['Turret',[0]]]}) then {moveOut player}",
  		""
];

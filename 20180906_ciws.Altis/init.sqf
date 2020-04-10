test_ciws = {
_this spawn {
    params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
    sleep 1;
    _target = "itc_land_shell_o" createVehicle [0,0,1000];
    _target setVehicleAmmo 0;
    _target setPos (_projectile modelToWorld [0,-5,0]);
    _target setVelocity (velocity _projectile);
    _target setMass 0;
    _target setobjecttexture [0,""];
    createVehicleCrew _target;
    driver _target disableAI "ALL";
    gunner _target disableAI "ALL";
    [{
        (_this select 0) params ["_projectile", "_target"];
        if (!alive _projectile || !alive _target) exitWith {
            deleteVehicle _projectile;
            deleteVehicle _target;
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
        _target setPos (_projectile modelToWorld [0,-5,0]);
        _target setVelocity (velocity _projectile);
    }, 0.1, [_projectile, _target]] call CBA_fnc_addPerFrameHandler;
    [{
        (_this select 0) params ["_projectile", "_target"];
        if (!alive _projectile || !alive _target) exitWith {
            [_this select 1] call CBA_fnc_removePerFrameHandler;
        };
        drop ["\a3\data_f\Cl_basic","","Billboard",1,20,getPos _projectile,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
        drop ["\a3\data_f\Cl_basic","","Billboard",1,20,getPos _target,[0,0,0],1,1.275,1.0,0.0,[1],[[238,255,0,1]],[0],0.0,2.0,"","",""];
    }, 0, [_projectile, _target]] call CBA_fnc_addPerFrameHandler;
};
};

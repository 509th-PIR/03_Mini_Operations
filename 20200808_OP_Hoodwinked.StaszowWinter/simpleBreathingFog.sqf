// Foggy breath 20110122
//Updated by dedmen 27.07.2019

params ["_unit", "_int"];
//_int //intensity of fog (0 to 1)

//If you don't have CBA then you can use "Logic" or maybe "Static" or anything else that's invisible and "light"
private _source = createSimpleObject ["CBA_NamespaceDummy", (getPos _unit), true];
_source attachTo [_unit,[0,0.15,0], "neck"]; // get fog to come out of player mouth

while {alive _unit && isNil "GF_KillBreathingFog"} do {
    sleep (2 + random 2); // random time between breaths

    private _fog = "#particlesource" createVehicleLocal getPos _source;
    _fog setParticleParams [
        ["\A3\Data_F\ParticleEffects\Universal\universal.p3d", 16, 12, 13,0],
        "", 
        "Billboard", 
        0.5, 
        0.5, 
        [0,0,0],
        [0, 0.2, -0.2], 
        1, 1.275,    1, 0.2, 
        [0, 0.2,0], 
        [[1,1,1, _int], [1,1,1, 0.01], [1,1,1, 0]], 
        [1000], 
        1, 
        0.04, 
        "", 
        "", 
        _source];
    _fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
    _fog setDropInterval 0.001;

    sleep 0.5; // 1/2 second exhalation
    deleteVehicle _fog;
};

deleteVehicle _source;
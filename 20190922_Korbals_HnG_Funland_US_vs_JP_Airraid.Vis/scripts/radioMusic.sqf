/*
 *		RADIO MUSIC SCRIPT
 *
 *		Description: Adds some songs to a radio
 *
 *		Usage: ["scripts\radioMusic.sqf", this] call BIS_fnc_execVM;
*/

params["_radio"];
ranOnce = false;

PlayUserSound = {
	params["_soundName", "_radio"];

	if (ranOnce) then {
		deleteVehicle soundPos;
	};
	ranOnce = true;
	if (_soundName != "Silent") then {
		soundPos = createVehicle ["Land_HelipadEmpty_F", getPos _radio, [], 0, "CAN_COLLIDE"];
		soundPos say3D [_soundName, 30];
	};
};

_radio addAction["<t color='#e60000'>Stop Sound</t>", {
	params["_target"];
	["Silent", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#ab150a'>Blood on the Risers<\t>", {
	params["_target"];
	["BloodOnTheRisers", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#ebdf07'>Over There<\t>", {
	params["_target"];
	["OverThere", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#1ca108'>The Army Goes Rolling Along<\t>", {
	params["_target"];
	["TheArmyGoesRollingAlong", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#79edf7'>Wild Blue Yonder<\t>", {
	params["_target"];
	["WildBlueYonder", _target] remoteExec ["PlayUserSound", 0, true];
}];

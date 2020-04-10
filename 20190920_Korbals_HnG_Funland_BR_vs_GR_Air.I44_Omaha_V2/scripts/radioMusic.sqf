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

_radio addAction["<t color='#ab150a'>Winter Came Spring<\t>", {
	params["_target"];
	["WinterCameSpring", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#ebdf07'>From Glen To Glen<\t>", {
	params["_target"];
	["FromGlenToGlen", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#1ca108'>The Man On The British Countryside<\t>", {
	params["_target"];
	["TheManOnTheBritishCountryside", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#79edf7'>Dance Your Troubles Away<\t>", {
	params["_target"];
	["DanceYourTroublesAway", _target] remoteExec ["PlayUserSound", 0, true];
}];

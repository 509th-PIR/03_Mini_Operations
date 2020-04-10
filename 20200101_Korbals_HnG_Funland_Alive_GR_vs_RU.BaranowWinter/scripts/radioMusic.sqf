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

_radio addAction["<t color='#ff471a'>Erika<\t>", {
	params["_target"];
	["Erika", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#0000b3'>Panzerlied<\t>", {
	params["_target"];
	["Panzerlied", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#ebda01'>Walde<\t>", {
	params["_target"];
	["Walde", _target] remoteExec ["PlayUserSound", 0, true];
}];

_radio addAction["<t color='#005900'>Westerwald<\t>", {
	params["_target"];
	["Westerwald", _target] remoteExec ["PlayUserSound", 0, true];
}];

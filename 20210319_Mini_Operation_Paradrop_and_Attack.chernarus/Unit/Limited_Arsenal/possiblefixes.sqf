_blacklist = ["gm"];

_cfgWpns = configFile >> "CfgWeapons";
_cfgVehs = configFile >> "CfgVehicles";
_cfgMags = configFile >> "CfgMagazines";

{
	_cfg = switch (_x) do {
		case 7: {_cfgGlasses};
		case 22;
		case 23;
		case 26: {_cfgMags};
		case 24: {_cfgMags};
		default {_cfgWpns}
	};
	_arr = +(BIS_fnc_arsenal_data select _x);
	_arr = _arr select {!(toLower getText (_cfg >> _x >> "DLC") in _blacklist)};
	BIS_fnc_arsenal_data set [_x, _arr];
} forEach [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 22, 23, 24, 26];



new
case "AmmoboxInit": 
{
	params 
	[
		["_box",objnull,[objnull]], 
		["_allowAll",false,[false]], 
		["_condition",{true},[{}]]
	];

	if ({} isequalto {}) then {
		_box setvariable ["bis_fnc_arsenal_condition",_condition,true];
	};

	if (_allowAll) then 
	{
		[_box,true,true,false] call bis_fnc_addVirtualWeaponCargo;
		[_box,true,true,false] call bis_fnc_addVirtualMagazineCargo;
		[_box,true,true,false] call bis_fnc_addVirtualItemCargo;
		[_box,true,true,false] call bis_fnc_addVirtualBackpackCargo;
	};
	
	[["AmmoboxServer",_box,true],"bis_fnc_arsenal",false] call bis_fnc_mp;
};
//////////////////////////////////
	case "Preload": 
	{
		private _data = missionNamespace getVariable "bis_fnc_arsenal_data";
		
		if (isNil "_data" || isNull _fastLookupTable || _this isEqualTo true) then // or force preload
		{
			deleteLocation _fastLookupTable;
			_fastLookupTable = createLocation ["Invisible", [0,0,0], 0, 0];
			
			private _CFGWEAPONS = configFile >> "CfgWeapons";
			private _CFGMAGAZINES = configFile >> "CfgMagazines";
			
			private _fnc_dataPushBack = 
			{
				params ["_index", "_className"];
				_data select _index pushBack _className;
				_fastLookupTable setVariable [_className, true];
				true
			};
			
			private _fnc_testItemAndStore =
			{
				params ["_config", "_className"];
				if (getNumber (_config >> "scope") == 0) exitWith {};
				_fastLookupTable setVariable [_className, true];
				//while { getNumber (_config >> "scope") == 1 } do { _config = inheritsFrom _config };
				//if (getNumber (_config >> "scope") == 2 ) then { _fastLookupTable setVariable [_className, true] };
			};
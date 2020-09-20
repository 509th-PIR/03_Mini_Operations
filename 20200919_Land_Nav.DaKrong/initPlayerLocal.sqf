player enableFatigue false;   
player addEventHandler ["Respawn", {player enableFatigue false}];

player setCustomAimCoef 0.0;
player addEventHandler ["Respawn", {player setCustomAimCoef 0.0}];

player addAction ["<t color='#FF0000'>Camp Sarge</t>", {player setPos (getPos sarge)}];
player addEventHandler ["Respawn", {player addAction ["<t color='#FF0000'>Camp Sarge</t>", {player setPos (getPos sarge)}];}];

x = 2100;
 while {x >= 0} do {
  hintSilent parseText format ["<t size='4.0' color='#ff0000' shadow='0'>WARNING!</t> <t size='1.2'> You are outside the zone and have %1 seconds to reach the blue circle.", x];
x = x - 1;
sleep 1;
};
"Bo_GBU12_LGB" createVehicle [getPos player select 0, getPos player select 1]
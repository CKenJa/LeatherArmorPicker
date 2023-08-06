#https://garchiving.com/approximation-atan2/
#返り値は1000000倍で-180~180の範囲。引数は100までを想定。たぶん2000超えると良くない
execute store success score #atan2.plus_x ckenja.yukata if score #atan2.x ckenja.yukata matches 1..
execute store success score #atan2.minus_x ckenja.yukata if score #atan2.x ckenja.yukata matches ..-1
execute store success score #atan2.plus_y ckenja.yukata if score #atan2.y ckenja.yukata matches 1..
execute store success score #atan2.minus_y ckenja.yukata if score #atan2.y ckenja.yukata matches ..-1
#int x = abs(input_x);
#int y = abs(input_y);
execute unless score #atan2.x ckenja.yukata matches 0.. run scoreboard players operation #atan2.x ckenja.yukata *= #-1 ckenja.yukata
execute unless score #atan2.y ckenja.yukata matches 0.. run scoreboard players operation #atan2.y ckenja.yukata *= #-1 ckenja.yukata

#bool c;
#if ( y < x )
execute store success score #atan2.c ckenja.yukata if score #atan2.y ckenja.yukata < #atan2.x ckenja.yukata

execute if score #atan2.c ckenja.yukata matches 1 run function ckenja.yukata:atan2/true
execute if score #atan2.c ckenja.yukata matches 0 run function ckenja.yukata:atan2/false

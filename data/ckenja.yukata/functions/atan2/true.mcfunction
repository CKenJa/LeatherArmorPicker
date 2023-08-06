# z = (float)y / x;
scoreboard players operation #atan2.y ckenja.yukata *= #100 ckenja.yukata
scoreboard players operation #atan2.y ckenja.yukata /= #atan2.x ckenja.yukata

function ckenja.yukata:atan2/atan {input:"#atan2.y ckenja.yukata"}

#  if (input_x > 0 && input_y < 0) a *= -1;
execute if score #atan2.plus_x ckenja.yukata matches 1 if score #atan2.minus_y ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata *= #-1 ckenja.yukata

#  if (input_x < 0) {
#    if (input_y > 0)a = 18000 - a;
#    if (input_y < 0)a = a - 18000;
execute if score #atan2.minus_x ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata -= #180000000 ckenja.yukata
execute if score #atan2.minus_x ckenja.yukata matches 1 if score #atan2.plus_y ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata *= #-1 ckenja.yukata

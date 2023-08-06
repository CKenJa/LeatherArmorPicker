#z = (float)x / y;
scoreboard players operation #atan2.x ckenja.yukata *= #100 ckenja.yukata
scoreboard players operation #atan2.x ckenja.yukata /= #atan2.y ckenja.yukata

function ckenja.yukata:atan2/atan {input:"#atan2.x ckenja.yukata"}

#  if (input_x > 0) {
#    if (input_y > 0) a = 9000 - a;
#    if (input_y < 0) a = a - 9000;
execute if score #atan2.plus_x ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata -= #90000000 ckenja.yukata
execute if score #atan2.plus_x ckenja.yukata matches 1 if score #atan2.plus_y ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata *= #-1 ckenja.yukata

#  if (input_x < 0) {
#    if (input_y > 0) a = a + 9000;
#    if (input_y < 0) a = -a - 9000;
execute if score #atan2.minus_x ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata += #90000000 ckenja.yukata
execute if score #atan2.minus_x ckenja.yukata matches 1 if score #atan2.minus_y ckenja.yukata matches 1 run scoreboard players operation #atan2.a ckenja.yukata *= #-1 ckenja.yukata

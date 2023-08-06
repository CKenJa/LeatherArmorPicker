execute positioned ~ ~ ~0.1 run tp @s ^ ^ ^1 ~ ~
scoreboard players operation #atan2.x ckenja.yukata = #pos_picker.pos.x ckenja.yukata
scoreboard players operation #atan2.y ckenja.yukata = #pos_picker.pos.y ckenja.yukata
scoreboard players remove #atan2.x ckenja.yukata 50
scoreboard players remove #atan2.y ckenja.yukata 50

#tellraw @p {"translate":"(%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#atan2.x"}},{"score":{"objective": "ckenja.yukata","name":"#atan2.y"}}]}
function ckenja.yukata:atan2/general
scoreboard players operation #atan2.a ckenja.yukata /= #1000000 ckenja.yukata
scoreboard players operation #atan2.a ckenja.yukata *= #-1 ckenja.yukata
scoreboard players add #atan2.a ckenja.yukata 90
execute unless score #atan2.a ckenja.yukata matches 0.. run scoreboard players add #atan2.a ckenja.yukata 360
scoreboard players operation #pos_picker.h ckenja.yukata = #atan2.a ckenja.yukata
function ckenja.yukata:pos_picker/update

scoreboard players set #pos_picker.timer.circle ckenja.yukata 5
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.1f,-0.1f,-0.1f],scale:[0.2f,0.2f,0.2f]}}

scoreboard players remove #pos_picker.timer.suqare ckenja.yukata 1
scoreboard players remove #pos_picker.timer.circle ckenja.yukata 1

execute if score #pos_picker.timer.suqare ckenja.yukata matches 0 run data merge entity @e[type=block_display,tag=ckenja.yukata.pos_picker.square,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.075f],scale:[0.15f,0.15f,0.15f]},start_interpolation:-1}
execute if score #pos_picker.timer.circle ckenja.yukata matches 0 run data merge entity @e[type=block_display,tag=ckenja.yukata.pos_picker.circle,limit=1] {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},start_interpolation:-1}
execute if data storage ckenja.yukata: armor_selector{preview:1} as @e[type=armor_stand,tag=ckenja.yukata.pos_picker.stand] at @s run tp @s ~ ~ ~ ~4 ~

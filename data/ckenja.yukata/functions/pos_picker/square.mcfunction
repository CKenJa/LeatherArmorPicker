tp @s ~ ~ ~0.1
scoreboard players operation #pos_picker.s ckenja.yukata = #pos_picker.pos.x ckenja.yukata
scoreboard players operation #pos_picker.v ckenja.yukata = #pos_picker.pos.y ckenja.yukata
function ckenja.yukata:pos_picker/update

scoreboard players set #pos_picker.timer.suqare ckenja.yukata 5
data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.05f,-0.05f,-0.05f],scale:[0.1f,0.1f,0.1f]}}

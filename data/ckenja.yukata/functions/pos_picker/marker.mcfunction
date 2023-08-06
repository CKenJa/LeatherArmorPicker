data modify storage ckenja.yukata: pos_picker.Pos set from entity @s Pos

execute store result score #pos_picker.pos.x ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[0] 100
execute store result score #pos_picker.pos.y ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[1] 100
execute store result score #pos_picker.pos.z ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[2] 100

scoreboard players operation #pos_picker.pos.x ckenja.yukata -= #pos_picker.init.x ckenja.yukata
scoreboard players operation #pos_picker.pos.y ckenja.yukata -= #pos_picker.init.y ckenja.yukata
#scoreboard players operation #pos_picker.pos.z ckenja.yukata -= #pos_picker.init.z ckenja.yukata

#tellraw @p {"translate":"(%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#pos_picker.pos.x"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.pos.y"}}]}

execute if score #pos_picker.pos.x ckenja.yukata matches 0..100 if score #pos_picker.pos.y ckenja.yukata matches 0..100 as @e[type=block_display,tag=ckenja.yukata.pos_picker.square] run function ckenja.yukata:pos_picker/square

execute positioned as @e[type=interaction,tag=ckenja.yukata.pos_picker.panel] positioned ~ ~1.5 ~1.5 if entity @s[distance=0.85..1.15] facing entity @s feet positioned ~ ~ ~ as @e[type=block_display,tag=ckenja.yukata.pos_picker.circle] run function ckenja.yukata:pos_picker/circle

kill @s

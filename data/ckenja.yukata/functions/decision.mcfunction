advancement revoke @s only ckenja.yukata:decision

data merge storage ckenja.yukata: {armor_selector:{0:-1,1:-1,2:-1,3:-1,preview:-1}}
execute as @e[type=armor_stand,tag=ckenja.yukata.pos_picker.armor] at @s run tp @s ~ ~ ~ 0 0
execute as @e[type=armor_stand,tag=ckenja.yukata.pos_picker.armor] run data merge entity @s {Glowing: 0b}
summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:leather_boots",Count:1b},Tags:["ckenja.yukata.decision","ckenja.yukata.decision.0"]}
summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:leather_leggings",Count:1b},Tags:["ckenja.yukata.decision","ckenja.yukata.decision.1"]}
summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:leather_chestplate",Count:1b},Tags:["ckenja.yukata.decision","ckenja.yukata.decision.2"]}
summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:leather_helmet",Count:1b},Tags:["ckenja.yukata.decision","ckenja.yukata.decision.3"]}
execute as @e[type=item,distance=..1,tag=ckenja.yukata.decision] run function ckenja.yukata:decision.part
function ckenja.yukata:pos_picker/update

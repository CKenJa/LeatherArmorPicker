kill @e[tag=ckenja.yukata.pos_picker]
summon interaction ~ ~0.5 ~-0.9 {width:3f,height:3f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.panel","ckenja.yukata.entity_exploration.target"]}
summon block_display ~0.1 ~2.13 ~0.5 {Glowing:1b,teleport_duration:4,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.075f,-0.075f,-0.075f],scale:[0.15f,0.15f,0.15f]},block_state:{Name:"minecraft:glass"},Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.square"]}
execute positioned ~ ~2 ~0.6 rotated -90 -67 run summon block_display ^ ^ ^1 {Glowing:1b,teleport_duration:4,interpolation_duration:2,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.125f,-0.125f,-0.125f],scale:[0.25f,0.25f,0.25f]},block_state:{Name:"minecraft:glass"},Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.circle"]}
execute positioned ~-0.5 ~1.5 ~0.5 summon marker run function ckenja.yukata:pos_picker/init.marker
execute store result score #pos_picker.init.x ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[0] 100
execute store result score #pos_picker.init.y ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[1] 100
execute store result score #pos_picker.init.z ckenja.yukata run data get storage ckenja.yukata: pos_picker.Pos[2] 100
summon text_display ~ ~3.5 ~0.6 {billboard:"fixed",default_background:1b,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.text.code"]}

summon text_display ~-2 ~2 ~0.6 {billboard:"fixed",default_background:1b,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.text.preview"],text:'{"text":"🔎プレビュー"}'}
summon text_display ~-2 ~3 ~0.6 {billboard:"fixed",default_background:1b,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.text.decision"],text:'{"text":"✔決定","color":"green"}'}
summon interaction ~-2 ~2 ~0.6 {width:1f,height:0.5f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.preview"]}
summon interaction ~-2 ~3 ~0.6 {width:1f,height:0.5f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.decision"]}

summon armor_stand ~2 ~1 ~1 {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{id:"minecraft:leather_boots",Count:1b}],Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.armor","ckenja.yukata.pos_picker.stand","ckenja.yukata.pos_picker.armor.0"]}
summon armor_stand ~2 ~1 ~1 {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{id:"minecraft:leather_leggings",Count:1b}],Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.armor","ckenja.yukata.pos_picker.stand","ckenja.yukata.pos_picker.armor.1"]}
summon armor_stand ~2 ~1 ~1 {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{id:"minecraft:leather_chestplate",Count:1b}],Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.armor","ckenja.yukata.pos_picker.stand","ckenja.yukata.pos_picker.armor.2"]}
summon armor_stand ~2 ~1 ~1 {Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b}],Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.armor","ckenja.yukata.pos_picker.stand","ckenja.yukata.pos_picker.armor.3"]}
summon armor_stand ~2 ~1 ~1 {Marker:1b,NoGravity:1b,Invulnerable:1b,NoBasePlate:1b,DisabledSlots:4144959,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.stand","ckenja.yukata.pos_picker.armor"]}

summon interaction ~2 ~0.75 ~1 {width:1f,height:0.5f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.0"]}
summon interaction ~2 ~1.25 ~1 {width:1f,height:0.5f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.1"]}
summon interaction ~2 ~1.75 ~1 {width:1f,height:0.75f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.2"]}
summon interaction ~2 ~2.5 ~1 {width:1f,height:0.75f,Tags:["ckenja.yukata.pos_picker","ckenja.yukata.pos_picker.interaction.3"]}

scoreboard players set #pos_picker.h ckenja.yukata 23
scoreboard players set #pos_picker.s ckenja.yukata 60
scoreboard players set #pos_picker.v ckenja.yukata 63
function ckenja.yukata:pos_picker/update

data modify storage ckenja.yukata: armor_selector set value {0:-1,1:-1,2:-1,3:-1,preview:-1}

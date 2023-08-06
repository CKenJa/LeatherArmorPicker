advancement revoke @s only ckenja.yukata:preview

execute store result storage ckenja.yukata: armor_selector.preview int -1 run data get storage ckenja.yukata: armor_selector.preview
execute unless data storage ckenja.yukata: armor_selector{preview:1} as @e[type=armor_stand,tag=ckenja.yukata.pos_picker.armor] at @s run tp @s ~ ~ ~ 0 0
execute if data storage ckenja.yukata: armor_selector{preview:1} run function ckenja.yukata:preview.deselect

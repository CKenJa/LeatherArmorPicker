$execute store result storage ckenja.yukata: armor_selector.$(part) int -1 run data get storage ckenja.yukata: armor_selector.$(part)
$execute as @e[type=armor_stand,tag=ckenja.yukata.pos_picker.armor.$(part),limit=1] run function ckenja.yukata:armor_selector/armor {part:$(part)}

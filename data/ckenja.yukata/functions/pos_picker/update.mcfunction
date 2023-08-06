
scoreboard players operation #color_calc.h ckenja.yukata = #pos_picker.h ckenja.yukata
scoreboard players operation #color_calc.s ckenja.yukata = #pos_picker.s ckenja.yukata
scoreboard players operation #color_calc.v ckenja.yukata = #pos_picker.v ckenja.yukata
#tellraw @p {"translate":"(%s,%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#color_calc.h"}},{"score":{"objective": "ckenja.yukata","name":"#color_calc.s"}},{"score":{"objective": "ckenja.yukata","name":"#color_calc.v"}}]}
function ckenja.yukata:color_calc/hsv_to_rgb
scoreboard players operation #color_calc.r ckenja.yukata *= #255 ckenja.yukata
scoreboard players operation #color_calc.g ckenja.yukata *= #255 ckenja.yukata
scoreboard players operation #color_calc.b ckenja.yukata *= #255 ckenja.yukata
scoreboard players operation #color_calc.r ckenja.yukata /= #10000 ckenja.yukata
scoreboard players operation #color_calc.g ckenja.yukata /= #10000 ckenja.yukata
scoreboard players operation #color_calc.b ckenja.yukata /= #10000 ckenja.yukata
#tellraw @p {"translate":"(%s,%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#color_calc.r"}},{"score":{"objective": "ckenja.yukata","name":"#color_calc.g"}},{"score":{"objective": "ckenja.yukata","name":"#color_calc.b"}}]}
scoreboard players operation #pos_picker.text.r ckenja.yukata = #color_calc.r ckenja.yukata
scoreboard players operation #pos_picker.text.g ckenja.yukata = #color_calc.g ckenja.yukata
scoreboard players operation #color_calc.dec ckenja.yukata = #color_calc.b ckenja.yukata

scoreboard players operation #pos_picker.text.r ckenja.yukata *= #65536 ckenja.yukata
scoreboard players operation #pos_picker.text.g ckenja.yukata *= #256 ckenja.yukata

scoreboard players operation #color_calc.dec ckenja.yukata += #pos_picker.text.r ckenja.yukata
scoreboard players operation #color_calc.dec ckenja.yukata += #pos_picker.text.g ckenja.yukata
execute store result storage ckenja.yukata: armor_selector.color int 1 run scoreboard players get #color_calc.dec ckenja.yukata
#tellraw @p {"translate":"(%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#color_calc.dec"}}]}
function ckenja.yukata:color_calc/dec_to_hex
data modify storage ckenja.yukata: color_calc.tmp0 set from storage ckenja.yukata: color_calc.hex[0].value
data modify storage ckenja.yukata: color_calc.tmp1 set from storage ckenja.yukata: color_calc.hex[1].value
data modify storage ckenja.yukata: color_calc.tmp2 set from storage ckenja.yukata: color_calc.hex[2].value
data modify storage ckenja.yukata: color_calc.tmp3 set from storage ckenja.yukata: color_calc.hex[3].value
data modify storage ckenja.yukata: color_calc.tmp4 set from storage ckenja.yukata: color_calc.hex[4].value
data modify storage ckenja.yukata: color_calc.tmp5 set from storage ckenja.yukata: color_calc.hex[5].value
execute as @e[type=text_display,tag=ckenja.yukata.pos_picker.text.code] run function ckenja.yukata:pos_picker/text with storage ckenja.yukata: color_calc

function ckenja.yukata:armor_selector/dyeing

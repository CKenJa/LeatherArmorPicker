scoreboard players operation #color_calc.tmp ckenja.yukata = #color_calc.dec ckenja.yukata
scoreboard players operation #color_calc.tmp ckenja.yukata %= #16 ckenja.yukata
execute store result storage ckenja.yukata: color_calc.tmp.value int 1 run scoreboard players get #color_calc.tmp ckenja.yukata
execute if data storage ckenja.yukata: color_calc.tmp{value:10} run data modify storage ckenja.yukata: color_calc.tmp.value set value "A"
execute if data storage ckenja.yukata: color_calc.tmp{value:11} run data modify storage ckenja.yukata: color_calc.tmp.value set value "B"
execute if data storage ckenja.yukata: color_calc.tmp{value:12} run data modify storage ckenja.yukata: color_calc.tmp.value set value "C"
execute if data storage ckenja.yukata: color_calc.tmp{value:13} run data modify storage ckenja.yukata: color_calc.tmp.value set value "D"
execute if data storage ckenja.yukata: color_calc.tmp{value:14} run data modify storage ckenja.yukata: color_calc.tmp.value set value "E"
execute if data storage ckenja.yukata: color_calc.tmp{value:15} run data modify storage ckenja.yukata: color_calc.tmp.value set value "F"
data modify storage ckenja.yukata: color_calc.hex append from storage ckenja.yukata: color_calc.tmp

scoreboard players operation #color_calc.dec ckenja.yukata /= #16 ckenja.yukata
scoreboard players remove #color_calc.loop ckenja.yukata 1
execute if score #color_calc.loop ckenja.yukata matches 1.. run function ckenja.yukata:color_calc/dec_to_hex.loop

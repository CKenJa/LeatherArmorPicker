scoreboard players set #color_display.tate ckenja.yukata 100
data modify storage ckenja.yukata: color_display.particle.size set value "0.6"
scoreboard players operation #color_calc.h ckenja.yukata = #pos_picker.h ckenja.yukata
execute positioned ~0.5 ~0.5 ~ run function ckenja.yukata:color_display/tate
scoreboard players set #color_calc.s ckenja.yukata 100
scoreboard players set #color_calc.v ckenja.yukata 100
scoreboard players set #color_display.circle ckenja.yukata 360
data modify storage ckenja.yukata: color_display.particle.size set value "1"
execute rotated 90 -90 run function ckenja.yukata:color_display/circle

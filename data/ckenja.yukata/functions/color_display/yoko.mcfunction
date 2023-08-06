#> ckenja.yukata:color_display/yoko

scoreboard players operation #color_calc.s ckenja.yukata = #color_display.yoko ckenja.yukata
scoreboard players add #color_calc.s ckenja.yukata 10
function ckenja.yukata:color_display/hsv_to_particle

scoreboard players remove #color_display.yoko ckenja.yukata 10
execute if score #color_display.yoko ckenja.yukata matches 0.. positioned ~-0.1 ~ ~ run function ckenja.yukata:color_display/yoko

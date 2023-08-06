#> ckenja.yukata:color_display/tate

scoreboard players operation #color_calc.v ckenja.yukata = #color_display.tate ckenja.yukata

scoreboard players set #color_display.yoko ckenja.yukata 100
function ckenja.yukata:color_display/yoko
scoreboard players remove #color_display.tate ckenja.yukata 10
execute if score #color_display.tate ckenja.yukata matches 0.. positioned ~ ~-0.1 ~ run function ckenja.yukata:color_display/tate

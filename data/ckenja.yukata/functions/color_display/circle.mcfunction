#> ckenja.yukata:color_display/circle

scoreboard players operation #color_calc.h ckenja.yukata = #color_display.circle ckenja.yukata
execute positioned ^ ^ ^1 run function ckenja.yukata:color_display/hsv_to_particle
scoreboard players remove #color_display.circle ckenja.yukata 10
execute if score #color_display.circle ckenja.yukata matches 0.. rotated ~ ~10 run function ckenja.yukata:color_display/circle

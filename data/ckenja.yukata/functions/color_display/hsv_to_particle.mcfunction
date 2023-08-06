function ckenja.yukata:color_calc/hsv_to_rgb
execute store result storage ckenja.yukata: color_display.particle.temp double 0.0001 run scoreboard players get #color_calc.r ckenja.yukata
data modify storage ckenja.yukata: color_display.particle.r set string storage ckenja.yukata: color_display.particle.temp 0 -1
execute store result storage ckenja.yukata: color_display.particle.temp double 0.0001 run scoreboard players get #color_calc.g ckenja.yukata
data modify storage ckenja.yukata: color_display.particle.g set string storage ckenja.yukata: color_display.particle.temp 0 -1
execute store result storage ckenja.yukata: color_display.particle.temp double 0.0001 run scoreboard players get #color_calc.b ckenja.yukata
data modify storage ckenja.yukata: color_display.particle.b set string storage ckenja.yukata: color_display.particle.temp 0 -1
function ckenja.yukata:color_display/particle with storage ckenja.yukata: color_display.particle

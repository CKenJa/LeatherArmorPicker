#input h(0~360) s(0~100) v(0~100)
#temp c(0~10000) x(0~10000) m(0~10000)
#output r(0~10000) g(0~10000) b(0~10000)

# c = v * s;
scoreboard players operation #color_calc.c ckenja.yukata = #color_calc.v ckenja.yukata
scoreboard players operation #color_calc.c ckenja.yukata *= #color_calc.s ckenja.yukata

# x = c * (10000 - (((h * 6) % 12000) - 6000).abs()) / 10000
# x = c * (10000 - ((h * 10000 / 60.0) % 20000 - 10000).abs()) / 10000
scoreboard players operation #color_calc.x ckenja.yukata = #color_calc.h ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata *= #10000 ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata /= #60 ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata %= #20000 ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata -= #10000 ckenja.yukata
execute unless score #color_calc.x ckenja.yukata matches ..0 run \
scoreboard players operation #color_calc.x ckenja.yukata *= #-1 ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata += #10000 ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata *= #color_calc.c ckenja.yukata
scoreboard players operation #color_calc.x ckenja.yukata /= #10000 ckenja.yukata

# m = v - c;
scoreboard players operation #color_calc.m ckenja.yukata = #color_calc.v ckenja.yukata
scoreboard players operation #color_calc.m ckenja.yukata *= #100 ckenja.yukata
scoreboard players operation #color_calc.m ckenja.yukata -= #color_calc.c ckenja.yukata

execute if score #color_calc.h ckenja.yukata matches ..59 run function ckenja.yukata:color_calc/hsv_to_rgb.set {r:"#color_calc.c", g:"#color_calc.x", b:"#0"}
execute if score #color_calc.h ckenja.yukata matches 60..119 run function ckenja.yukata:color_calc/hsv_to_rgb.set {r:"#color_calc.x", g:"#color_calc.c", b:"#0"}
execute if score #color_calc.h ckenja.yukata matches 120..179 run function ckenja.yukata:color_calc/hsv_to_rgb.set { r:"#0", g:"#color_calc.c", b:"#color_calc.x"}
execute if score #color_calc.h ckenja.yukata matches 180..239 run function ckenja.yukata:color_calc/hsv_to_rgb.set { r:"#0", g:"#color_calc.x", b:"#color_calc.c"}
execute if score #color_calc.h ckenja.yukata matches 240..299 run function ckenja.yukata:color_calc/hsv_to_rgb.set { r:"#color_calc.x", g:"#0", b:"#color_calc.c"}
execute if score #color_calc.h ckenja.yukata matches 300.. run function ckenja.yukata:color_calc/hsv_to_rgb.set { r:"#color_calc.c", g:"#0", b:"#color_calc.x"}
scoreboard players operation #color_calc.r ckenja.yukata += #color_calc.m ckenja.yukata
scoreboard players operation #color_calc.g ckenja.yukata += #color_calc.m ckenja.yukata
scoreboard players operation #color_calc.b ckenja.yukata += #color_calc.m ckenja.yukata
execute unless score #color_calc.r ckenja.yukata matches 0.. run scoreboard players set #color_calc.r ckenja.yukata 0
execute unless score #color_calc.g ckenja.yukata matches 0.. run scoreboard players set #color_calc.g ckenja.yukata 0
execute unless score #color_calc.b ckenja.yukata matches 0.. run scoreboard players set #color_calc.b ckenja.yukata 0

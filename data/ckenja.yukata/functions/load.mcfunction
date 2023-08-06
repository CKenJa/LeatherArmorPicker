scoreboard objectives add ckenja.yukata dummy

scoreboard players set #-1 ckenja.yukata -1
scoreboard players set #1 ckenja.yukata 1
scoreboard players set #2 ckenja.yukata 2
scoreboard players set #6 ckenja.yukata 6
scoreboard players set #60 ckenja.yukata 60
scoreboard players set #100 ckenja.yukata 100
scoreboard players set #200 ckenja.yukata 200
scoreboard players set #1000 ckenja.yukata 1000
scoreboard players set #6000 ckenja.yukata 6000
scoreboard players set #9000 ckenja.yukata 9000
scoreboard players set #10000 ckenja.yukata 10000
scoreboard players set #12000 ckenja.yukata 12000
scoreboard players set #20000 ckenja.yukata 20000

data modify storage ckenja.yukata: pos_picker set value {int:[0.0f,0.0f,5.0f]}

scoreboard players set #-448 ckenja.yukata -448
scoreboard players set #95400 ckenja.yukata 95400
scoreboard players set #58940000 ckenja.yukata 58940000
scoreboard players set #1000000 ckenja.yukata 1000000
scoreboard players set #90000000 ckenja.yukata 90000000
scoreboard players set #180000000 ckenja.yukata 180000000

scoreboard players set #65536 ckenja.yukata 65536
scoreboard players set #256 ckenja.yukata 256
scoreboard players set #255 ckenja.yukata 255

scoreboard players set #16 ckenja.yukata 16
execute unless data storage ckenja.yukata: armor_selector.ArmorItems run data modify storage ckenja.yukata: armor_selector.ArmorItems set value [0,0,0,0]

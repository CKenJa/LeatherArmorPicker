#a = z * (z * (-448 * z - 954) + 5894);//3次曲線近似(0~45度の範囲で±0.1以内の精度)
#返り値は角度の1000000倍
$scoreboard players operation #atan2.a ckenja.yukata = $(input)
scoreboard players operation #atan2.a ckenja.yukata *= #-448 ckenja.yukata
scoreboard players operation #atan2.a ckenja.yukata -= #95400 ckenja.yukata
$scoreboard players operation #atan2.a ckenja.yukata *= $(input)
scoreboard players operation #atan2.a ckenja.yukata += #58940000 ckenja.yukata
scoreboard players operation #atan2.a ckenja.yukata /= #100 ckenja.yukata
$scoreboard players operation #atan2.a ckenja.yukata *= $(input)
#tellraw @p {"translate":"%s","with":[{"score":{"objective": "ckenja.yukata","name":"#atan2.a"}}]}

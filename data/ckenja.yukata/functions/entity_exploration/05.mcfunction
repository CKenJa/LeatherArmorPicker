### 視線先エンティティ探査 functionループ型 0.5m
# 1mおきに移動してエンティティの有無を確認

## 探査
# 立方体のdx,dy,dzによる探査範囲を置いてエンティティをチェック
scoreboard players set #entity_exploration.05 ckenja.yukata 0
execute positioned ~-0.25 ~-0.25 ~-0.25 as @e[type=#ckenja.yukata:entity_exploration,tag=ckenja.yukata.entity_exploration.target,dx=0,dy=0,dz=0] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] run scoreboard players set #entity_exploration.05 ckenja.yukata 1
# エンティティが範囲内に居たらさらに細かくチェック
execute if score #entity_exploration.05 ckenja.yukata matches 1.. positioned ^ ^ ^-0.125 run function ckenja.yukata:entity_exploration/025
execute if score #entity_exploration.05 ckenja.yukata matches 1.. positioned ^ ^ ^0.125 run function ckenja.yukata:entity_exploration/025

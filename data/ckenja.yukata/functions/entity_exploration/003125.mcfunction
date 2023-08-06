### 視線先エンティティ探査 functionループ型 0.03125m
# 1mおきに移動してエンティティの有無を確認

## 探査
# 立方体のdx,dy,dzによる探査範囲を置いてエンティティをチェック
scoreboard players set #entity_exploration.003125 ckenja.yukata 0
execute positioned ~-0.015625 ~-0.015625 ~-0.015625 as @e[type=#ckenja.yukata:entity_exploration,tag=ckenja.yukata.entity_exploration.target,dx=0,dy=0,dz=0] positioned ~-0.96875 ~-0.96875 ~-0.96875 if entity @s[dx=0,dy=0,dz=0] store success score #entity_exploration.003125 ckenja.yukata run tag @s add targets
execute if score #entity_exploration.003125 ckenja.yukata matches 1 positioned ~-0.015625 ~-0.015625 ~-0.015625 run function #ckenja.yukata:entity_exploration

## 後処理
# タグ削除
tag @e[tag=targets] remove targets
# ループの強制停止 ここをなくせば貫通型になる
execute if score #entity_exploration.003125 ckenja.yukata matches 1 store result score #entity_exploration.05 ckenja.yukata store result score #entity_exploration.025 ckenja.yukata store result score #entity_exploration.0125 ckenja.yukata store result score #entity_exploration.00625 ckenja.yukata run scoreboard players set #entity_exploration.loop ckenja.yukata 0

### 視線先エンティティ探査 (functionループ)
# 好きな位置と向きで実行するとそこから視線上のエンティティを探査する

## 開始前

## ループの開始
# 探査距離の上限 m
scoreboard players set #entity_exploration.loop ckenja.yukata 7

# ループの開始
# プレイヤーから実行する前提でanchoredがついているので注意
execute anchored eyes positioned ^ ^ ^0.5 run function ckenja.yukata:entity_exploration/1


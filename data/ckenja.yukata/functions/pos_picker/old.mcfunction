## 準備
    execute unless entity 4fe002bb-0-0-0-1 run summon marker ~ ~ ~ {Tags:[display,display_pos],UUID:[I;1340080827,0,0,1]}
    execute unless entity 4fe002bb-0-0-0-2 run summon marker ~ ~ ~ {Tags:[display,display_pos],UUID:[I;1340080827,0,0,2]}

## 視点の二分探査
    # billboard : fixed のとき
    execute at @s run tp 4fe002bb-0-0-0-1 ^ ^ ^0.1 ~ ~
    execute at @s run tp 4fe002bb-0-0-0-2 ^ ^ ^-0.1 ~ ~
    execute as @p at @s anchored eyes positioned ^ ^ ^ as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned as @s run tp @s ~ ~ ~ ~ ~ 
    execute as @p at @s anchored eyes positioned ^ ^ ^ as @e[tag=display_pos,type=marker,limit=1,sort=furthest] positioned as @s facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~ 
    # 二分探査
    execute as @p at @s anchored eyes positioned ^ ^ ^ rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^16 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^8 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^4 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^2 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^1 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.5 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.25 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.125 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.0625 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.03125 rotated as @e[tag=display_pos,type=marker,limit=1,sort=nearest] positioned ^ ^ ^0.015625 run tp 4fe002bb-0-0-0-1 ~ ~ ~

## 座標の計算
    # 座標の取得
    data modify storage ckenja.yukata: pos_picker.pos1 set from entity 4fe002bb-0-0-0-1 Pos
    data modify storage ckenja.yukata: pos_picker.pos2 set from entity @s Pos
    execute store result score #pos_picker.x1 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos1[0] 1000
    execute store result score #pos_picker.y1 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos1[1] 1000
    execute store result score #pos_picker.z1 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos1[2] 1000
    execute store result score #pos_picker.x2 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos2[0] 1000
    execute store result score #pos_picker.y2 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos2[1] 1000
    execute store result score #pos_picker.z2 ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos2[2] 1000
    execute store result score #pos_picker.x2 ckenja.yukata run scoreboard players operation #pos_picker.x1 ckenja.yukata -= #pos_picker.x2 ckenja.yukata
    execute store result score #pos_picker.y2 ckenja.yukata run scoreboard players operation #pos_picker.y1 ckenja.yukata -= #pos_picker.y2 ckenja.yukata
    execute store result score #pos_picker.z2 ckenja.yukata run scoreboard players operation #pos_picker.z1 ckenja.yukata -= #pos_picker.z2 ckenja.yukata
    # sinとcosの取得 (ついでに原点に2体とも移動)
    execute rotated as @s as 4fe002bb-0-0-0-1 positioned 0. 0. 0. rotated ~180 0 positioned ^ ^ ^1 run tp @s ~ ~ ~
    execute rotated as @s as 4fe002bb-0-0-0-2 positioned 0. 0. 0. rotated 0 ~ positioned ^ ^ ^1 run tp @s ~ ~ ~
    data modify storage ckenja.yukata: pos_picker.pos1 set from entity 4fe002bb-0-0-0-1 Pos
    data modify storage ckenja.yukata: pos_picker.pos2 set from entity 4fe002bb-0-0-0-2 Pos
    # 面上座標の計算 ベクトルと回転行列を使った計算
    execute store result score #pos_picker.sin ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos1[0] -1000
    execute store result score #pos_picker.cos ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos1[2] -1000
    scoreboard players operation #pos_picker.x2 ckenja.yukata *= #pos_picker.sin ckenja.yukata
    scoreboard players operation #pos_picker.z1 ckenja.yukata *= #pos_picker.sin ckenja.yukata
    scoreboard players operation #pos_picker.x1 ckenja.yukata *= #pos_picker.cos ckenja.yukata
    scoreboard players operation #pos_picker.z2 ckenja.yukata *= #pos_picker.cos ckenja.yukata
    execute store result score #pos_picker.sin ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos2[1] -1000
    execute store result score #pos_picker.cos ckenja.yukata run data get storage ckenja.yukata: pos_picker.pos2[2] 1000
    scoreboard players operation #pos_picker.x2 ckenja.yukata *= #pos_picker.sin ckenja.yukata
    scoreboard players operation #pos_picker.z2 ckenja.yukata *= #pos_picker.sin ckenja.yukata
    scoreboard players operation #pos_picker.y1 ckenja.yukata *= #pos_picker.cos ckenja.yukata
    scoreboard players operation #pos_picker.x2 ckenja.yukata /= #1000 ckenja.yukata
    scoreboard players operation #pos_picker.z2 ckenja.yukata /= #1000 ckenja.yukata
    scoreboard players operation #pos_picker.x1 ckenja.yukata -= #pos_picker.z1 ckenja.yukata
    scoreboard players operation #pos_picker.y1 ckenja.yukata -= #pos_picker.x2 ckenja.yukata
    scoreboard players operation #pos_picker.y1 ckenja.yukata -= #pos_picker.z2 ckenja.yukata
    scoreboard players operation #pos_picker.x1 ckenja.yukata /= #1000 ckenja.yukata
    scoreboard players operation #pos_picker.y1 ckenja.yukata /= #1000 ckenja.yukata
    #(x1*sin(1) z1*sin(1))
    #(x2*cos(1)*sin(2)/1000 z2*cos(1)*sin(2)/1000)
    #x1 = x1 - z1
    #y1 = y1 * -cos(2) - x2 - z2

## 座標の表示
    #tellraw @p {"translate":"(%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#pos_picker.x2"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.y2"}}]}
    tellraw @p {"translate":"(%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#pos_picker.x1"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.y1"}}]}
    #tellraw @p {"translate":"(%s,%s,%s,%s)","with":[{"score":{"objective": "ckenja.yukata","name":"#pos_picker.sin1"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.cos1"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.sin2"}},{"score":{"objective": "ckenja.yukata","name":"#pos_picker.cos2"}}]}

## 後処理
    kill 4fe002bb-0-0-0-1
    kill 4fe002bb-0-0-0-2

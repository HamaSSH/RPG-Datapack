#> mob:trigger/on_death
# 敵モブが死亡したときの処理

tag @s add Dead

# モブ固有のdeath処理
    execute if data entity @s {data:{triggers:["death"]}} run data modify storage macro:temp mob.id set from entity @s data.id
    execute if data entity @s {data:{triggers:["death"]}} run function mob:macro/death.m with storage macro:temp mob

# TODO: ドロップとプレイヤー連携
    # ドロップ（loot / exp / gold）— PlayerID・EXPGained・幸運補正
    # 実績達成チェック・キル数カウント

# リセット
    data remove storage macro:temp mob

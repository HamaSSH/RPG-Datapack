#> mob:trigger/on_death
# 敵モブが死亡したときの処理

tag @s add Dead

# dataをstorageへ
    data modify storage mob:temp data set from entity @s data

# モブ固有のdeath処理
    execute if data storage mob:temp data{triggers:["death"]} run data modify storage macro:temp mob.id set from storage mob:temp data.id
    execute if data storage mob:temp data{triggers:["death"]} run function mob:macro/death.m with storage macro:temp mob

# アイテムドロップ
    execute if data storage mob:temp data.loot_table run function mob:trigger/on_death/drop/loot

# ゴールド・EXPドロップ
    execute as @p[tag=Attacker] run function mob:trigger/on_death/drop/gold/_
    execute as @p[tag=Attacker] run function mob:trigger/on_death/drop/exp/_

# TODO: 実績達成チェック・キル数カウント

# リセット
    data remove storage mob:temp data
    data remove storage macro:temp mob

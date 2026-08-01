#> mob:tick
# モブ関連のtick処理

# dataをstorageへ
    data modify storage mob:temp data set from entity @s data

# モブ固有のtick処理
    execute if data storage mob:temp data{triggers:["tick"]} run data modify storage macro:temp mob.id set from storage mob:temp data.id
    execute if data storage mob:temp data{triggers:["tick"]} run function mob:macro/tick.m with storage macro:temp mob

# 戦闘中タイマー・無敵時間
    execute if score @s InCombat matches 1.. run scoreboard players remove @s InCombat 1
    execute if score @s InCombat matches 0 run function mob:status/hp/display/_
    execute if score @s HurtTime matches 1.. run scoreboard players remove @s HurtTime 1
    execute if score @s HurtTime matches 0 run scoreboard players reset @s HurtTime

# TODO: 自然ダメージ
    # 落下ダメージ・炎ダメージ・毒ダメージ

# 死亡処理
    execute if entity @s[tag=Dead] run kill @s

# リセット
    data remove storage mob:temp data
    data remove storage macro:temp mob

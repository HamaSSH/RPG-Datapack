#> mob:on_death/_
# 敵モブが死亡したときの処理

tag @s add Dead

# 最後に攻撃したプレイヤーを取得
    scoreboard players operation $LastAttackerID Temporary = @s PlayerID

# 5体同時に倒す
    execute as @a if score @s PlayerID = $LastAttackerID Temporary run scoreboard players add @s 1.4.MobKill 1
    execute as @a if score @s 1.4.MobKill matches 5.. run advancement grant @p only asset:achievement/1.4
    schedule function mob:on_death/reset 1t

# ドロップ
    execute at @s run function mob:on_death/drop/loot/_
    execute at @s run function mob:on_death/drop/exp/_
    execute at @s run function mob:on_death/drop/gold/_

# アセットのdeath処理呼び出し
    data modify storage asset:mob namespace set from entity @s ArmorItems[3].components.minecraft:custom_data.namespace
    function asset:mob/manager/death with storage asset:mob
    data remove storage asset:mob namespace

# リセット
    scoreboard players reset $LastAttackerID Temporary
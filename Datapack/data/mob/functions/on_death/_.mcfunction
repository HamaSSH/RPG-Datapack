#> mob:on_death/_
# 敵モブが死亡したときの処理

tag @s add Dead
# ドロップ
    execute at @s run function mob:on_death/drop/loot/_
    execute at @s run function mob:on_death/drop/exp/_
    execute at @s run function mob:on_death/drop/gold/_

# アセットの死亡時処理呼び出し
    execute store result storage asset:mob ID int 1 run scoreboard players get @s MobID
    function #asset:mob/death
    data remove storage asset:mob ID
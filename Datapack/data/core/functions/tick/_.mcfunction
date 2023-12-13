#> core:tick/_
# 毎tick常時実行するコマンド群

# アセット関連のtick処理
    execute as @e[type=armor_stand,tag=Magic] at @s run function asset:magic/tick

# プレイヤー関連のtick処理
    execute as @a at @s run function player:tick
    execute as @e[type=area_effect_cloud,tag=WandAEC] at @s run function player:combat/main/wand/bullet/tick
    execute positioned 0.0 1.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] run function player:buff/tick
    execute at @a as @e[type=armor_stand,tag=Material,distance=..6] at @s run function item:material/collect/tick

# モブ関連のtick処理
    execute as @e[type=#lib:every_mob,tag=Enemy] at @s run function mob:tick
    execute positioned 0.0 2.0 0.0 as @e[type=area_effect_cloud,tag=BuffRoot,distance=..0.01] run function mob:buff/tick
    execute as @e[type=#lib:autokill,tag=AutoKill] at @s run function mob:manager/tick
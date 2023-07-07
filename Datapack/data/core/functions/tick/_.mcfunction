#> core:tick/_
# 毎tick常時実行するコマンド群

# アセット関連のtick処理
    execute as @e[type=armor_stand,tag=Magic] at @s run function asset:magic/tick

# プレイヤー関連のtick処理
    execute as @a at @s run function player:tick

# モブ関連のtick処理
    execute as @e[type=#lib:every_mob,tag=Enemy] at @s run function mob:tick
    execute as @e[type=#lib:every_mob,tag=AssetMob] at @s run function mob:manager/tick
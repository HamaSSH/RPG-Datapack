#> item:fishing/magma/game/tick
# マグマでの釣りゲームの再現

scoreboard players operation $PlayerID Temporary = @s PlayerID
execute if score @s Timer matches ..1000 run scoreboard players set @s Timer 1000

# 釣りゲームの開始処理
    execute if score @s Timer matches 1000 run function item:fishing/magma/game/init

# 魚がウキに食いつく8パターン
    execute if score @s Timer matches 1050..1100 run function item:fishing/magma/game/pattern/_

# 右クリック許容タイミング
    # 音とパーティクルで知らせる
        execute if score @s Timer matches 1100 run playsound item.bucket.empty_lava master @a ~ ~ ~ 0.5 0.7
        execute if score @s Timer matches 1100 run playsound item.bucket.fill_lava master @a ~ ~ ~ 0.7 0.6
        execute if score @s Timer matches 1100 run playsound block.pointed_dripstone.drip_lava_into_cauldron master @a ~ ~ ~ 1 0.7
        execute if score @s Timer matches 1100 run particle block fire ~ ~ ~ 0.1 0.3 0.1 0 20 force
        execute if score @s Timer matches 1100 run particle lava ~ ~ ~ 0.1 0.1 0.1 0 10 force
    # ウキが沈む動作
        execute if score @s Timer matches 1100.. positioned ~ ~-0.2 ~ as @e[type=item,distance=..1] at @s if score @s PlayerID = $PlayerID Temporary run function item:fishing/magma/game/sink

# 最初から
    execute if score @s Timer matches 1124.. run tag @s remove GameStart
    execute if score @s Timer matches 1124.. run scoreboard players set @s Timer 2

# リセット
    scoreboard players reset $PlayerID Temporary
#> item:fishing/magma/game/init
# 釣りゲームの開始処理

# パターンの抽選
    scoreboard players set $RNGMax Temporary 14
    function core:rng
    # 釣れるまでにかかる時間
        scoreboard players operation @s FishingPattern = $RNG Temporary
        execute if score @s FishingPattern matches 0..1 run scoreboard players set @s Timer 1080
        execute if score @s FishingPattern matches 2..3 run scoreboard players set @s Timer 1070
        execute if score @s FishingPattern matches 4..5 run scoreboard players set @s Timer 1060
        execute if score @s FishingPattern matches 6..7 run scoreboard players set @s Timer 1050
        execute if score @s FishingPattern matches 8..9 run scoreboard players set @s Timer 1040
        execute if score @s FishingPattern matches 10..11 run scoreboard players set @s Timer 1030
        execute if score @s FishingPattern matches 12..13 run scoreboard players set @s Timer 1020

# 魚の出現位置
    scoreboard players set $RNGMax Temporary 360
    function core:rng
    # パターンに応じて出現距離を設定
        summon marker ~ ~ ~ {Tags:["FishingStart"]}
        execute store result entity @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] Rotation[0] float 1 run scoreboard players remove $RNG Temporary 180
        scoreboard players operation @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] PlayerID = $PlayerID Temporary
        execute if score @s FishingPattern matches 0..1 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^2
        execute if score @s FishingPattern matches 2..3 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^2.5
        execute if score @s FishingPattern matches 4..5 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^3
        execute if score @s FishingPattern matches 6..7 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^3.5
        execute if score @s FishingPattern matches 8..9 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^4
        execute if score @s FishingPattern matches 10..11 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^4.5
        execute if score @s FishingPattern matches 12..13 as @e[type=marker,tag=FishingStart,distance=..0.01,sort=nearest,limit=1] at @s run tp ^ ^ ^5

# リセット
    scoreboard players reset $RNG Temporary
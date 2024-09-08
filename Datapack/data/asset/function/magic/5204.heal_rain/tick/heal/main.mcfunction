#> asset:magic/5204.heal_rain/tick/heal/main
# 演出有りヒール

# 回復量の計算
    scoreboard players operation $HealRain Temporary = @s HPRegen
    scoreboard players operation $HealRain Temporary /= #3 Constant
    scoreboard players add $HealRain Temporary 4000

# 範囲内のプレイヤーのHPRTimerに加算
    execute as @a[distance=..5.5] at @s run particle end_rod ~ ~0.1 ~ 0.3 0.1 0.3 0.05 10 force
    execute as @a[distance=..5.5] at @s run particle scrape ~ ~0.3 ~ 0.2 0.2 0.2 0.2 20 force
    execute as @a[distance=..5.5] if score @s HP < @s HPMax run scoreboard players operation @s HPRTimer += $HealRain Temporary

# 演出
    playsound resource:custom.levelup master @a[distance=..5.5] ~ ~ ~ 0.2 1.8
    playsound entity.skeleton_horse.swim master @a ~ ~ ~ 0.5 1.3
    playsound block.amethyst_block.fall master @a ~ ~ ~ 0.4 1.5

# リセット
    scoreboard players reset $HealRain Temporary
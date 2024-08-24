#> asset:magic/5204.heal_rain/tick/heal/sub
# 演出無しヒール

# 回復量の計算
    scoreboard players operation $HealRain Temporary = @s HPRegen
    scoreboard players operation $HealRain Temporary /= #3 Constant
    scoreboard players add $HealRain Temporary 4000

# 範囲内のプレイヤーのHPRTimerに加算
    execute as @a[distance=..5.5] if score @s HP < @s HPMax run scoreboard players operation @s HPRTimer += $HealRain Temporary

# リセット
    scoreboard players reset $HealRain Temporary
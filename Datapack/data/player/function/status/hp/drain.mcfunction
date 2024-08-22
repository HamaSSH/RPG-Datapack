#> player:status/hp/drain
# 与ダメージ分のHP吸収

# 回復値の計算 HPDrain * DmgDealt → HPRTimer
    scoreboard players operation $HPDrain Temporary = @s HPDrain
    scoreboard players operation $HPDrain Temporary *= $DmgDealt Temporary
    # tellraw @a {"score": {"name": "$HPDrain","objective": "Temporary"}}

# HPRTimerに加算
    execute if score @s HP < @s HPMax run scoreboard players operation @s HPRTimer += $HPDrain Temporary

# リセット
    scoreboard players reset $HPDrain Temporary
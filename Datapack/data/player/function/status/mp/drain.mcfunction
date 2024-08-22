#> player:status/mp/drain
# 与ダメージ分のMP吸収

# 回復値の計算 MPDrain * DmgDealt → MPRTimer
    scoreboard players operation $MPDrain Temporary = @s MPDrain
    scoreboard players operation $MPDrain Temporary *= $DmgDealt Temporary
    # tellraw @a {"score": {"name": "$MPDrain","objective": "Temporary"}}

# MPRTimerに加算
    execute if score @s MP < @s MPMax run scoreboard players operation @s MPRTimer += $MPDrain Temporary

# リセット
    scoreboard players reset $MPDrain Temporary
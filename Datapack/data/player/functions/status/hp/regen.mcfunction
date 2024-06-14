#> player:status/hp/regen
# HPの自然回復処理

# HPを回復
    scoreboard players operation $HPRegen Temporary = @s HPRTimer
    scoreboard players operation $HPRegen Temporary /= #2000 Constant
    scoreboard players operation @s HP += $HPRegen Temporary

# 自然回復タイマーを減算
    scoreboard players operation $HPRegen Temporary *= #2000 Constant
    scoreboard players operation @s HPRTimer -= $HPRegen Temporary

# リセット
    scoreboard players reset $HPRegen Temporary
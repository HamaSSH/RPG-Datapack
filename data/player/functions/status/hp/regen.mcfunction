# HPを回復
    scoreboard players operation $HPRegen Temporary = @s hp_regen_timer
    scoreboard players operation $HPRegen Temporary /= #2000 Constant
    scoreboard players operation @s hp += $HPRegen Temporary
# 回復タイマーを減算
    scoreboard players operation $HPRegen Temporary *= #2000 Constant
    scoreboard players operation @s hp_regen_timer -= $HPRegen Temporary
# リセット
    scoreboard players reset $HPRegen
# ダメージ
    scoreboard players operation $HPDegen Temporary = @s hp_regen_timer
    scoreboard players operation $HPDegen Temporary /= #2000 Constant
    scoreboard players operation @s hp += $HPDegen Temporary
# 回復タイマーを減算
    scoreboard players operation $HPDegen Temporary *= #2000 Constant
    scoreboard players operation @s hp_regen_timer -= $HPDegen Temporary
# 最小値を下回っていたら死
    execute if score @s hp matches ..0 run function player:death
# リセット
    scoreboard players reset $HPDegen
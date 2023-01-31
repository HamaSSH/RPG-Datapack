##########
#>
#

# MPを回復
    scoreboard players operation $MPRegen Temporary = @s mp_regen_timer
    scoreboard players operation $MPRegen Temporary /= #2000 Constant
    scoreboard players operation @s mp += $MPRegen Temporary
# 回復タイマーを減算
    scoreboard players operation $MPRegen Temporary *= #2000 Constant
    scoreboard players operation @s mp_regen_timer -= $MPRegen Temporary
# リセット
    scoreboard players reset $MPRegen
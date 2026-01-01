#> player:status/crt/check
# クリティカル攻撃になるか判定

# 会心率計算式 → CriticalChance = CRT * 3 / 2 - CRT^2 / 2000
    # = (3000 * CRT - CRT^2) / 2000 (CRT<1000の時)
        scoreboard players operation $x1 Temporary = @s CRT
        scoreboard players operation $x1 Temporary *= #3000 Constant
        scoreboard players operation $x2 Temporary = @s CRT
        scoreboard players operation $x2 Temporary *= $x2 Temporary
        scoreboard players operation $x1 Temporary -= $x2 Temporary
    # 一の位四捨五入
        scoreboard players add $x1 Temporary 1000
        scoreboard players operation $x1 Temporary /= #2000 Constant

# $x3 (0-1000) <= $x1 → ダメージ補正
    execute store result score $x3 Temporary run random value 0..999
    execute if score @s CRT matches 1000.. run scoreboard players set $x3 Temporary 1000
    execute if score $x3 Temporary <= $x1 Temporary run tag @s add CriticalHit
    execute if score $x3 Temporary <= $x1 Temporary run function player:status/crt/damage

# リセット
    scoreboard players reset $x1 Temporary
    scoreboard players reset $x2 Temporary
    scoreboard players reset $x3 Temporary
#> player:status/crt/chance
# クリティカル攻撃になるか判定

# 会心率計算式 → CriticalChance = CRT * 3 / 2 - CRT^2 / 2000
    # = (3000 * CRT - CRT^2) / 2000 (CRT<1000の時)
        scoreboard players operation $CriticalChance Temporary = @s CRT
        scoreboard players operation $CriticalChance Temporary *= #3000 Constant
        scoreboard players operation $CriticalChanceB Temporary = @s CRT
        scoreboard players operation $CriticalChanceB Temporary *= $CriticalChanceB Temporary
        scoreboard players operation $CriticalChance Temporary -= $CriticalChanceB Temporary
    # 一の位四捨五入
        scoreboard players add $CriticalChance Temporary 1000
        scoreboard players operation $CriticalChance Temporary /= #2000 Constant

# 0~1000 $CriticalChanceB <= $CriticalChance → ダメージ補正
    execute if score @s CRT matches ..999 run execute store result score $CriticalChanceB Temporary run function lib:rng
    execute if score @s CRT matches ..999 run scoreboard players operation $CriticalChanceB Temporary %= #1000 Constant
    execute if score @s CRT matches 1000.. run scoreboard players set $CriticalChanceB Temporary 1000
    execute if score $CriticalChanceB Temporary <= $CriticalChance Temporary run function player:status/crt/damage

# リセット
    scoreboard players reset $CriticalChance Temporary
    scoreboard players reset $CriticalChanceB Temporary
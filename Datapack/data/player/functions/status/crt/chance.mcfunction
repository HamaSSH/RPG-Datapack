# 会心率計算式 → crt_chance = 2*crt - crt^2 / 1000 (crt<1000の時)
# = (2000*crt - crt^2) / 1000
    scoreboard players operation $CritChance Temporary = @s crt
    scoreboard players operation $CritChance Temporary *= #2000 Constant
    scoreboard players operation $CritChanceb Temporary = @s crt
    scoreboard players operation $CritChanceb Temporary *= $CritChanceb Temporary
    scoreboard players operation $CritChance Temporary -= $CritChanceb Temporary
# 一の位四捨五入
    scoreboard players add $CritChance Temporary 500
    scoreboard players operation $CritChance Temporary /= #1000 Constant
    execute if score @s crt matches 1000.. run scoreboard players set $CritChance Temporary 1000
# 0~1000 $RNG <= $CritChance → ダメージ補正
    scoreboard players set $RNGMax Temporary 1000
    function core:rng
    execute if score $RNG Temporary <= $CritChance Temporary run function player:status/crt/damage
# リセット
    scoreboard players reset $CritChance
    scoreboard players reset $CritChanceb
    scoreboard players reset $RNG
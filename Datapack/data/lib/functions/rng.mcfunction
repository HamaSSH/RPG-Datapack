#> lib:rng
# 0-65534の疑似乱数を生成

# キャリー付き乗算で乱数を更新する
    scoreboard players operation $RNG.Base Global *= #31743 Constant
    scoreboard players operation $RNG.Base Global += $RNG.Carry Global
    scoreboard players operation $RNG.Carry Global = $RNG.Base Global
    scoreboard players operation $RNG.Carry Global /= #65536 Constant
    scoreboard players operation $RNG.Base Global %= #65536 Constant

# 乱数を返す
    scoreboard players get $RNG.Base Global
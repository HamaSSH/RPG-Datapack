#> player:status/luk/exp_boost
# 獲得経験値UP

# 獲得経験値計算式 → EXPDrop = EXPDrop * (100 + LUK/4) / 100
    # = EXPDrop * (LUK + 400) / 400
        scoreboard players operation $EXPBoost Temporary = @s LUK
        scoreboard players add $EXPBoost Temporary 400
        scoreboard players operation $EXPDrop Temporary *= $EXPBoost Temporary
        scoreboard players operation $EXPDrop Temporary /= #400 Constant

# リセット
    scoreboard players reset $EXPBoost Temporary
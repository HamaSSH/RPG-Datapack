#> player:status/luk/xp_boost
# 獲得経験値UP

# 獲得経験値計算式 → XPDrop = XPDrop * (100 + LUK/4) / 100
    # = XPDrop * (LUK + 400) / 400
        scoreboard players operation $XPBoost Temporary = @s LUK
        scoreboard players add $XPBoost Temporary 400
        scoreboard players operation $XPDrop Temporary *= $XPBoost Temporary
        scoreboard players operation $XPDrop Temporary /= #400 Constant

# リセット
    scoreboard players reset $XPBoost Temporary
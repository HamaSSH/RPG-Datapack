#> player:status/luk/gold_boost
# 獲得ゴールドUP

# 獲得ゴールド計算式 → GoldDrop = GoldDrop * (100 + LUK/4) / 100
    # = GoldDrop * (LUK + 400) / 400
        scoreboard players operation $GoldBoost Temporary = @s LUK
        scoreboard players add $GoldBoost Temporary 400
        scoreboard players operation $GoldDrop Temporary *= $GoldBoost Temporary
        scoreboard players operation $GoldDrop Temporary /= #400 Constant

# GoldMultiplierの適用
    scoreboard players operation $GoldDrop Temporary *= @s GoldMultiplier
    scoreboard players operation $GoldDrop Temporary /= #100 Constant

# リセット
    scoreboard players reset $GoldBoost Temporary
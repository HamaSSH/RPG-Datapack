# 獲得ゴールドUP計算式 → gold_gained = gold_gained * (100 + luk/3) / 100
# = gold_gained * (luk + 300) / 300
    scoreboard players operation $GoldBoost Temporary = @s luk
    scoreboard players add $GoldBoost Temporary 400
    scoreboard players operation @s gold_gained *= $GoldBoost Temporary
    scoreboard players operation @s gold_gained /= #400 Constant
# リセット
    scoreboard players reset $GoldBoost
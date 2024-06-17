#> player:status/lvl/exp/calculate
# 次の必要経験値を計算

# 必要XP計算式 → NextEXP ≃ NextEXP + LVL^2/5 + LVL*5 + 10
# = NextEXP + (LVL^2 + 25*LVL + 50) / 5
    scoreboard players operation $NextEXP Temporary = @s LVL
    scoreboard players operation $NextEXP Temporary *= $NextEXP Temporary
    scoreboard players operation $NextEXPb Temporary = @s LVL
    scoreboard players operation $NextEXPb Temporary *= #25 Constant
    scoreboard players operation $NextEXP Temporary += $NextEXPb Temporary
    scoreboard players add $NextEXP Temporary 50
    scoreboard players operation $NextEXP Temporary /= #5 Constant

# 1の桁の調整 (0 or 5)
    scoreboard players operation $NextEXPc Temporary = $NextEXP Temporary
    scoreboard players operation $NextEXPc Temporary %= #10 Constant
    scoreboard players operation $NextEXP Temporary -= $NextEXPc Temporary
    execute if score $NextEXPc Temporary matches 4..6 run scoreboard players add $NextEXP Temporary 5
    execute if score $NextEXPc Temporary matches 7..9 run scoreboard players add $NextEXP Temporary 10

# NextEXP設定
    scoreboard players operation @s NextEXP += $NextEXP Temporary
    scoreboard players reset $NextEXP
    scoreboard players reset $NextEXPb
    scoreboard players reset $NextEXPc

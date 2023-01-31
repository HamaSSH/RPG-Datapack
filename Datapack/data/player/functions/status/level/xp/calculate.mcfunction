##########
#>
#

# 必要XP計算式 → xp_next ≃ xp_next + level^2/5 + level*5 + 10
# = xp_next + (level^2 + 25*level + 50) / 5
    scoreboard players operation $NextXP Temporary = @s level
    scoreboard players operation $NextXP Temporary *= $NextXP Temporary
    scoreboard players operation $NextXPb Temporary = @s level
    scoreboard players operation $NextXPb Temporary *= #25 Constant
    scoreboard players operation $NextXP Temporary += $NextXPb Temporary
    scoreboard players add $NextXP Temporary 50
    scoreboard players operation $NextXP Temporary /= #5 Constant
# 1の桁の調整 (0 or 5)
    scoreboard players operation $NextXPc Temporary = $NextXP Temporary
    scoreboard players operation $NextXPc Temporary %= #10 Constant
    scoreboard players operation $NextXP Temporary -= $NextXPc Temporary
    execute if score $NextXPc Temporary matches 4..6 run scoreboard players add $NextXP Temporary 5
    execute if score $NextXPc Temporary matches 7..9 run scoreboard players add $NextXP Temporary 10
# xp_next設定
    scoreboard players operation @s xp_next += $NextXP Temporary
    scoreboard players reset $NextXP
    scoreboard players reset $NextXPb
    scoreboard players reset $NextXPc

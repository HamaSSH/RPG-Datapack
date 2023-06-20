##########
#>
#

# 適正武器を持っていた場合(AP)
    scoreboard players operation $APBonus Temporary = @s BonusAP
    scoreboard players operation $APBonus Temporary *= #10 Constant
    scoreboard players add $APBonus Temporary 45
    scoreboard players operation $APBonus Temporary /= #30 Constant
    scoreboard players operation @s BonusAP += $APBonus Temporary
# リセット
    scoreboard players reset $APBonus
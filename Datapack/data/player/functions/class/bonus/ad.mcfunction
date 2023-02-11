##########
#>
#

# 適正武器を持っていた場合(AD)
    scoreboard players operation $ADBonus Temporary = @s BonusAD
    scoreboard players operation $ADBonus Temporary *= #10 Constant
    scoreboard players add $ADBonus Temporary 60
    scoreboard players operation $ADBonus Temporary /= #40 Constant
    scoreboard players operation @s BonusAD += $ADBonus Temporary
# リセット
    scoreboard players reset $ADBonus
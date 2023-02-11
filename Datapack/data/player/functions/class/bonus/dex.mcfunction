##########
#>
#

# 適正武器を持っていた場合(DEX)
    scoreboard players operation $DEXBonus Temporary = @s BonusDEX
    scoreboard players operation $DEXBonus Temporary *= #10 Constant
    scoreboard players add $DEXBonus Temporary 45
    scoreboard players operation $DEXBonus Temporary /= #30 Constant
    scoreboard players operation @s BonusDEX += $DEXBonus Temporary
# リセット
    scoreboard players reset $DEXBonus
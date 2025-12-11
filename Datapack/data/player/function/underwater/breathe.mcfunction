#> player:trigger/breathe
# 酸素ゲージの回復

# 割合で回復していく
    scoreboard players operation $BreatheOxygen Temporary = @s MaxOxygen
    scoreboard players operation $BreatheOxygen Temporary /= #50 Constant
    scoreboard players operation @s Oxygen += $BreatheOxygen Temporary

# リセット
    scoreboard players reset $BreatheOxygen Temporary
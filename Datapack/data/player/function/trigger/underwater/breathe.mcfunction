#> player:trigger/underwater/breathe
# 酸素ゲージの回復

scoreboard players operation $BreatheOxygen Temporary = @s MaxOxygen
scoreboard players operation $BreatheOxygen Temporary /= #50 Constant
scoreboard players operation @s Oxygen += $BreatheOxygen Temporary
scoreboard players reset $BreatheOxygen Temporary
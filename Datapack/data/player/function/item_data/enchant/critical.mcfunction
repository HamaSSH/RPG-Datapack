#> player:item_data/enchant/critical
# 会心を少し強化する

# 会心の強化
    scoreboard players operation $EnchantCRT Temporary = @s CRT
    scoreboard players operation $EnchantCRT Temporary /= #20 Constant
    scoreboard players operation @s CRT += $EnchantCRT Temporary

# リセット
    scoreboard players reset $EnchantCRT Temporary
    data remove storage player: Enchant[{id:"critical"}]
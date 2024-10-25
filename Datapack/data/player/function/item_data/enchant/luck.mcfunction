#> player:item_data/enchant/luck
# 幸運を少し強化する

# 幸運の強化
    scoreboard players operation $EnchantLUK Temporary = @s LUK
    scoreboard players operation $EnchantLUK Temporary /= #20 Constant
    scoreboard players operation @s LUK += $EnchantLUK Temporary

# リセット
    scoreboard players reset $EnchantLUK Temporary
    data remove storage player: Enchant[{id:"luck"}]
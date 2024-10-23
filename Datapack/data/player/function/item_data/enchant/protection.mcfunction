#> player:item_data/enchant/protection
# 防御力を5％強化する

# 防御力の強化
    scoreboard players operation $EnchantDEF Temporary = @s DEF
    scoreboard players operation $EnchantDEF Temporary /= #20 Constant
    scoreboard players operation @s DEF += $EnchantDEF Temporary

# リセット
    scoreboard players reset $EnchantDEF Temporary
    data remove storage player: Enchant[{id:"protection"}]
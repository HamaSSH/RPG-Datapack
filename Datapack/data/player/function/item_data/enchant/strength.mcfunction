#> player:item_data/enchant/strength
# 物理攻撃力を少し強化する

# 物理攻撃力の強化
    scoreboard players operation $EnchantSTR Temporary = @s STR
    scoreboard players operation $EnchantSTR Temporary /= #10 Constant
    scoreboard players operation @s STR += $EnchantSTR Temporary

# リセット
    scoreboard players reset $EnchantSTR Temporary
    data remove storage player: Enchant[{id:"strength"}]
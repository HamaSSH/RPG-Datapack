#> player:item_data/enchant/dexterity
# 器用攻撃力を少し強化する

# 器用攻撃力の強化
    scoreboard players operation $EnchantDEX Temporary = @s DEX
    scoreboard players operation $EnchantDEX Temporary /= #10 Constant
    scoreboard players operation @s DEX += $EnchantDEX Temporary

# リセット
    scoreboard players reset $EnchantDEX Temporary
    data remove storage player: Enchant[{id:"dexterity"}]
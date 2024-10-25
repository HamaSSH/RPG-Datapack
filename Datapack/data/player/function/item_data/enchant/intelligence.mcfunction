#> player:item_data/enchant/intelligence
# 魔法攻撃力を少し強化する

# 魔法攻撃力の強化
    scoreboard players operation $EnchantINT Temporary = @s INT
    scoreboard players operation $EnchantINT Temporary /= #10 Constant
    scoreboard players operation @s INT += $EnchantINT Temporary

# リセット
    scoreboard players reset $EnchantINT Temporary
    data remove storage player: Enchant[{id:"intelligence"}]
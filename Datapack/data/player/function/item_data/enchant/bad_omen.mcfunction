#> player:item_data/enchant/bad_omen
# 幸運を犠牲にステータスＵＰ

# ステータスを他に分配
    scoreboard players operation $EnchantLUK Temporary = @s LUK
    scoreboard players operation $EnchantLUK Temporary /= #4 Constant
    scoreboard players operation @s LUK /= #6 Constant
    scoreboard players operation @s DEF += $EnchantLUK Temporary
    scoreboard players operation @s AGI += $EnchantLUK Temporary
    scoreboard players operation @s CRT += $EnchantLUK Temporary

# 攻撃力に分配
    scoreboard players operation $EnchantLUK Temporary /= #4 Constant
    scoreboard players operation @s STR += $EnchantLUK Temporary
    scoreboard players operation @s INT += $EnchantLUK Temporary
    scoreboard players operation @s DEX += $EnchantLUK Temporary

# リセット
    scoreboard players reset $EnchantLUK Temporary
    data remove storage player: Enchant[{id:"bad_omen"}]
#> player:item_data/enchant/decay_curse
# 会心を犠牲に攻撃力ＵＰ

# ステータスを攻撃力に分配
    scoreboard players operation $EnchantCRT Temporary = @s CRT
    scoreboard players operation $EnchantCRT Temporary /= #26 Constant
    scoreboard players operation @s CRT /= #12 Constant

    scoreboard players operation @s STR += $EnchantCRT Temporary
    scoreboard players operation @s INT += $EnchantCRT Temporary
    scoreboard players operation @s DEX += $EnchantCRT Temporary

# リセット
    scoreboard players reset $EnchantCRT Temporary
    data remove storage player: Enchant[{id:"decay_curse"}]